import pytest
from nemo_library import NemoLibrary
from datetime import datetime

def test_getProjectList():
    nl = NemoLibrary()
    df = nl.getProjectList()
    print(df)
    assert len(df) > 0
    first_row = df.iloc[0]
    assert first_row["id"] == "00000000-0000-0000-0000-000000000001"
    
    
def test_getProjectID():
    nl = NemoLibrary()
    assert nl.getProjectID("Business Processes") == "00000000-0000-0000-0000-000000000001" 
    
def test_getProjectProperty():
    nl = NemoLibrary()
    val = nl.getProjectProperty(projectname="Business Processes", propertyname="ExpDateFrom")

    assert val is not None, "API call did not return any value"

    assert val.startswith('"') and val.endswith('"'), "Returned value does not start and end with quotes"

    # remove quotes now for further validations
    val = val[1:-1]

    try:
        date_val = datetime.strptime(val, "%Y-%m-%d")
    except ValueError:
        pytest.fail(f"Returned value ({val}) is not in the format YYYY-MM-DD")

    assert 2000 <= date_val.year <= 2100, "Year is out of the acceptable range (2000-2100)"

