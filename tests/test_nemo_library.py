import os
import sys
import pytest
import requests

from nemo_library import NemoLibrary
from datetime import datetime

IC_PROJECT_NAME = "gs_unit_test_Intercompany"


def getNL():
    return NemoLibrary(
        config_file="tests/config.ini",
    )


def test_getProjectList():
    nl = getNL()
    df = nl.getProjectList()
    print(df)
    assert len(df) > 0
    first_row = df.iloc[0]
    assert first_row["id"] == "00000000-0000-0000-0000-000000000001"


def test_getProjectID():
    nl = getNL()
    assert (
        nl.getProjectID("Business Processes") == "00000000-0000-0000-0000-000000000001"
    )


def test_getProjectProperty():
    nl = getNL()
    val = nl.getProjectProperty(
        projectname="Business Processes", propertyname="ExpDateFrom"
    )

    assert val is not None, "API call did not return any value"

    try:
        date_val = datetime.strptime(val, "%Y-%m-%d")
    except ValueError:
        pytest.fail(f"Returned value ({val}) is not in the format YYYY-MM-DD")

    assert (
        2000 <= date_val.year <= 2100
    ), "Year is out of the acceptable range (2000-2100)"


def test_LoadReport():
    nl = getNL()
    df = nl.LoadReport(
        projectname=IC_PROJECT_NAME,
        report_guid="2b02f610-c70e-489a-9895-2cab382ff911",
    )

    assert len(df) == 33

def test_createProject():
    nl = getNL()
    #nl.createProject()

def test_createProjectsForMigMan():
    nl = getNL()
    # nl.createProjectsForMigMan()
    
def test_getImportedColumns():
    nl = getNL()
    # nl.getImportedColumns
    
def test_createImportedColumn():
    nl = getNL()
    # nl.createImportedColumn()
    
def test_ReUploadFile():
    nl = getNL()

    nl.ReUploadFile(
        projectname=IC_PROJECT_NAME,
        filename="./tests/intercompany_NEMO.csv",
    )

    val = nl.getProjectProperty(
        projectname=IC_PROJECT_NAME, propertyname="ExpNumberOfRecords"
    )
    assert int(val) == 34960, "number of records do not match"

def test_createOrUpdateReport():
    nl = getNL()
    # ml.createOrUpdateReport()
    
def test_createOrUpdateRule():
    nl = getNL()
    # ml.createOrUpdateRule()
    
def test_synchronizeCsvColsAndImportedColumns():
    nl = getNL()
    nl.synchronizeCsvColsAndImportedColumns(
        projectname=IC_PROJECT_NAME,
        filename="./tests/intercompany_NEMO.csv",
    )

    val = nl.getProjectProperty(
        projectname=IC_PROJECT_NAME, propertyname="ExpNumberOfRecords"
    )
    assert int(val) == 34960, "number of records do not match"

def test_focusMoveAttributeBefore():
    nl = getNL()
    # nl.focusMoveAttributeBefore()
    
def test_FetchDealFromHubSpotAndUploadToNEMO():
    nl = getNL()
    # nl.FetchDealFromHubSpotAndUploadToNEMO()    