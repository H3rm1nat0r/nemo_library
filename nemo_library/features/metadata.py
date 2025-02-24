from collections import defaultdict
import json
import logging
from pathlib import Path
import re
from typing import Type, TypeVar, List
from nemo_library.features.focus import focusMoveAttributeBefore
from nemo_library.features.projects import (
    FilterType,
    createAttributGroups,
    createDefinedColumns,
    createMetrics,
    createTiles,
    deleteAttributeGroups,
    deleteDefinedColumns,
    deleteMetrics,
    deleteTiles,
    getAttributeGroups,
    getDefinedColumns,
    getMetrics,
    getTiles,
)
from nemo_library.model.attribute_group import AttributeGroup
from nemo_library.model.defined_column import DefinedColumn
from nemo_library.model.metric import Metric
from nemo_library.model.tile import Tile
from nemo_library.utils.config import Config

__all__ = ["MetaDataLoad", "MetaDataCreate"]

T = TypeVar("T")


def MetaDataLoad(
    config: Config,
    projectname: str,
) -> None:
    data = getDefinedColumns(
        config=config,
        projectname=projectname,
        filter="(Conservative)",
        filter_type=FilterType.STARTSWITH,
    )
    _export_data_to_json(config, "definedcolumns", data)

    data = getMetrics(
        config=config,
        projectname=projectname,
        filter="(Conservative)",
        filter_type=FilterType.STARTSWITH,
    )
    _export_data_to_json(config, "metrics", data)

    data = getTiles(
        config=config,
        projectname=projectname,
        filter="(Conservative)",
        filter_type=FilterType.STARTSWITH,
    )
    _export_data_to_json(config, "tiles", data)

    data = getAttributeGroups(
        config=config,
        projectname=projectname,
        filter="(Conservative)",
        filter_type=FilterType.STARTSWITH,
    )
    _export_data_to_json(config, "attributegroups", data)


def MetaDataCreate(
    config: Config,
    projectname: str,
) -> None:

    # setup meta data (to be view)
    definedcolumns = _load_data_from_json(config, "definedcolumns", DefinedColumn)
    metrics = _load_data_from_json(config, "metrics", Metric)
    attributegroups = _load_data_from_json(config, "attributegroups", AttributeGroup)

    tiles = [
        Tile(
            aggregation="Mean",
            description=f"Tile for metric {metric.displayName}",
            descriptionTranslations={},
            displayName=metric.displayName,
            displayNameTranslations={},
            frequency="Month",
            graphic="",
            internalName=metric.internalName,
            status="Mandatory",
            tileGroup="(Conservative)",
            tileGroupTranslations={},
            tileSourceID=metric.id,
            tileSourceInternalName=metric.internalName,
            type="Metric",
            unit="",
            id="",
            projectId="",
            tenant="",
        )
        for metric in metrics
    ]

    # delete objects that have changed or are removed
    _delete_objects_that_not_longer_exist(config, projectname, "tiles", tiles)
    _delete_objects_that_not_longer_exist(
        config, projectname, "attributegroups", attributegroups
    )
    _delete_objects_that_not_longer_exist(config, projectname, "metrics", metrics)
    _delete_objects_that_not_longer_exist(
        config, projectname, "definedcolumns", definedcolumns
    )

    # create/update meta data into NEMO
    createDefinedColumns(
        config=config, projectname=projectname, defined_columns=definedcolumns
    )
    createMetrics(config=config, projectname=projectname, metrics=metrics)
    createTiles(config=config, projectname=projectname, tiles=tiles)
    createAttributGroups(
        config=config, projectname=projectname, attribute_groups=attributegroups
    )

    # move attributes and groups
    _move_objects_in_focus(
        config=config,
        projectname=projectname,
        defined_columns=definedcolumns,
        metrics=metrics,
        attribute_groups=attributegroups,
    )


def _load_data_from_json(config: Config, file: str, cls: Type[T]) -> List[T]:
    path = Path(config.get_metadata()) / f"{file}.json"
    with open(path, "r", encoding="utf-8") as f:
        data = json.load(f)

    return [cls(**item) for item in data]


def _export_data_to_json(config: Config, file: str, data):
    data = _clean_fields(data)
    path = Path(config.get_metadata()) / f"{file}.json"
    with open(path, "w", encoding="utf-8") as file:
        json.dump(
            [element.to_dict() for element in data], file, indent=4, ensure_ascii=True
        )


def _clean_fields(data):
    for element in data:
        element.id = ""
        element.tenant = ""
        element.projectID = ""
    return data


def _delete_objects_that_not_longer_exist(
    config: Config,
    projectname: str,
    type: str,
    data: List[T],
) -> None:

    internal_names = [data_item.internalName for data_item in data]
    if type == "definedcolumns":
        data_nemo_list = getDefinedColumns(
            config=config,
            projectname=projectname,
            filter="(Conservative)",
            filter_type=FilterType.STARTSWITH,
        )
    elif type == "metrics":
        data_nemo_list = getMetrics(
            config=config,
            projectname=projectname,
            filter="(Conservative)",
            filter_type=FilterType.STARTSWITH,
        )
    elif type == "tiles":
        data_nemo_list = getTiles(
            config=config,
            projectname=projectname,
            filter="(Conservative)",
            filter_type=FilterType.STARTSWITH,
        )
    elif type == "attributegroups":
        data_nemo_list = getAttributeGroups(
            config=config,
            projectname=projectname,
            filter="(Conservative)",
            filter_type=FilterType.STARTSWITH,
        )

    objects_to_delete = []
    for data_nemo in data_nemo_list:
        if data_nemo.internalName not in internal_names:
            objects_to_delete.append(data_nemo.id)

    if type == "definedcolumns":
        deleteDefinedColumns(config=config, defined_columns=objects_to_delete)
    elif type == "metrics":
        deleteMetrics(config=config, metrics=objects_to_delete)
    elif type == "tiles":
        deleteTiles(config=config, tiles=objects_to_delete)
    elif type == "attributegroups":
        deleteAttributeGroups(config=config, attribute_groups=objects_to_delete)


def extract_fields(formulas_dict):
    field_pattern = re.compile(r'\b[a-zA-Z_][a-zA-Z0-9_]*\b')
    
    extracted_fields = {}
    
    for key, formulas in formulas_dict.items():
        extracted_fields[key] = set()
        for formula in formulas:
            fields = field_pattern.findall(formula)
            extracted_fields[key].update(fields)
    
    return {k: sorted(v) for k, v in extracted_fields.items()}


def _move_objects_in_focus(
    config: Config,
    projectname: str,
    defined_columns: List[DefinedColumn],
    metrics: List[Metric],
    attribute_groups: List[AttributeGroup],
) -> None:
    
    # move global object to top
    # focusMoveAttributeBefore(
    #     config=config,
    #     projectname=projectname,
    #     sourceDisplayName="(Conservative) Global",
    # )

    # move fields that belong to metrics and defined columns into according groups
        
    fields = {}
    for defined_column in defined_columns:
        key = defined_column.parentAttributeGroupInternalName
        if key not in fields:
            fields[key] = []
        fields[key].append(defined_column.formula)

    fields_dict = extract_fields(fields)    
    for key, fields in fields_dict.items():
        logging.info(f"group {key}")
        for field in fields:
            logging.info(f"move object {field}")
            focusMoveAttributeBefore(
                config=config,
                projectname=projectname,
                sourceInternalName=field,
                groupInternalName=key
            )
