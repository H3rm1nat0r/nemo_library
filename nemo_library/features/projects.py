import re
import pandas as pd
import requests
import json

from nemo_library.features.config import Config
from nemo_library.utils.utils import display_name, import_name, internal_name


def getProjectList(
    config: Config,
):

    headers = config.connection_get_headers()

    response = requests.get(
        config.config_get_nemo_url() + "/api/nemo-projects/projects", headers=headers
    )
    if response.status_code != 200:
        raise Exception(
            f"request failed. Status: {response.status_code}, error: {response.text}"
        )
    resultjs = json.loads(response.text)
    df = pd.json_normalize(resultjs)
    return df


def getProjectID(
    config: Config,
    projectname: str,
) -> str:
    df = getProjectList(config)
    crmproject = df[df["displayName"] == projectname]
    if len(crmproject) != 1:
        raise Exception(f"could not identify project name {projectname}")
    project_id = crmproject["id"].to_list()[0]
    return project_id


def getProjectProperty(
    config: Config,
    projectname: str,
    propertyname: str,
) -> str:

    project_id = getProjectID(config, projectname)

    headers = config.connection_get_headers()

    ENDPOINT_URL = (
        config.config_get_nemo_url()
        + "/api/nemo-persistence/ProjectProperty/project/{projectId}/{request}".format(
            projectId=project_id, request=propertyname
        )
    )

    response = requests.get(ENDPOINT_URL, headers=headers)

    if response.status_code != 200:
        raise Exception(
            f"request failed. Status: {response.status_code}, error: {response.text}"
        )

    return response.text[1:-1]  # cut off leading and trailing "


def LoadReport(
    config: Config,
    projectname: str,
    report_guid: str,
    max_pages=None,
) -> pd.DataFrame:

    project_id = getProjectID(config=config, projectname=projectname)

    print(f"Loading report: {report_guid} from project {projectname}")

    headers = config.connection_get_headers()

    # INIT REPORT PAYLOAD (REQUEST BODY)
    report_params = {"id": report_guid, "project_id": project_id}

    response_report = requests.post(
        config.config_get_nemo_url() + "/api/nemo-report/report_export",
        headers=headers,
        json=report_params,
    )

    if response_report.status_code != 200:
        raise Exception(
            f"Request failed. Status: {response_report.status_code}, error: {response_report.text}"
        )

    # Extract download URL from response
    csv_url = response_report.text.strip('"')
    print(f"Downloading CSV from: {csv_url}")

    # Download the file into pandas
    try:
        result = pd.read_csv(csv_url)
        if "_RECORD_COUNT" in result.columns:
            result.drop(columns=["_RECORD_COUNT"], inplace=True)
    except Exception as e:
        raise Exception(f"Download failed. Status: {e}")
    return result


def createProject(
    config: Config,
    projectname: str,
    description: str,
) -> None:

    headers = config.connection_get_headers()
    ENDPOINT_URL = (
        config.config_get_nemo_url() + "/api/nemo-persistence/metadata/Project"
    )
    table_name = re.sub(r"[^A-Z0-9_]", "_", projectname.upper()).strip()
    if not table_name.startswith("PROJECT_"):
        table_name = "PROJECT_" + table_name

    data = {
        "autoDataRefresh": True,
        "displayName": projectname,
        "description": description,
        "type": "IndividualData",
        "status": "Active",
        "tableName": table_name,
        "importErrorType": "NoError",
        "id": "",
        "s3DataSourcePath": "",
        "showInitialConfiguration": False,
        "tenant": config.config_get_tenant(),
        "type": "0",
    }

    response = requests.post(ENDPOINT_URL, headers=headers, json=data)

    if response.status_code != 201:
        raise Exception(
            f"Request failed. Status: {response.status_code}, error: {response.text}"
        )


