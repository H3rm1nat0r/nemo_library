import csv
import logging
import os
import re
from nemo_library.features.config import Config
from nemo_library.features.fileingestion import ReUploadFile
from nemo_library.features.projects import (
    LoadReport,
    createImportedColumn,
    createOrUpdateReport,
    createProject,
    getImportedColumns,
    getProjectList,
)
from nemo_library.utils.migmanutils import getMappingFilePath, initializeFolderStructure
from nemo_library.utils.utils import display_name, import_name, internal_name

__all__ = ["updateMappingForMigman"]


def updateMappingForMigman(
    config: Config,
    mapping_fields: list[str],
    local_project_path: str,
    additionalfields: dict[str, str] = None,
):

    # if not already existing, create folder structure
    initializeFolderStructure(local_project_path)

    projectList = getProjectList(config=config)["displayName"].to_list()

    # create mapping projects and upload data
    updateMappings(
        config=config,
        mapping_fields=mapping_fields,
        local_project_path=local_project_path,
        additionalfields=additionalfields,
        projectList=projectList,
    )

    # apply mappings to related projects
    # applyMapping(
    #     config=config,
    #     projectList=projectList,
    # )


def createMappingProject(
    config: Config,
    projectname: str,
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

    logging.info(f"'{projectname}' not found, create it")
    createProject(
        config=config,
        projectname=projectname,
        description=f"Mapping for field '{field}'",
    )


def createMappingImportedColumnns(
    config: Config,
    projectname: str,
    field: str,
    additionalFields: list[str],
) -> dict[str, str]:

    fields = []
    fields.append(display_name(f"source {field}"))
    fields.append(display_name(f"target {field}"))

    if additionalFields:
        for additionalField in additionalFields:
            fields.append(display_name(f"source {additionalField}"))

    importedColumnsList = getImportedColumns(config=config, projectname=projectname)
    importedColumnsList = (
        importedColumnsList["displayName"].to_list()
        if not importedColumnsList.empty
        else []
    )

    for fld in fields:
        if not fld in importedColumnsList:
            createImportedColumn(
                config=config,
                projectname=projectname,
                displayName=fld,
                internalName=internal_name(fld),
                importName=import_name(fld),
                dataType="string",
                description="",
            )


def loadData(
    config: Config,
    projectname: str,
    field: str,
    additionalFields: list[str],
    local_project_path: str,
    newProject: bool,
    relatedfields: dict[str, dict[str, str]],
) -> None:

    # project is new and table does not exist. We have to upload dummy-data to enforce creation of database table

    # "real" data given? let's take this instead of the dummy file
    file_path = getMappingFilePath(projectname, local_project_path)
    logging.info(f"checking for data file {file_path}")

    if os.path.exists(file_path):
        ReUploadFile(
            config=config,
            projectname=projectname,
            filename=file_path,
            update_project_settings=False,
        )
        logging.info(f"upload to project {projectname} completed")
    else:
        logging.info(f"file {file_path} not found")

        if newProject:
            logging.info(
                f"file {file_path} for project {file_path} not found. Uploading source data"
            )

            queryforreport = sqlQueryInMappingTable(
                config=config,
                projectname=projectname,
                field=field,
                additionalFields=additionalFields,
                local_project_path=local_project_path,
                newProject=newProject,
                relatedfields=relatedfields,
            )
            createOrUpdateReport(
                config=config,
                projectname=projectname,
                displayName="source mapping",
                querySyntax=queryforreport,
                description="load all source values and map them",
            )
            df = LoadReport(
                config=config, projectname=projectname, report_name="source mapping"
            )

            # export file as a template for mappings
            df.to_csv(
                file_path,
                index=False,
                sep=";",
                na_rep="",
                quotechar='"',
                quoting=csv.QUOTE_ALL,
                lineterminator="\n",
                encoding="UTF-8",
            )
            logging.info(f"mapping file '{file_path}' generated with source contents")

            # and upload it immediately
            ReUploadFile(
                config=config,
                projectname=projectname,
                filename=file_path,
                update_project_settings=False,
            )
            logging.info(f"upload to project {projectname} completed")


def getRelatedFields(
    config: Config,
    field: str,
    additionalFields: list[str],
) -> list[str]:
    ctefields = {}
    projectList = getProjectList(config=config)["displayName"].to_list()
    for project in projectList:
        fields = collectDataFieldsForProject(
            config=config,
            project=project,
            field=field,
            additionalFields=additionalFields,
        )
        if fields:
            ctefields[project] = fields

    return ctefields


def collectData(
    config: Config,
    projectname: str,
    field: str,
    additionalFields: list[str],
    local_project_path: str,
    newProject: bool,
    relatedfields: list[str],
):

    queryforreport = sqlQueryInMappingTable(
        config=config,
        projectname=projectname,
        field=field,
        additionalFields=additionalFields,
        local_project_path=local_project_path,
        newProject=newProject,
        relatedfields=relatedfields,
    )
    createOrUpdateReport(
        config=config,
        projectname=projectname,
        displayName="source mapping",
        querySyntax=queryforreport,
        description="load all source values and map them",
    )

    df = LoadReport(
        config=config, projectname=projectname, report_name="source mapping"
    )

    file_path = getMappingFilePath(projectname, local_project_path)

    # export file as a template for mappings
    df.to_csv(
        file_path,
        index=False,
        sep=";",
        na_rep="",
        quotechar='"',
        quoting=csv.QUOTE_ALL,
        lineterminator="\n",
        encoding="UTF-8",
    )

    # and upload it immediately
    ReUploadFile(
        config=config,
        projectname=projectname,
        filename=file_path,
        update_project_settings=False,
    )
    logging.info(f"upload to project {projectname} completed")


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


def sqlQueryInMappingTable(
    config: Config,
    projectname: str,
    field: str,
    additionalFields: list[str],
    local_project_path: str,
    newProject: bool,
    relatedfields: list[str],
) -> str:

    # setup CTEs to load data from source projects
    ctes = []
    for ctekey, ctevalue in relatedfields.items():

        subselect = [
            f'{fldvalue} AS "{fldkey}"' for fldkey, fldvalue in ctevalue.items()
        ]

        ctes.append(
            f"""CTE_{internal_name(ctekey)} AS (
    SELECT DISTINCT
        {"\n\t,".join(subselect)}
    FROM 
        $schema.PROJECT_{internal_name(ctekey)}
)"""
        )

    # create a union for all CTEs
    globfrags = []
    for ctekey, ctevalue in relatedfields.items():

        subselect = [f'"{fldkey}"' for fldkey, fldvalue in ctevalue.items()]

        globfrags.append(
            f"""\tSELECT
    {"\n\t,".join(subselect)}
    FROM 
        CTE_{internal_name(ctekey)}"""
        )
    ctes.append(
        f"""CTE_ALL AS (
{"\nUNION ALL\n".join(globfrags)})"""
    )

    # and finally one for distinct value and join it with potentially existing data

    # we need to get a list of the fields itself. We assume they are the same in every CTE
    first_key = next(iter(relatedfields))
    first_value = relatedfields[first_key]
    subselect = [f'"{fldkey}"' for fldkey, fldvalue in first_value.items()]

    queryctes = f"""WITH {"\n,".join(ctes)}
,CTE_ALL_DISTINCT AS (
    SELECT DISTINCT
        {'\n\t,'.join(subselect)}
    FROM 
        CTE_ALL
)"""

    subselectsrc = [
        f'cte."{fldkey}" as "source {fldkey}"'
        for fldkey, fldvalue in first_value.items()
    ]
    subselectjoin = [
        f'mapping.SOURCE_{internal_name(fldkey)} = cte."{fldkey}"'
        for fldkey, fldvalue in first_value.items()
    ]
    finalquery = f"""{queryctes}
SELECT
    {'\n\t,'.join(subselectsrc)}
    , {"NULL" if newProject else f"mapping.TARGET_{internal_name(field)}"} AS "target {field}"
FROM
    CTE_ALL_DISTINCT cte"""

    if not newProject:
        finalquery += f"""
LEFT JOIN
    $schema.$table mapping
ON  
    {'\n\t AND '.join(subselectjoin)}"""

    return finalquery


def updateMappings(
    config: Config,
    mapping_fields: list[str],
    local_project_path: str,
    additionalfields: dict[str, str],
    projectList: list[str],
) -> None:

    # iterate every given field and check whether to create the appropriate project and upload data
    for field in mapping_fields:

        additionalFields = (
            additionalfields[field] if field in additionalfields else None
        )

        # if project does not exist, create it
        projectame = f"Mapping {field}"
        newProject = False
        if not projectame in projectList:
            newProject = True
            createMappingProject(config=config, field=field, projectname=projectame)

            # update list of fields
            createMappingImportedColumnns(
                config=config,
                projectname=projectame,
                field=field,
                additionalFields=additionalFields,
            )
        else:
            logging.info(f"project {projectame} found.")

        # if there is data provided (as a CSV-file), we upload this now.
        # if there is no data AND the project just have been created, we upload source data and create a template file
        relatedfields = getRelatedFields(
            config=config, field=field, additionalFields=additionalFields
        )

        loadData(
            config=config,
            projectname=projectame,
            field=field,
            additionalFields=additionalFields,
            local_project_path=local_project_path,
            newProject=newProject,
            relatedfields=relatedfields,
        )

        # collect data
        collectData(
            config=config,
            projectname=projectame,
            field=field,
            additionalFields=additionalFields,
            local_project_path=local_project_path,
            newProject=False,  # project is not new any longer, we can access it's data (maybe uploaded in former steps)
            relatedfields=relatedfields,
        )


def applyMapping(
    config: Config,
    projectList: list[str],
) -> None:

    # It might happen, that the user does not run our library will all mapping fields given that exists.
    # In any case, we have to check for ALL mappings defined to create the right reports. So here we ignore
    # the mapping fields that have been given - we collect all the mappings by ourselves
    mappingprojects = [
        x[len("Mapping ") :] for x in projectList if x.startswith("Mapping ")
    ]
    mappingfieldsall = {}
    for project in mappingprojects:
        importedcolumns = getImportedColumns(
            config=config, projectname=f"Mapping {project}"
        )["displayName"].to_list()
        mappingfieldsprj = [
            x[len("source ") :] for x in importedcolumns if x.startswith("source ")
        ]
        mappingfieldsall[project] = mappingfieldsprj

    # scan all the other projects now whether they contain these fields or not
    dataprojects = [
        x
        for x in projectList
        if not x.startswith("Mapping")
        and not x in ["Business Processes", "Master Data"]
    ]

    dataprojects = ["Customers"]
    for project in dataprojects:
        importedcolumns = getImportedColumns(config=config, projectname=project)[
            "displayName"
        ].to_list()

        columnstobemapped = {}
        # check for columns in this project that are mapped
        for key, values in mappingfieldsall.items():

            # Check if ALL values in 'values' match
            all_match = all(
                any(
                    re.match(rf"^{re.escape(val)} \(\d{{3}}\)$", entry)
                    for entry in importedcolumns
                )
                for val in values
            )

            if all_match:  # Only add if ALL values match
                columnstobemapped[key] = values

        # if there are mapped columns in this project, we are going to add mapped fields for that project now
        if columnstobemapped:
            sqlQuery = sqlQueryInDataTable(
                config=config,
                project=project,
                columnstobemapped=columnstobemapped,
            )
            print(sqlQuery)
            return


def sqlQueryInDataTable(
    config: Config,
    project: str,
    columnstobemapped: dict[str, list[str]],
) -> str:

    print(columnstobemapped)
    print("-" * 80)
    importedcolumnsdf = getImportedColumns(config=config, projectname=project)
    datafrags = [
        f'data.{row["internalName"]} AS "{row["displayName"]}"'
        for idx, row in importedcolumnsdf.iterrows()
    ]
    datafrags += [
        f'Mapping_{internal_name(item)}.TARGET_{internal_name(item)} AS "Mapped_{item}"'
        for sublist in columnstobemapped.values()
        for item in sublist
    ]
    joins = []
    for key, value in columnstobemapped.items():
        selects = [f"{field}" for field in value]
        joins.append(
            f"""LEFT JOIN
$schema.PROJECT_MAPPING_{internal_name(key)} MAPPING_{internal_name(key)}
    ON {"\n\tAND ".join(selects)}"""
        )

    query = f"""
SELECT
    {"\n\t,".join(datafrags)}c
FROM
    $schema.$table data
{"\n".join(joins)}
"""
    return query
