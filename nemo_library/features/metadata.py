from collections import defaultdict
from dataclasses import asdict, fields, is_dataclass
import json
import logging
from pathlib import Path
import re
from typing import Tuple, Type, TypeVar, List, Dict
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

    # load data from model and nemo
    definedcolumns_model, metrics_model, attributegroups_model, tiles_model = (
        _load_model_from_json(config=config)
    )
    definedcolumns_nemo, metrics_nemo, tiles_nemo, attributegroups_nemo = (
        _load_model_from_nemo(config=config, projectname=projectname)
    )

    # reconcile data
    new_objects_found = _reconcile_model_and_nemo(
        config=config,
        projectname=projectname,
        definedcolumns_model=definedcolumns_model,
        metrics_model=metrics_model,
        attributegroups_model=attributegroups_model,
        tiles_model=tiles_model,
        definedcolumns_nemo=definedcolumns_nemo,
        metrics_nemo=metrics_nemo,
        tiles_nemo=tiles_nemo,
        attributegroups_nemo=attributegroups_nemo,
    )

    # move attributes and groups
    if new_objects_found:
        _move_objects_in_focus(
            config=config,
            projectname=projectname,
            defined_columns=definedcolumns_model,
            metrics=metrics_model,
            attribute_groups=attributegroups_model,
        )


def _load_model_from_json(config: Config) -> (List[T], List[T], List[T], List[T]):  # type: ignore
    definedcolumns_model = _load_data_from_json(config, "definedcolumns", DefinedColumn)
    metrics_model = _load_data_from_json(config, "metrics", Metric)
    attributegroups_model = _load_data_from_json(
        config, "attributegroups", AttributeGroup
    )

    tiles_model = [
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
        for metric in metrics_model
    ]

    return definedcolumns_model, metrics_model, attributegroups_model, tiles_model


def _load_model_from_nemo(config: Config, projectname: str) -> (List[T], List[T], List[T], List[T]):  # type: ignore
    definedcolumns_nemo = getDefinedColumns(
        config=config,
        projectname=projectname,
        filter="(Conservative)",
        filter_type=FilterType.STARTSWITH,
    )
    metrics_nemo = getMetrics(
        config=config,
        projectname=projectname,
        filter="(Conservative)",
        filter_type=FilterType.STARTSWITH,
    )
    tiles_nemo = getTiles(
        config=config,
        projectname=projectname,
        filter="(Conservative)",
        filter_type=FilterType.STARTSWITH,
    )
    attributegroups_nemo = getAttributeGroups(
        config=config,
        projectname=projectname,
        filter="(Conservative)",
        filter_type=FilterType.STARTSWITH,
    )
    return definedcolumns_nemo, metrics_nemo, tiles_nemo, attributegroups_nemo


def _load_data_from_json(config: Config, file: str, cls: Type[T]) -> List[T]:
    path = Path(config.get_metadata()) / f"{file}.json"
    with open(path, "r", encoding="utf-8") as f:
        data = json.load(f)

    return [cls(**item) for item in data]


