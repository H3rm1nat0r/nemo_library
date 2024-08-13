import configparser
import warnings
import pandas as pd
import tempfile


from hubspot import HubSpot
from hubspot.crm.associations.models.batch_input_public_object_id import (
    BatchInputPublicObjectId,
)
from hubspot.crm.companies.models.batch_read_input_simple_public_object_id import (
    BatchReadInputSimplePublicObjectId,
)
import requests

from nemo_library.sub_config_handler import ConfigHandler
from nemo_library.sub_file_upload_handler import ReUploadFileIngestion

ACTIVITY_TYPES = [
    "calls",
    "communications",
    "emails",
    "feedback_submissions",
    "meetings",
    "notes",
    "postal_mail",
    "tasks",
    "taxes",
]

ACTIVITY_TYPE_DETAILS = {
    "calls": [
        "hubspot_owner_id",
        "hs_call_body",
        "hs_call_direction",
        "hs_call_duration",
        "hs_call_status",
        "hs_call_title",
    ],
    "communications": [
        "hubspot_owner_id",
        "hs_communication_body",
        "hs_communication_channel_type",
    ],
    "emails": [
        "hubspot_owner_id",
        "hs_email_text",
        "hs_email_subject",
        "hs_email_status",
        "hs_email_direction",
    ],
    "feedback_submissions": [],
    "meetings": [
        "hubspot_owner_id",
        "hs_meeting_title",
        "hs_meeting_body",
        "hs_internal_meeting_notes",
        "hs_meeting_location",
        "hs_meeting_start_time",
        "hs_meeting_end_time",
        "hs_meeting_outcome",
    ],
    "notes": ["hubspot_owner_id", "hs_note_body"],
    "postal_mail": ["hubspot_owner_id", "hs_postal_mail_body"],
    "tasks": [
        "hubspot_owner_id",
        "hs_task_body",
        "hs_task_status",
        "hs_task_priority",
        "hs_task_subject",
        "hs_task_type",
    ],
    "taxes": [],
}

DEALSTAGE_MAPPING = {
    "appointmentscheduled": "Unqualified lead​",
    "17193482": "Qualified lead​",
    "16072556": "Presentation",
    "presentationscheduled": "Test phase",
    "decisionmakerboughtin": "Negotiation",
    "contractsent": "Commit",
    "closedwon": "closed and won",
    "closedlost": "closed and lost",
}


def CRM_Activities_handler(config: ConfigHandler, projectname: str) -> None:

    hs = getHubSpotAPIToken(config=config)

    # load deals and add information to them
    deals = load_deals_from_CRM(hs)

    # load deal changes history
    deal_history = load_deal_history(hs, deals)
    deal_activity = load_activities(hs, deals)
    deal_activity = add_activity_details(hs, deal_activity)

    # concat deal history and deal activity
    history = pd.concat([deal_history, deal_activity], ignore_index=True)

    # and finally join that with deal details
    deals = deals.merge(history, on="deal_id", how="left")

    # resolve internal fields like companyid, userid, etc. to plain text
    deals = add_company_information(hs, deals)
    deals = add_user_information(hs, deals)
    deals = map_deal_stage(hs, deals)

    # finally upload data to NEMO
    upload_deals_to_NEMO(config=config, projectname=projectname, deals=deals)

def getHubSpotAPIToken(config: ConfigHandler) -> HubSpot:

    # Initialize HubSpot API client
    hs = HubSpot(access_token=config.config_get_hubspot_api_token())
    return hs
    
def load_deals_from_CRM(hs: HubSpot) -> pd.DataFrame:

    # load all deals
    deal_properties = [
        "id",
        "dealname",
        "hubspot_owner_id",
        "revenue_stream",
        "verkauf_uber",
        "belegnummer",
    ]
    deals = hs.crm.deals.get_all(properties=deal_properties)

    # convert them into data frame
    deals_data = [deal.to_dict() for deal in deals]
    deals_df = pd.DataFrame(deals_data)

    # extract "properties" column and make it new separate columns
    properties_df = pd.json_normalize(deals_df["properties"])
    deals_df = pd.concat([deals_df.drop(columns=["properties"]), properties_df], axis=1)

    # drop columns that have been provided by the API even if we did not request themn
    deals_df.drop(["hs_object_id"], axis=1, inplace=True)

    # rename all columns to have a prefix "deal_"
    deals_df.rename(columns=lambda x: f"deal_{x}", inplace=True)
    deals_df.rename(columns={"deal_belegnummer": "deal_docno"}, inplace=True)

    # debugging: remove all deals but 2

    # deal_ids_to_keep = ["8163202199", "16410497543"]
    # deals_df = deals_df[deals_df["deal_id"].isin(deal_ids_to_keep)]

    print(f"{len(deals_df)} deals loaded from CRM")

    return deals_df


