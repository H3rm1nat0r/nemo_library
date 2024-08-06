import pandas as pd
import requests
import json

from nemo_library.sub_connection_handler import connection_get_headers
from nemo_library.sub_config_handler import ConfigHandler


def synchMetadataWithFocus(config: ConfigHandler, metadatafile: str, projectId: str):
    """
    Synchronizes metadata from a given CSV file with the NEMO project metadata.

    This method reads metadata from a CSV file, processes it, and synchronizes it with
    the metadata of a specified NEMO project. It handles the creation of groups first
    and then processes individual attributes.

    Args:
        config (ConfigHandler): Configuration handler instance to retrieve configuration details.
        metadatafile (str): Path to the CSV file containing metadata.
        projectId (str): The ID of the NEMO project to synchronize with.

    Raises:
        Exception: If any request to the NEMO API fails or if an unexpected error occurs.
    """
    try:

        # headers for all requests
        headers = connection_get_headers(config)

        # read meta data from fox file
        foxmetadata = pd.read_csv(
            metadatafile,
            usecols=[
                "Attribut",
                "UUID",
                "Attributname",
                "Importname",
                "Definition",
                "Enthalten in Gruppe",
                "Enthalten in Gruppe (mit UUID)",
            ],
        )
        foxmetadata.set_index("Attribut", inplace=True)

        # Filter rows where Definition is 'Gruppe' and create groups first
        foxmetadata_groups = foxmetadata[foxmetadata["Definition"] == "Gruppe"]
        # self.process_groups(foxmetadata_groups, headers, projectId)

        # read meta data from NEMO project
        response = requests.get(
            config.config_get_nemo_url()
            + f"/api/nemo-persistence/metadata/Columns/project/{projectId}/exported",
            headers=headers,
        )
        if response.status_code != 200:
            raise Exception(
                f"request failed. Status: {response.status_code}, error: {response.text}"
            )
        resultjs = json.loads(response.text)
        nemometadatadf = pd.json_normalize(resultjs)

        # process attributes

        previous_attr = None
        for idx, row in foxmetadata.iterrows():

            print(
                "processing attibute",
                idx,
                row["Attributname"],
                "type:",
                row["Definition"],
            )

            # search for twin in meta data
            if row["Definition"] not in ["Einfaches Attribut", "Gruppe"]:
                print(
                    "attribute "
                    + row["Attributname"]
                    + " ignored, due to unsupported type "
                    + row["Definition"]
                )
            else:
                meta = nemometadatadf[
                    nemometadatadf["importName"]
                    == (
                        row["Attributname"]
                        if row["Definition"] == "Gruppe"
                        else row["Importname"]
                    )
                ]
                if len(meta) == 0:
                    print(
                        "could not find attribute "
                        + row["Attributname"]
                        + " in meta data!"
                    )
                else:
                    if len(meta) > 1:
                        print(
                            "multiple matches of attribute "
                            + row["Attributname"]
                            + " in meta data. Type : "
                            + row["Definition"]
                            + ". First one will be selected"
                        )
                    first_meta = meta.iloc[0]
                    source_id_meta = first_meta["id"]

                    if pd.isna(row["Enthalten in Gruppe"]):
                        group_name = None
                    else:
                        group_name = self.convert_internal_name(
                            row["Enthalten in Gruppe"]
                        )

                    # lets move the attribute now
                    api_url = (
                        self.config.config_get_nemo_url()
                        + f"/api/nemo-persistence/metadata/AttributeTree/projects/{projectId}/attributes/move"
                    )
                    payload = {
                        "sourceAttributes": [source_id_meta],
                        "targetPreviousElementId": previous_attr,
                        "groupInternalName": group_name,
                    }

                    response = requests.put(api_url, headers=headers, json=payload)
                    if response.status_code != 204:
                        raise Exception(
                            f"request failed. Status: {response.status_code}, error: {response.text}"
                        )

                    previous_attr = source_id_meta

    except Exception as e:
        raise Exception(f"process aborted: {str(e)}")
