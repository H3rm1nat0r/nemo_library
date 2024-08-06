import pandas as pd
import requests
import json
import re
import subprocess

from nemo_library.sub_connection_handler import connection_get_headers
from nemo_library.sub_config_handler import ConfigHandler

MINIMUM_INFOZOOM_VERSION = "9.90.0"

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

def extract_version(log_file_path: str) -> str:
    """
    Extracts the version number from a log file.

    Args:
        log_file_path (str): The path to the log file.

    Returns:
        str: The extracted version number in the format "x.y.z".

    Raises:
        Exception: If the version information is not found in the log file.
    """
    with open(log_file_path, "r") as file:
        log_contents = file.read()

    version_pattern = re.compile(r"Version (\d+\.\d+\.\d+)")
    match = version_pattern.search(log_contents)

    if match:
        return match.group(1)
    else:
        raise Exception(f"Version information not found")

def is_version_at_least(version: str, minimum_version: str) -> bool:
    """
    Checks if a version number is at least a specified minimum version.

    Args:
        version (str): The version number to check.
        minimum_version (str): The minimum version number to compare against.

    Returns:
        bool: True if the version is at least the minimum version, False otherwise.
    """
    version_parts = list(map(int, version.split(".")))
    minimum_version_parts = list(map(int, minimum_version.split(".")))

    return version_parts >= minimum_version_parts

def exportMetadata(
    config: ConfigHandler, infozoomexe: str, infozoomfile: str, metadatafile: str
) -> None:
    """
    Exports metadata from an InfoZoom file using the InfoZoom executable.

    Args:
        config (ConfigHandler): Configuration handler object.
        infozoomexe (str): Path to the InfoZoom executable.
        infozoomfile (str): Path to the InfoZoom file.
        metadatafile (str): Path to the metadata output file.

    Returns:
        None

    Prints:
        str: Output messages including the execution status and version information.

    Raises:
        subprocess.CalledProcessError: If the command execution fails.
    """
    full_command = [
        infozoomexe,
        infozoomfile,
        "-invisible",
        "-metadata",
        "-UTF8",
        "-saveObjectsAsCSV",
        ";",
        metadatafile,
        "-exit",
    ]
    result = subprocess.run(full_command, shell=True, check=True)
    print("Command executed with return code:", result.returncode)
    log_file_path = "Log.txt"
    version = extract_version(log_file_path)
    print(f"version number found in {log_file_path}: {version}")
    if is_version_at_least(version, MINIMUM_INFOZOOM_VERSION):
        print(f"Version number {version} matches minimum version {MINIMUM_INFOZOOM_VERSION}")
    else:
        raise Exception(f"Version {version} lower than minimum version {MINIMUM_INFOZOOM_VERSION}")