def load_deal_history(hs: HubSpot, deals: pd.DataFrame) -> pd.DataFrame:

    batch_size = 50  # max API limit for batch with historical data

    deal_ids = deals["deal_id"].unique().tolist()
    num_deal_ids = len(deal_ids)
    base_url = "https://api.hubapi.com/crm/v3/objects/deals/batch/read"

    headers = {
        "Authorization": f"Bearer {hs.access_token}",
        "Content-Type": "application/json",
    }

    all_records = []
    for i in range(0, num_deal_ids, batch_size):
        batch_ids = deal_ids[i : i + batch_size]

        batch_read_input = {
            "inputs": [{"id": deal_id} for deal_id in batch_ids],
            "propertiesWithHistory": ["dealstage", "amount", "closedate"],
        }

        response = requests.post(base_url, json=batch_read_input, headers=headers)

        if response.status_code == 200:
            batch_history = response.json()
            for deal_history in batch_history["results"]:
                deal_id = deal_history["id"]

                # Process historical changes from propertiesWithHistory
                for property_name, history in deal_history.get(
                    "propertiesWithHistory", {}
                ).items():
                    history_sorted = sorted(
                        history, key=lambda x: x["timestamp"]
                    )  # Sort by timestamp
                    previous_value = None
                    for change in history_sorted:
                        # The current value from 'change' is the new value, and the previous one is the old value
                        record = {
                            "deal_id": deal_id,
                            "update_type": f"{property_name} changed",
                            f"update_{property_name}_old_value": previous_value,
                            f"update_{property_name}_new_value": change.get("value"),
                            "update_timestamp": change.get("timestamp"),
                            "update_user_id": change.get("updatedByUserId"),
                            "update_source_type": change.get("sourceType"),
                        }
                        all_records.append(record)
                        previous_value = change.get(
                            "value"
                        )  # Update previous value to current value

        else:
            print(
                f"Failed to process batch {i//batch_size + 1} of {num_deal_ids//batch_size + 1}: {response.text}"
            )

        # Status message after processing each batch
        print(
            f"deal history: {min(i + batch_size, num_deal_ids)} out of {num_deal_ids} records processed"
        )

    # Convert the list of records into a DataFrame
    history_df = pd.DataFrame(all_records)

    return history_df


def add_company_information(hs: HubSpot, deals: pd.DataFrame) -> pd.DataFrame:

    # First API call to retrieve the associations between deals and companies
    associations = hs.crm.associations.batch_api.read(
        from_object_type="deals",
        to_object_type="company",
        batch_input_public_object_id=BatchInputPublicObjectId(
            inputs=deals["deal_id"].unique().tolist()
        ),
    )

    company_association_rows = []
    for result in associations.results:
        deal_id = result._from.id
        to_dict = result.to
        for to in to_dict:
            company_association_rows.append(
                {
                    "deal_id": deal_id,
                    "company_id": to.id,
                }
            )

    # Create a DataFrame from the expanded rows
    company_association_df = pd.DataFrame(company_association_rows)

    # API call to retrieve additional company information
    company_ids = company_association_df["company_id"].unique().tolist()

    company_details = []
    total_companies = len(company_ids)

    # Split company_ids into batches of 100
    batch_size = 100
    for i in range(0, total_companies, batch_size):
        batch = company_ids[i : i + batch_size]
        batch_input = BatchReadInputSimplePublicObjectId(
            inputs=[{"id": cid} for cid in batch]
        )

        company_infos = hs.crm.companies.batch_api.read(
            batch_read_input_simple_public_object_id=batch_input
        )

        for company_info in company_infos.results:
            company_details.append(
                {
                    "company_id": company_info.id,
                    "company_name": company_info.properties.get("name", ""),
                    "company_domain": company_info.properties.get("domain", ""),
                    # Add more relevant fields here
                }
            )

        # Status message after processing each batch
        print(
            f"company association: {min(i + batch_size, total_companies)} out of {total_companies} records processed"
        )

    # Create a DataFrame from the company details
    company_df = pd.DataFrame(company_details)

    # Merge the expanded DataFrame with the company_df
    merged_df = company_association_df.merge(company_df, on="company_id", how="left")

    # Merge the original deals DataFrame with the merged_df
    merged_deals = deals.merge(merged_df, on="deal_id", how="left")

    return merged_deals


def load_activities(hs: HubSpot, deals: pd.DataFrame) -> pd.DataFrame:

    activity_association_rows = []
    deal_ids = deals["deal_id"].unique().tolist()

    # Load associations for each deal and each activity type
    for activity_type in ACTIVITY_TYPES:
        associations = hs.crm.associations.batch_api.read(
            from_object_type="deals",
            to_object_type=activity_type,
            batch_input_public_object_id=BatchInputPublicObjectId(inputs=deal_ids),
        )
        for result in associations.results:
            deal_id = result._from.id
            to_dict = result.to
            for to in to_dict:
                activity_association_rows.append(
                    {
                        "deal_id": deal_id,
                        "activity_id": to.id,
                        "update_type": activity_type,
                    }
                )

        # Format the output string so that the colon is aligned
        print(f"{activity_type} loaded...")

    # Create a DataFrame from the expanded rows
    activity_association_df = pd.DataFrame(activity_association_rows)

    return activity_association_df