def _reconcile_model_and_nemo(
    config: Config,
    projectname: str,
    definedcolumns_model: List[T],
    metrics_model: List[T],
    attributegroups_model: List[T],
    tiles_model: List[T],
    definedcolumns_nemo: List[T],
    metrics_nemo: List[T],
    tiles_nemo: List[T],
    attributegroups_nemo: List[T],
) -> bool:
    def find_deletions(model_list: List[T], nemo_list: List[T]) -> List[T]:
        model_keys = {getattr(obj, "internalName") for obj in model_list}
        return [
            obj for obj in nemo_list if getattr(obj, "internalName") not in model_keys
        ]

    def find_updates(model_list: List[T], nemo_list: List[T]) -> List[T]:
        updates = []
        nemo_dict = {getattr(obj, "internalName"): obj for obj in nemo_list}
        for model_obj in model_list:
            key = getattr(model_obj, "internalName")
            if key in nemo_dict:
                nemo_obj = nemo_dict[key]
                if is_dataclass(model_obj) and is_dataclass(nemo_obj):
                    differences = {
                        attr.name: (
                            getattr(model_obj, attr.name),
                            getattr(nemo_obj, attr.name),
                        )
                        for attr in fields(model_obj)
                        if attr.name
                        not in ["id", "tenant", "projectId", "tileSourceID"]
                        and getattr(model_obj, attr.name)
                        != getattr(nemo_obj, attr.name)
                    }
                    if differences:
                        logging.info(f"difference found {key}: {differences}")
                        updates.append(model_obj)
        return updates

    def find_new_objects(model_list: List[T], nemo_list: List[T]) -> List[T]:
        nemo_keys = {getattr(obj, "internalName") for obj in nemo_list}
        print(nemo_keys)
        return [
            obj for obj in model_list if getattr(obj, "internalName") not in nemo_keys
        ]

    deletions: Dict[str, List[T]] = {}
    updates: Dict[str, List[T]] = {}
    creates: Dict[str, List[T]] = {}

    for key, model_list, nemo_list in [
        ("definedcolumns", definedcolumns_model, definedcolumns_nemo),
        ("metrics", metrics_model, metrics_nemo),
        ("tiles", tiles_model, tiles_nemo),
        ("attributegroups", attributegroups_model, attributegroups_nemo),
    ]:
        deletions[key] = find_deletions(model_list, nemo_list)
        updates[key] = find_updates(model_list, nemo_list)
        creates[key] = find_new_objects(model_list, nemo_list)

    # Start with deletions
    for key in ["tiles", "metrics", "definedcolumns", "attributegroups"]:
        if deletions[key]:
            objects_to_delete = [data_nemo.id for data_nemo in deletions[key]]
            if key == "definedcolumns":
                deleteDefinedColumns(config=config, defined_columns=objects_to_delete)
            elif key == "metrics":
                deleteMetrics(config=config, metrics=objects_to_delete)
            elif key == "tiles":
                deleteTiles(config=config, tiles=objects_to_delete)
            elif key == "attributegroups":
                deleteAttributeGroups(config=config, attribute_groups=objects_to_delete)

    # Now do updates and creates in a dedicated order
    for key in ["attributegroups", "definedcolumns", "metrics", "tiles"]:
        if updates[key] or creates[key]:
            allchanges = updates[key] + creates[key]
            if key == "definedcolumns":
                createDefinedColumns(
                    config=config, projectname=projectname, defined_columns=allchanges
                )
            elif key == "metrics":
                createMetrics(
                    config=config, projectname=projectname, metrics=allchanges
                )
            elif key == "tiles":
                createTiles(config=config, projectname=projectname, tiles=allchanges)
            elif key == "attributegroups":
                createAttributGroups(
                    config=config, projectname=projectname, attribute_groups=allchanges
                )

    for key in ["attributegroups", "definedcolumns", "metrics", "tiles"]:
        if creates[key]:
            return True
    return False


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
        element.projectId = ""
        element.tileSourceID = ""
    return data


def _extract_fields(formulas_dict):
    field_pattern = re.compile(r"\b[a-zA-Z_][a-zA-Z0-9_]*\b")

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
    focusMoveAttributeBefore(
        config=config,
        projectname=projectname,
        sourceDisplayName="(Conservative) Global",
    )

    # move fields that belong to metrics and defined columns into according groups

    fields = {}
    for defined_column in defined_columns:
        key = defined_column.parentAttributeGroupInternalName
        if key not in fields:
            fields[key] = []
        fields[key].append(defined_column.formula)

    fields_dict = _extract_fields(fields)
    for key, fields in fields_dict.items():
        logging.info(f"group {key}")
        for field in fields:
            logging.info(f"move object {field}")
            focusMoveAttributeBefore(
                config=config,
                projectname=projectname,
                sourceInternalName=field,
                groupInternalName=key,
            )
