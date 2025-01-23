import logging
import os
from nemo_library.features.config import Config
from nemo_library.features.fileingestion import ReUploadFile
from nemo_library.features.focus import focusCoupleAttributes
from nemo_library.features.projects import (
    LoadReport,
    createImportedColumns,
    createOrUpdateReport,
    createProject,
    getImportedColumns,
    getProjectList,
)
from nemo_library.utils.migmanutils import (
    get_additional_fields,
    get_local_project_directory,
    get_mapping_fields,
    get_synonym_fields,
    getMappingFilePath,
    getRelatedFields,
)
from nemo_library.utils.utils import (
    get_display_name,
    get_import_name,
    get_internal_name,
)

__all__ = ["MigManLoadMapping"]


def MigManLoadMapping(config: Config):

    # get configuration
    local_project_directory = get_local_project_directory()
    mapping_fields = get_mapping_fields()
    additional_fields = get_additional_fields()
    synonym_fields = get_synonym_fields()

    # get all projects
    projectList = getProjectList(config=config)["displayName"].to_list()

    # iterate every given field and check whether to create the appropriate project and upload data
    for field in mapping_fields:

        # if project does not exist, create it
        projectname = f"Mapping {field}"
        newProject = False
        if not projectname in projectList:
            newProject = True
            createMappingProject(config=config, field=field, projectname=projectname)

            # update list of fields
            createMappingImportedColumnns(
                config=config,
                projectname=projectname,
                field=field,
                additional_fields=additional_fields,
            )
        else:
            logging.info(f"project {projectname} found.")

        # if there is data provided (as a CSV-file), we upload this now.
        # if there is no data AND the project just have been created, we upload source data and create a template file
        relatedfields = getRelatedFields(
            config=config,
            additionalfields=additional_fields,
            field=field,
            synonym_fields=(
                synonym_fields[field]
                if synonym_fields and field in synonym_fields
                else None
            ),
        )

        loadData(
            config=config,
            projectname=projectname,
            field=field,
            newProject=newProject,
            relatedfields=relatedfields,
            local_project_directory=local_project_directory,
        )

        # # couple attributes in focus
        coupleAttributes(config=config, projectname=projectname)

        # collect data
        collectData(
            config=config,
            projectname=projectname,
            field=field,
            newProject=False,  # project is not new any longer, we can access it's data (maybe uploaded in former steps)
            relatedfields=relatedfields,
            local_project_directory=local_project_directory,
        )


def coupleAttributes(
    config: Config,
    projectname: str,
) -> None:

    imported_columns = getImportedColumns(
        config=config,
        projectname=projectname,
    )["displayName"].to_list()
    focusCoupleAttributes(
        config=config,
        projectname=projectname,
        attributenames=imported_columns,
        previous_attribute=None,
    )


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
    additional_fields: dict[str, list[str]],
) -> dict[str, str]:

    fields = []

    additionalfields_filtered = (
        additional_fields[field]
        if additional_fields and field in additional_fields
        else None
    )
    if additionalfields_filtered:
        for additionalField in additionalfields_filtered:
            fields.append(get_display_name(f"source {additionalField}"))
    fields.append(get_display_name(f"source {field}"))
    fields.append(get_display_name(f"target {field}"))

    importedColumnsList = getImportedColumns(config=config, projectname=projectname)
    importedColumnsList = (
        importedColumnsList["displayName"].to_list()
        if not importedColumnsList.empty
        else []
    )

    new_columns = []
    for idx, fld in enumerate(fields):
        if not fld in importedColumnsList:
            new_columns.append(
                {
                    "displayName": fld,
                    "importName": get_import_name(fld),
                    "internalName": get_internal_name(fld),
                    "description": "",
                    "dataType": "string",
                    "focusOrder": f"{idx:03}",
                }
            )
    if new_columns:
        createImportedColumns(
            config=config,
            projectname=projectname,
            columns=new_columns,
        )


def loadData(
    config: Config,
    projectname: str,
    field: str,
    newProject: bool,
    relatedfields: dict[str, dict[str, str]],
    local_project_directory: str,
) -> None:

    # project is new and table does not exist. We have to upload dummy-data to enforce creation of database table

    # "real" data given? let's take this instead of the dummy file
    file_path = getMappingFilePath(projectname, local_project_directory)
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
                field=field,
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
                config=config,
                projectname=projectname,
                report_name="source mapping",
            )

            # export file as a template for mappings
            df.to_csv(
                file_path,
                index=False,
                sep=";",
                na_rep="",
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


def collectData(
    config: Config,
    projectname: str,
    field: str,
    newProject: bool,
    relatedfields: list[str],
    local_project_directory: str,
):

    queryforreport = sqlQueryInMappingTable(
        field=field,
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

    file_path = getMappingFilePath(projectname, local_project_directory)

    # export file as a template for mappings
    df.to_csv(
        file_path,
        index=False,
        sep=";",
        na_rep="",
    )

    # and upload it immediately
    ReUploadFile(
        config=config,
        projectname=projectname,
        filename=file_path,
        update_project_settings=False,
    )
    logging.info(f"upload to project {projectname} completed")


def sqlQueryInMappingTable(
    field: str,
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
            f"""CTE_{get_internal_name(ctekey)} AS (
    SELECT DISTINCT
        {"\n\t,".join(subselect)}
    FROM 
        $schema.PROJECT_{get_internal_name(ctekey)}
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
        CTE_{get_internal_name(ctekey)}"""
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
        f'mapping.SOURCE_{get_internal_name(fldkey)} = cte."{fldkey}"'
        for fldkey, fldvalue in first_value.items()
    ]
    finalquery = f"""{queryctes}
SELECT
    {'\n\t,'.join(subselectsrc)}
    , {"NULL" if newProject else f"mapping.TARGET_{get_internal_name(field)}"} AS "target {field}"
FROM
    CTE_ALL_DISTINCT cte"""

    if not newProject:
        finalquery += f"""
LEFT JOIN
    $schema.$table mapping
ON  
    {'\n\t AND '.join(subselectjoin)}"""

    return finalquery
