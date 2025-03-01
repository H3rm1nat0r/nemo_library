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
    createApplications,
    createAttributeGroups,
    createDefinedColumns,
    createMetrics,
    createPages,
    createTiles,
    deleteApplications,
    deleteAttributeGroups,
    deleteDefinedColumns,
    deleteMetrics,
    deletePages,
    deleteTiles,
    getApplications,
    getAttributeGroups,
    getDefinedColumns,
    getImportedColumns,
    getMetrics,
    getPages,
    getTiles,
)
from nemo_library.model.application import Application
from nemo_library.model.attribute_group import AttributeGroup
from nemo_library.model.defined_column import DefinedColumn
from nemo_library.model.metric import Metric
from nemo_library.model.pages import Page
from nemo_library.model.tile import Tile
from nemo_library.utils.config import Config

__all__ = ["MetaDataLoad", "MetaDataCreate"]

T = TypeVar("T")


def MetaDataLoad(
    config: Config,
    projectname: str,
) -> None:

    functions = {
        "definedcolumns": getDefinedColumns,
        "metrics": getMetrics,
        "attributegroups": getAttributeGroups,
        "pages": getPages,
        "applications": getApplications,
    }


    for name, func in functions.items():
        data = func(
            config=config,
            projectname=projectname,
            filter="(Conservative)",
            filter_type=FilterType.STARTSWITH,
        )

        if name == "attributegroups":
            hierarchy, _ = _attribute_groups_build_hierarchy(data)
            data = attribute_groups_sort_hierarchy(hierarchy, root_key=None)
                    
        _export_data_to_json(config, name, data)

def _attribute_groups_build_hierarchy(attribute_groups):
    hierarchy = defaultdict(list)
    group_dict = {group.internalName: group for group in attribute_groups}
    
    for group in attribute_groups:
        parent_name = group.parentAttributeGroupInternalName
        hierarchy[parent_name].append(group)
    
    return hierarchy, group_dict

def attribute_groups_sort_hierarchy(hierarchy, root_key=None):
    sorted_list = []
    
    def add_children(parent):
        for child in sorted(hierarchy.get(parent, []), key=lambda x: x.displayName):
            sorted_list.append(child)
            add_children(child.internalName)
    
    add_children(root_key)
    return sorted_list


