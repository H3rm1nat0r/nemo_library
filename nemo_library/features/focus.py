import re
import pandas as pd
import requests
import json

from nemo_library.features.config import Config
from nemo_library.features.projects import getProjectID


def focusMoveAttributeBefore(
    config: Config,
    projectname: str,
    sourceDisplayName: str,
    targetDisplayName: str = None,
) -> None:

    headers = config.connection_get_headers()
    project_id = getProjectID(config, projectname)

    # load attribute tree
    response = requests.get(
        config.config_get_nemo_url()
        + "/api/nemo-persistence/focus/AttributeTree/projects/{projectId}/attributes".format(
            projectId=project_id
        ),
        headers=headers,
    )
    if response.status_code != 200:
        raise Exception(
            f"Request failed. Status: {response.status_code}, error: {response.text}"
        )

    resultjs = json.loads(response.text)
    df = pd.json_normalize(resultjs)

    # locate source and target object
    sourceid = df[df["label"] == sourceDisplayName].iloc[0]["id"]
    targetid = (
        df[df["label"] == targetDisplayName].iloc[0]["id"]
        if targetDisplayName
        else None
    )

    # now move the attribute
    data = {
        "sourceAttributes": [sourceid],
        "targetPreviousElementId": targetid,
        # "groupInternalName": "",
    }

    response = requests.put(
        config.config_get_nemo_url()
        + "/api/nemo-persistence/metadata/AttributeTree/projects/{projectId}/attributes/move".format(
            projectId=project_id
        ),
        headers=headers,
        json=data,
    )

    if response.status_code != 204:
        raise Exception(
            f"Request failed. Status: {response.status_code}, error: {response.text}"
        )
