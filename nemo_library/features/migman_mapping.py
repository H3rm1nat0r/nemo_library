import logging
import os
import re
import pandas as pd
from nemo_library.features.config import Config
from nemo_library.features.projects import (
    LoadReport,
    createImportedColumn,
    createOrUpdateReport,
    createProject,
    getImportedColumns,
    getProjectList,
)
from nemo_library.utils.utils import display_name, import_name, internal_name

__all__ = ["updateMappingForMigman"]


def updateMappingForMigman(
    config: Config,
    fields: list[str],
    folderForMappingFiles: str,
    additionalfields: dict[str, str] = None,
):

    for field in fields:

        additionalFields = (
            additionalfields[field] if field in additionalfields else None
        )

        # update project
        projectName = createMappingProject(
            config=config,
            field=field,
        )

        # update list of fields
        createMappingImportedColumnns(
            config=config,
            projectName=projectName,
            field=field,
            additionalFields=additionalFields,
        )


def createMappingProject(
    config: Config,
    field: str,
) -> str:
    """
    Creates a mapping project for a specific field if it does not already exist.

    This function checks if a project with the name "Mapping {field}" exists in the system.
    If it does not exist, it creates the project with a description. The function then
    returns the name of the project.

    Args:
        config (Config): Configuration object containing authentication and system settings.
        field (str): The name of the field for which the mapping project is to be created.

    Returns:
        str: The name of the mapping project.
    """

    projectList = getProjectList(config=config)["displayName"].to_list()
    projectName = f"Mapping {field}"

    if not projectName in projectList:
        logging.info(f"'{projectName}' not found, create it")
        createProject(
            config=config,
            projectname=projectName,
            description=f"Mapping for field '{field}'",
        )

    return projectName


def createMappingImportedColumnns(
    config: Config,
    projectName: str,
    field: str,
    additionalFields: list[str],
) -> dict[str, str]:

    fields = []
    fields.append(display_name(f"source {field}"))
    fields.append(display_name(f"target {field}"))

    if additionalFields:
        for additionalField in additionalFields:
            fields.append(display_name(f"source {additionalField}"))
            fields.append(display_name(f"target {additionalField}"))

    importedColumnsList = getImportedColumns(config=config, projectname=projectName)
    importedColumnsList = (
        importedColumnsList["displayName"].to_list()
        if not importedColumnsList.empty
        else []
    )

    for fld in fields:
        if not fld in importedColumnsList:
            createImportedColumn(
                config=config,
                projectname=projectName,
                displayName=fld,
                internalName=internal_name(fld),
                importName=import_name(fld),
                dataType="string",
                description="",
            )
