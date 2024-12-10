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

        # # load mapping file (if exists)

        # mappingdf = loadMappingFile(
        #     projectName=projectName, folderForMappingFiles=folderForMappingFiles
        # )

        # merge with data from sources
        loadMappingSourceData(
            config=config,
            projectName=projectName,
            field=field,
            additionalFields=additionalFields,
        )

        # add target values
        # df = addAlreadyMappedTargetValues(
        #     config=config,
        #     projectName=projectName,
        #     field=field,
        #     additionalFields=additionalFields,
        #     df=df,
        # )


#                 df = LoadReport(
#                     config=config, projectname=project, report_name=displayname
#                 )

#                 unique_values.extend(df["SOURCEVALUE"].tolist())

#         mappingdf = pd.DataFrame(unique_values, columns=["sourcevalue"])
#         mappingdf["targetvalue"] = ""

#         # Write to a temporary file and upload
#         with tempfile.TemporaryDirectory() as temp_dir:
#             temp_file_path = os.path.join(temp_dir, "tempfile.csv")

#             mappingdf.to_csv(
#                 temp_file_path,
#                 index=False,
#                 sep=";",
#                 na_rep="",
#             )
#             logging.info(
#                 f"dummy file {temp_file_path} written for project '{projectName}'. Uploading data to NEMO now..."
#             )

#             ReUploadFile(
#                 config=config,
#                 projectname=projectName,
#                 filename=temp_file_path,
#                 update_project_settings=False,
#             )
#             logging.info(f"upload to project {projectName} completed")

#         # create a report to load all data from this table
#         sqlquery = f"""SELECT
#     sourcevalue
#     , targetvalue
# FROM
#     $schema.$table
# WHERE
#     targetvalue is not NULL
# """
#         displayname = "(MAPPING) Non-NULL target values"
#         internalname = internal_name(displayname)
#         createOrUpdateReport(
#             config=config,
#             projectname=projectName,
#             displayName=displayname,
#             internalName=internalname,
#             querySyntax=sqlquery,
#             description="load all records that have a non-NULL target value",
#         )


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
    """
    Creates a mapping of imported columns between source and target systems for a given project configuration.

    This function takes a primary field and a list of additional fields, generates display names for both
    source and target columns, and uses these names to create imported columns in the system. The resulting
    mapping is returned as a dictionary with keys "source" and "target", each containing a list of their
    respective column display names.

    Args:
        config (Config): The configuration object used for creating the imported columns.
        projectName (str): The name of the project for which the columns are being created.
        field (str): The primary field to map between source and target.
        additionalFields (list[str]): A list of additional fields to include in the mapping.

    Returns:
        dict[str, str]: A dictionary containing the display names of the source and target columns.

    Example:
        config = Config()
        projectName = "ProjectX"
        field = "CustomerID"
        additionalFields = ["OrderID", "ProductID"]

        result = createMappingImportedColumnns(config, projectName, field, additionalFields)
        print(result)
        # Output:
        # {
        #     "source": ["source CustomerID", "source OrderID", "source ProductID"],
        #     "target": ["target CustomerID", "target OrderID", "target ProductID"]
        # }
    """

    fields = []
    fields.append(display_name(f"source {field}"))
    fields.append(display_name(f"target {field}"))

    if additionalFields:
        for additionalField in additionalFields:
            fields.append(display_name(f"source {additionalField}"))
            fields.append(display_name(f"target {additionalField}"))

    for fld in fields:
        createImportedColumn(
            config=config,
            projectname=projectName,
            displayName=fld,
            internalName=internal_name(fld),
            importName=import_name(fld),
            dataType="string",
            description="",
        )


def mappingFileName(
    projectName: str,
    folderForMappingFiles: str,
) -> str:
    return os.path.join(folderForMappingFiles, f"{projectName}.xlsx")


def loadMappingFile(
    projectName: str,
    folderForMappingFiles: str,
) -> pd.DataFrame:
    filename = mappingFileName(
        projectName=projectName, folderForMappingFiles=folderForMappingFiles
    )
    if os.path.exists(filename):
        mappeddf = pd.read_excel(filename)
        return mappeddf

    return pd.DataFrame()


def loadMappingSourceData(
    config: Config,
    projectName: str,
    field: str,
    additionalFields: list[str],
) -> None:

    # check for fields in other projects
    fieldlist = {}
    projectList = getProjectList(config=config)["displayName"].to_list()
    for project in projectList:
        if project in ["Business Processes", "Master Data"] or project.startswith(
            "Mapping "
        ):
            continue

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

            fieldlist[project] = {field: internal_name(result)}

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

                    fieldlist[project].update({additionalField: internal_name(result)})
                    
    print(fieldlist)

#             # we have found all relevant fields in project. Now we are going to collect data

#             sqlfields = [
#                 f'{value} AS "source {key}"' for key, value in fieldList.items()
#             ]
#             sqlrestrictions = [
#                 f"{value} IS NOT NULL" for key, value in fieldList.items()
#             ]
#             sqlquery = f"""SELECT DISTINCT
# \t{"\n\t, ".join(sqlfields)}
# FROM
# \t$schema.$table
# WHERE
# \t{"\n\tAND ".join(sqlrestrictions)}
# """

#             displaynameReport = display_name(
#                 f"(MAPPING) Distinct Values for mapping of {field}"
#             )
#             internalnameReport = internal_name(displaynameReport)
#             createOrUpdateReport(
#                 config=config,
#                 projectname=project,
#                 displayName=displaynameReport,
#                 internalName=internalnameReport,
#                 querySyntax=sqlquery,
#                 description="support mapping of field {field}",
#             )

#             df = LoadReport(
#                 config=config, projectname=project, report_name=displaynameReport
#             )

#             sourcevalues = pd.concat([sourcevalues, df])

    # data collected - dump it
    # if folderForMappingFiles:
    #     filename = mappingFileName(
    #         projectName=projectName, folderForMappingFiles=folderForMappingFiles
    #     )
    #     sourcevalues.to_excel(filename, index=False)

    # return sourcevalues


def addAlreadyMappedTargetValues(
    config: Config,
    projectName: str,
    field: str,
    additionalFields: list[str],
    df: pd.DataFrame,
) -> pd.DataFrame:

    sqlquery = """SELECT
    *
FROM
    $schema.$table"""

    displaynameReport = display_name("(MAPPING) all data")
    internalnameReport = internal_name(displaynameReport)
    createOrUpdateReport(
        config=config,
        projectname=projectName,
        displayName=displaynameReport,
        internalName=internalnameReport,
        querySyntax=sqlquery,
        description="support mapping of field {field}",
    )

    try:
        mappedvaluesdf = LoadReport(
            config=config, projectname=projectName, report_name=displaynameReport
        )
    except ValueError as e:
        if str(e) == 'Request failed. Status: 400, error: "Database Query failed"':
            logging.info(
                f"project {projectName} seems to be empty. Initial load of records started"
            )

    print(mappedvaluesdf)
