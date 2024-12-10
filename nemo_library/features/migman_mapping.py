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

        # collect data
        collectData(
            config=config,
            projectName=projectName,
            field=field,
            additionalFields=additionalFields,
            folderForMappingFiles=folderForMappingFiles,
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


def collectData(
    config: Config,
    projectName: str,
    field: str,
    additionalFields: list[str],
    folderForMappingFiles: None,
):

    projectList = getProjectList(config=config)["displayName"].to_list()
    ctefields = {}
    for project in projectList:
        fields = collectDataFieldsForProject(
            config=config,
            project=project,
            field=field,
            additionalFields=additionalFields,
        )
        if fields:
            ctefields[project] = fields

    if len(ctefields) > 0:
        queryforreport = sqlQuery(ctefields)

def collectDataFieldsForProject(
    config: Config,
    project: str,
    field: str,
    additionalFields: list[str],
) -> list[str]:

    fieldList = None
    if project in ["Business Processes", "Master Data"] or project.startswith(
        "Mapping "
    ):
        return None

    imported_columns = getImportedColumns(config=config, projectname=project)[
        "displayName"
    ].to_list()
    result = next(
        (
            entry
            for entry in imported_columns
            if re.match(rf"^{re.escape(field)} \(\d{{3}}\)$", entry)
        ),
        None,
    )
    if result:
        logging.info(f"Found field '{result}' in project '{project}'")

        fieldList = {field: internal_name(result)}

        # check for additional fields now
        if additionalFields:
            for additionalField in additionalFields:
                result = next(
                    (
                        entry
                        for entry in imported_columns
                        if re.match(
                            rf"^{re.escape(additionalField)} \(\d{{3}}\)$", entry
                        )
                    ),
                    None,
                )
                if not result:
                    logging.info(
                        f"Field '{additionalField}' not found in project '{project}'. Skip this project"
                    )

                fieldList[additionalField] = internal_name(result)

    # we have found all relevant fields in project. Now we are going to collect data
    return fieldList

def sqlQuery(ctefields : dict[str,str]) -> str:
    
    # setup CTEs to load data from source projects 
    ctes = []
    for ctekey, ctevalue in ctefields.items():
        
        subselect = [f'{fldvalue} AS "source {fldkey}"' for fldkey, fldvalue in ctevalue.items()]
        
        ctes.append(f"""CTE_{internal_name(ctekey)} AS (
    SELECT DISTINCT
        {"\n\t,".join(subselect)}
    FROM 
        PROJECT_{internal_name(ctekey)}
)""")

    # create a union for all CTEs
    globfrags = []
    for ctekey, ctevalue in ctefields.items():
        
        subselect = [f'"source {fldkey}"' for fldkey, fldvalue in ctevalue.items()]
        
        globfrags.append(f"""\tSELECT
    {"\n\t,".join(subselect)}
    FROM 
        CTE_{internal_name(ctekey)}""")
    ctes.append(f"""CTE_ALL AS (
{"\nUNION ALL\n".join(globfrags)})""")
                
    # and finally one for distinct value and join it with potentially existing data
    
    # we need to get a list of the fields itself. We assume they are the same in every CTE
    first_key = next(iter(ctefields))  
    first_value = ctefields[first_key]  
    subselect = [f'"source {fldkey}"' for fldkey, fldvalue in first_value.items()]
    
    query = f"""WITH {"\n,".join(ctes)}
,CTE_ALL_DISTINCT AS (
    SELECT DISTINCT
        {'\n\t,'.join(subselect)}
    FROM 
        CTE_ALL
)
SELECT  
{'\n\t,'.join(subselect)}
FROM
    CTE_ALL_DISTINCT
"""
    print(query)