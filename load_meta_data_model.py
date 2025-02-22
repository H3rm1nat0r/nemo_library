import json
import logging
import re
import pandas as pd

from nemo_library.features.projects import FilterType
from nemo_library.nemo_library import NemoLibrary


pd.set_option("display.max_rows", None)
pd.set_option("display.max_columns", None)

nl = NemoLibrary()


def clean_fields(data):
    for element in data:
        element.id = ""
        element.tenant = ""
        element.projectID = ""
    return data


def export_data(data, file_name):
    data = clean_fields(data)
    with open(file_name, "w", encoding="utf-8") as file:
        json.dump(
            [element.to_dict() for element in data], file, indent=4, ensure_ascii=True
        )


data = nl.getDefinedColumns(
    projectname="Business Processes",
    filter="(Conservative)",
    filter_type=FilterType.STARTSWITH,
)
export_data(data, "./metadata/definedcolumns.json")

data = nl.getMetrics(
    projectname="Business Processes",
    filter="(Conservative)",
    filter_type=FilterType.STARTSWITH,
)
export_data(data, "./metadata/metrics.json")

data = nl.getTiles(
    projectname="Business Processes",
    filter="(Conservative)",
    filter_type=FilterType.STARTSWITH,
)
export_data(data, "./metadata/tiles.json")

data = nl.getAttributGroups(
    projectname="Business Processes",
    filter="(Conservative)",
    filter_type=FilterType.STARTSWITH,
)
export_data(data, "./metadata/attribute_groups.json")