def setProjectMetaData(
    config: Config,
    projectname: str,
    processid_column: str = None,
    processdate_column: str = None,
    corpcurr_value: str = None,
) -> None:

    headers = config.connection_get_headers()
    projectID = getProjectID(config, projectname)

    data = {}
    if corpcurr_value:
        data["corporateCurrencyValue"] = corpcurr_value
    if processdate_column:
        data["processDateColumnName"] = processdate_column
    if processid_column:
        data["processIdColumnName"] = processid_column

    ENDPOINT_URL = config.config_get_nemo_url() + "/api/nemo-persistence/ProjectProperty/project/{projectId}/BusinessProcessMetadata".format(
        projectId=projectID
    )

    response = requests.put(ENDPOINT_URL, headers=headers, json=data)
    if response.status_code != 200:
        raise Exception(
            f"Request failed. Status: {response.status_code}, error: {response.text}"
        )
        
def deleteProject(config: Config, projectname: str) -> None:

    headers = config.connection_get_headers()
    projectID = getProjectID(config, projectname)
    ENDPOINT_URL = (
        config.config_get_nemo_url()
        + "/api/nemo-persistence/metadata/Project/{id}".format(id=projectID)
    )
    response = requests.delete(ENDPOINT_URL, headers=headers)

    if response.status_code != 204:
        raise Exception(
            f"Request failed. Status: {response.status_code}, error: {response.text}"
        )


def getImportedColumns(
    config: Config,
    projectname: str,
) -> pd.DataFrame:

    try:

        # initialize reqeust
        headers = config.connection_get_headers()
        project_id = getProjectID(config, projectname)
        response = requests.get(
            config.config_get_nemo_url()
            + "/api/nemo-persistence/metadata/Columns/project/{projectId}/exported".format(
                projectId=project_id
            ),
            headers=headers,
        )
        if response.status_code != 200:
            raise Exception(
                f"request failed. Status: {response.status_code}, error: {response.text}"
            )
        resultjs = json.loads(response.text)
        df = pd.json_normalize(resultjs)
        return df

    except Exception as e:
        if project_id == None:
            raise Exception("process stopped, no project_id available")
        raise Exception("process aborted")


def createImportedColumn(
    config: Config,
    projectname: str,
    displayName: str,
    dataType: str,
    importName: str = None,
    internalName: str = None,
    description: str = None,
) -> None:

    # initialize reqeust
    headers = config.connection_get_headers()
    project_id = getProjectID(config, projectname)

    if not importName:
        importName = re.sub(r"[^a-z0-9_]", "_", displayName.lower()).strip()
    if not internalName:
        internalName = re.sub(r"[^a-z0-9_]", "_", displayName.lower()).strip()
    if not description:
        description = ""

    data = {
        "categorialType": True,
        "columnType": "ExportedColumn",
        "containsSensitiveData": False,
        "dataType": dataType,
        "description": description,
        "displayName": displayName,
        "importName": importName,
        "internalName": internalName,
        "id": "",
        "unit": "",
        "tenant": config.config_get_tenant(),
        "projectId": project_id,
    }

    response = requests.post(
        config.config_get_nemo_url() + "/api/nemo-persistence/metadata/Columns",
        headers=headers,
        json=data,
    )
    if response.status_code != 201:
        raise Exception(
            f"request failed. Status: {response.status_code}, error: {response.text}"
        )


def createOrUpdateReport(
    config: Config,
    projectname: str,
    displayName: str,
    querySyntax: str,
    internalName: str = None,
    description: str = None,
) -> None:

    headers = config.connection_get_headers()
    project_id = getProjectID(config, projectname)

    if not internalName:
        internalName = re.sub(r"[^a-z0-9_]", "_", displayName.lower()).strip()

    # load list of reports first
    response = requests.get(
        config.config_get_nemo_url()
        + "/api/nemo-persistence/metadata/Reports/project/{projectId}/reports".format(
            projectId=project_id
        ),
        headers=headers,
    )
    resultjs = json.loads(response.text)
    df = pd.json_normalize(resultjs)
    df = pd.json_normalize(resultjs)
    if df.empty:
        internalNames = []
    else:
        internalNames = df["internalName"].to_list()
    report_exist = internalName in internalNames

    data = {
        "projectId": project_id,
        "displayName": displayName,
        "internalName": internalName,
        "querySyntax": querySyntax,
        "description": description if description else "",
        "tenant": config.config_get_tenant(),
    }

    if report_exist:
        df_filtered = df[df["internalName"] == internalName].iloc[0]
        data["id"] = df_filtered["id"]
        response = requests.put(
            config.config_get_nemo_url()
            + "/api/nemo-persistence/metadata/Reports/{id}".format(
                id=df_filtered["id"]
            ),
            headers=headers,
            json=data,
        )

        if response.status_code != 200:
            raise Exception(
                f"Request failed. Status: {response.status_code}, error: {response.text}"
            )

    else:
        response = requests.post(
            config.config_get_nemo_url() + "/api/nemo-persistence/metadata/Reports",
            headers=headers,
            json=data,
        )

        if response.status_code != 201:
            raise Exception(
                f"Request failed. Status: {response.status_code}, error: {response.text}"
            )


