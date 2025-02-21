import json
import logging
import re
import pandas as pd

from nemo_library.features.projects import FilterType
from nemo_library.nemo_library import NemoLibrary


pd.set_option("display.max_rows", None)
pd.set_option("display.max_columns", None)

nl = NemoLibrary()
data = nl.getDefinedColumns(
    projectname="Business Processes",
    filter="(Conservative)",
    filter_type=FilterType.STARTSWITH
)

for definedcolumn in data:
    for column in [
        "id",
        "tenant",
        "projectId",
    ]:
        definedcolumn[column] = ""

    for column in [
        "attributeGroupInternalName",
        "focusOrder",
        "changedBy",
        "changedDate",
        "createdBy",
        "creationDate",
        "metadataTemplateId",
        "conflictState",
        "focusAggregationFunction",
        "focusAggregationGroupByTargetType",
        "focusAggregationSourceColumnInternalName",
        "focusGroupByTargetInternalName",
    ]:
        definedcolumn.pop(column, None)
        
with open("./metadata/definedcolumns.json", "w", encoding="utf-8") as file:
    json.dump(data, file, indent=4, ensure_ascii=False)

data = nl.getMetrics(
    projectname="Business Processes",
    filter="(Conservative)",
    filter_type=FilterType.STARTSWITH
)

with open("./metadata/metrics.json", "w", encoding="utf-8") as file:
    json.dump(data, file, indent=4, ensure_ascii=False)
