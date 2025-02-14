import pytest

from nemo_library import NemoLibrary

def getNL():
    return NemoLibrary(
        config_file="tests/config.ini",
    )


def test_getProjectList():
    nl = getNL()
    df = nl.getProjectList()
    assert len(df) > 0
    first_row = df.iloc[0]
    assert first_row["id"] == "00000000-0000-0000-0000-000000000001"