def createOrUpdateRule(
    config: Config,
    projectname: str,
    displayName: str,
    ruleSourceInternalName: str,
    internalName: str = None,
    ruleGroup: str = None,
    description: str = None,
) -> None:

    headers = config.connection_get_headers()
    project_id = getProjectID(config, projectname)

    if not internalName:
        internalName = re.sub(r"[^a-z0-9_]", "_", displayName.lower()).strip()

    # load list of reports first
    response = requests.get(
        config.config_get_nemo_url()
        + "/api/nemo-persistence/metadata/Rule/project/{projectId}/rules".format(
            projectId=project_id
        ),
        headers=headers,
    )
    resultjs = json.loads(response.text)
    df = pd.json_normalize(resultjs)
    if df.empty:
        internalNames = []
    else:
        internalNames = df["internalName"].to_list()
    rule_exist = internalName in internalNames

    data = {
        "active": True,
        "projectId": project_id,
        "displayName": displayName,
        "internalName": internalName,
        "tenant": config.config_get_tenant(),
        "description": description if description else "",
        "ruleGroup": ruleGroup,
        "ruleSourceInternalName": ruleSourceInternalName,
    }

    if rule_exist:
        df_filtered = df[df["internalName"] == internalName].iloc[0]
        data["id"] = df_filtered["id"]
        response = requests.put(
            config.config_get_nemo_url()
            + "/api/nemo-persistence/metadata/Rule/{id}".format(id=df_filtered["id"]),
            headers=headers,
            json=data,
        )
        if response.status_code != 200:
            raise Exception(
                f"Request failed. Status: {response.status_code}, error: {response.text}"
            )
    else:
        response = requests.post(
            config.config_get_nemo_url() + "/api/nemo-persistence/metadata/Rule",
            headers=headers,
            json=data,
        )
        if response.status_code != 201:
            raise Exception(
                f"Request failed. Status: {response.status_code}, error: {response.text}"
            )


def synchronizeCsvColsAndImportedColumns(
    config: Config,
    projectname: str,
    filename: str,
) -> None:

    df = getImportedColumns(config, projectname)
    importedColumns = df["internalName"].to_list() if not df.empty else []

    importedColumns = getImportedColumns(config, projectname)["internalName"].to_list()

    # Read the first line of the CSV file to get column names
    with open(filename, "r") as file:
        first_line = file.readline().strip()

    # Split the first line into a list of column names
    csv_display_names = first_line.split(";")
    csv_display_names = [x.strip('"') for x in csv_display_names]

    # Check if a record exists in the DataFrame for each column
    for column_name in csv_display_names:
        displayName = display_name(column_name)
        internalName = internal_name(column_name)
        importName = import_name(column_name)

        # Check if the record with internal_name equal to the column name exists
        if internalName in importedColumns:
            print(f"Record found for column '{column_name}' in the DataFrame.")
        else:
            print(
                f"******************************No record found for column '{column_name}' in the DataFrame."
            )
            createImportedColumn(
                config=config,
                projectname=projectname,
                displayName=displayName,
                dataType="string",
                importName=importName,
                internalName=internalName,
                description="",
            )