def fetch_activity_details_batch_via_rest(
    hs: HubSpot,
    activity_type: str,
    activity_ids: list[str],
    properties: list[str],
) -> list[dict]:

    # Header is the same for all batches
    headers = {
        "Authorization": f"Bearer {hs.access_token}",
        "Content-Type": "application/json",
    }

    url = f"https://api.hubapi.com/crm/v3/objects/{activity_type}/batch/read"

    results = []
    total_items = len(activity_ids)

    # Split IDs into batches of up to 100
    for i in range(0, total_items, 100):
        batch_ids = activity_ids[i : i + 100]

        # Prepare the data for the batch API request
        data = {
            "properties": properties,
            "inputs": [{"id": obj_id} for obj_id in batch_ids],
        }

        # Execute the POST request to the Batch API
        response = requests.post(url, headers=headers, json=data)

        if response.status_code == 200:
            batch_results = response.json().get("results", [])
            for idx, result in enumerate(batch_results):
                activity_details = result.get("properties", {})
                results.append(activity_details)

            processed_count = min(i + 100, total_items)
            print(
                f"Processed {processed_count} of {total_items} items for {activity_type}."
            )
        else:
            print(
                f"Error fetching batch for {activity_type}: {response.status_code}, {response.text}"
            )

    return results


def add_activity_details(hs: HubSpot, deal_activities: pd.DataFrame) -> pd.DataFrame:

    # Load details for each activity type in batches
    activity_details = []

    for activity_type in ACTIVITY_TYPES:
        # Filter rows for the current activity type
        activity_data = deal_activities[deal_activities["update_type"] == activity_type]
        activity_ids = activity_data["activity_id"].unique().tolist()

        properties_to_fetch = ACTIVITY_TYPE_DETAILS.get(activity_type, [])

        if properties_to_fetch and activity_ids:
            # Fetch the details via REST API
            details = fetch_activity_details_batch_via_rest(
                hs=hs,
                activity_type=activity_type,
                activity_ids=activity_ids,
                properties=properties_to_fetch,
            )
            activity_details.extend(details)

    activity_details_df = pd.DataFrame(activity_details)

    # rename all columns to have a prefix "activity_"
    activity_details_df.rename(
        columns=lambda x: (
            f"activity_{x.replace('hs_', '')}" if not x.startswith("activity_") else x
        ),
        inplace=True,
    )
    # individual renamings

    activity_details_df.rename(
        columns={
            "activity_createdate": "update_timestamp",
            "activity_hubspot_owner_id": "update_user_id",
        },
        inplace=True,
    )

    # Merge the activity details with the original deals DataFrame using deal_id
    merged_df = deal_activities.merge(
        activity_details_df,
        left_on="activity_id",
        right_on="activity_object_id",
        how="left",
    )

    return merged_df


def upload_deals_to_NEMO(
    config: ConfigHandler, projectname: str, deals: pd.DataFrame
) -> None:

    # remove timezone information (not supported by excel)
    for column in deals.columns:
        if pd.api.types.is_datetime64tz_dtype(deals[column]):
            deals[column] = deals[column].dt.tz_localize(None)

    # Remove unnecessary columns like "associations" and "archived"
    columns_to_drop = [
        "deal_associations",
        "deal_archived",
        "deal_archived_at",
        "deal_properties_with_history",
        "deal_created_at",
        "deal_updated_at",
        "deal_pipeline",
    ]
    deals = deals.drop(columns=columns_to_drop, errors="ignore")

    # write file temporarily to disk

    with tempfile.NamedTemporaryFile(delete=True, suffix=".csv") as temp_file:
        temp_file_path = temp_file.name

        print(temp_file_path)
        deals.to_csv(
            temp_file_path,
            index=False,
            sep=";",
        )

        print(f"file {temp_file_path} written. Number of records: {len(deals)}")
        ReUploadFileIngestion(
            config=config,
            projectname=projectname,
            filename=temp_file_path,
            update_project_settings=True,
        )
        print(f"upload to project {projectname} completed")
        temp_file.close()


def add_user_information(hs: HubSpot, deals: pd.DataFrame) -> pd.DataFrame:

    # Load HubSpot owners and create a mapping from hubspot_owner_id to owner name
    owners = hs.crm.owners.get_all()
    owner_mapping = {
        owner.id: f"{owner.first_name} {owner.last_name}" for owner in owners
    }

    # Map internal owner ids to clear names

    columns_to_map = [
        col for col in deals.columns if "owner_id" in col or "user_id" in col
    ]
    for col in columns_to_map:
        deals[col.replace("id", "name")] = deals[col].map(owner_mapping)

    return deals


def map_deal_stage(hs: HubSpot, deals: pd.DataFrame) -> pd.DataFrame:

    # Map the internal dealstage keys to user-friendly text
    columns_to_map = [col for col in deals.columns if "dealstage" in col]
    for col in columns_to_map:
        deals[col] = deals[col].map(DEALSTAGE_MAPPING)

    return deals