def MetaDataCreate(
    config: Config,
    projectname: str,
) -> None:

    # load data from model and nemo
    (
        definedcolumns_model,
        metrics_model,
        attributegroups_model,
        tiles_model,
        pages_model,
        applications_model,
    ) = _load_model_from_json(config=config)

    (
        definedcolumns_nemo,
        metrics_nemo,
        tiles_nemo,
        attributegroups_nemo,
        pages_nemo,
        applications_nemo,
    ) = _load_model_from_nemo(config=config, projectname=projectname)

    # reconcile data
    new_objects_found = _reconcile_model_and_nemo(
        config=config,
        projectname=projectname,
        definedcolumns_model=definedcolumns_model,
        metrics_model=metrics_model,
        attributegroups_model=attributegroups_model,
        tiles_model=tiles_model,
        pages_model=pages_model,
        applications_model=applications_model,
        definedcolumns_nemo=definedcolumns_nemo,
        metrics_nemo=metrics_nemo,
        tiles_nemo=tiles_nemo,
        attributegroups_nemo=attributegroups_nemo,
        pages_nemo=pages_nemo,
        applications_nemo=applications_nemo,
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


def _load_model_from_json(config: Config) -> (List[T], List[T], List[T], List[T], List[T], List[T]):  # type: ignore
    definedcolumns_model = _load_data_from_json(config, "definedcolumns", DefinedColumn)
    metrics_model = _load_data_from_json(config, "metrics", Metric)
    attributegroups_model = _load_data_from_json(
        config, "attributegroups", AttributeGroup
    )
    pages_model = _load_data_from_json(config, "pages", Page)
    applications_model = _load_data_from_json(config, "applications", Application)

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

    return (
        definedcolumns_model,
        metrics_model,
        attributegroups_model,
        tiles_model,
        pages_model,
        applications_model,
    )


def _fetch_data(func, **kwargs):
    return func(**kwargs)


def _load_model_from_nemo(config: Config, projectname: str) -> (List[T], List[T], List[T], List[T]):  # type: ignore
    functions = [
        getDefinedColumns,
        getMetrics,
        getTiles,
        getAttributeGroups,
        getPages,
        getApplications,
    ]
    data_nemo = {
        func.__name__: _fetch_data(
            func,
            config=config,
            projectname=projectname,
            filter="(Conservative)",
            filter_type=FilterType.STARTSWITH,
        )
        for func in functions
    }

    definedcolumns_nemo = data_nemo["getDefinedColumns"]
    metrics_nemo = data_nemo["getMetrics"]
    tiles_nemo = data_nemo["getTiles"]
    attributegroups_nemo = data_nemo["getAttributeGroups"]
    pages_nemo = data_nemo["getPages"]
    applications_nemo = data_nemo["getApplications"]

    return (
        definedcolumns_nemo,
        metrics_nemo,
        tiles_nemo,
        attributegroups_nemo,
        pages_nemo,
        applications_nemo,
    )


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
    pages_model: List[T],
    applications_model: List[T],
    definedcolumns_nemo: List[T],
    metrics_nemo: List[T],
    tiles_nemo: List[T],
    attributegroups_nemo: List[T],
    pages_nemo: List[T],
    applications_nemo: List[T],
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
        ("applications", applications_model, applications_nemo),
        ("pages", pages_model, pages_nemo),
    ]:
        deletions[key] = find_deletions(model_list, nemo_list)
        updates[key] = find_updates(model_list, nemo_list)
        creates[key] = find_new_objects(model_list, nemo_list)

    # Start with deletions
    delete_functions = {
        "applications": deleteApplications,
        "pages": deletePages,
        "tiles": deleteTiles,
        "metrics": deleteMetrics,
        "definedcolumns": deleteDefinedColumns,
        "attributegroups": deleteAttributeGroups,
    }

    for key, delete_function in delete_functions.items():
        if deletions[key]:
            objects_to_delete = [data_nemo.id for data_nemo in deletions[key]]
            delete_function(config=config, **{key: objects_to_delete})

    # Now do updates and creates in a dedicated order
    create_functions = {
        "attributegroups": createAttributeGroups,
        "definedcolumns": createDefinedColumns,
        "metrics": createMetrics,
        "tiles": createTiles,
        "pages": createPages,
        "applications": createApplications,
    }

    new_objects = False
    for key, create_function in create_functions.items():
        # create new objects first
        if creates[key]:
            create_function(config=config, projectname=projectname, **{key: creates[key]})
            new_objects = True
        # now the changes
        if updates[key]:
            create_function(config=config, projectname=projectname, **{key: updates[key]})

    return new_objects


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
            if isinstance(formula, str) and formula.strip():
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

    # move fields that belong to metrics and defined columns into according groups
    fields = {}
    for defined_column in defined_columns:
        key = defined_column.parentAttributeGroupInternalName
        if key not in fields:
            fields[key] = []
        fields[key].append(defined_column.formula)

    for metric in metrics:
        key = metric.parentAttributeGroupInternalName
        if key not in fields:
            fields[key] = []
        fields[key].append(metric.aggregateBy)            
        fields[key].append(metric.dateColumn)            
        fields[key].append(metric.groupByColumn)     
        for agg in metric.groupByAggregations:      
            fields[key].append(agg)      

    # extract fields from formulae
    fields_dict = _extract_fields(fields)

    # remove doublicates
    for key in fields:
        fields_dict[key] = list(set(fields_dict[key]))  
        
    # move attributes now
    fields_nemo = getImportedColumns(config=config,projectname=projectname)
    fields_nemo_internal_names = fields_nemo["internalName"].to_list()
    for key, fields in fields_dict.items():
        logging.info(f"group {key}")
        for field in fields:
            if field in fields_nemo_internal_names:
                logging.info(f"move object {field}")
                focusMoveAttributeBefore(
                    config=config,
                    projectname=projectname,
                    sourceInternalName=field,
                    groupInternalName=key,
                )
