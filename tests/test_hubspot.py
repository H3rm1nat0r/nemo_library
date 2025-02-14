import pytest

from nemo_library import NemoLibrary
from datetime import datetime

HS_PROJECT_NAME = "gs_unit_test_HubSpot"

def getNL():
    return NemoLibrary(
        config_file="tests/config.ini",
    )

def test_FetchDealFromHubSpotAndUploadToNEMO():
    nl = getNL()

    # check if project exists (should not)
    projects = nl.getProjectList()["displayName"].to_list()
    if HS_PROJECT_NAME in projects:
        nl.deleteProject(HS_PROJECT_NAME)
    
    nl.createProject(HS_PROJECT_NAME,"project for unit tests")
    nl.FetchDealFromHubSpotAndUploadToNEMO(HS_PROJECT_NAME)
    nl.deleteProject(HS_PROJECT_NAME)
    assert True
