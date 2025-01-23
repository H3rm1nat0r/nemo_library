from contextvars import ContextVar
import logging
import os
from nemo_library.features.config import Config
from nemo_library.features.projects import LoadReport
from nemo_library.utils.migmanutils import (
    getNEMOStepsFrompAMigrationStatusFile,
    getProjectName,
    load_database,
)
from nemo_library.utils.utils import log_error

config_var = ContextVar("config")
local_project_directory_var = ContextVar("local_project_path")
projects_var = ContextVar("projects")
multi_projects_var = ContextVar("multi_projects")
database_var = ContextVar("database")

__all__ = ["MigManExportData"]


def MigManExportData(
    config: Config,
    local_project_directory: str,
    projects: list[str] = None,
    proALPHA_project_status_file: str = None,
    multi_projects: dict[str, str] = None,
) -> None:

    # if there is a status file given, we ignore the given projects and get the project list from the status file
    if proALPHA_project_status_file:
        projects = getNEMOStepsFrompAMigrationStatusFile(proALPHA_project_status_file)

    # store parameters als global objects to avoid passing them to each and every funtion
    config_var.set(config)
    local_project_directory_var.set(local_project_directory)
    projects_var.set(projects)
    multi_projects_var.set(multi_projects)

    dbdf = load_database()
    database_var.set(dbdf)
    for project in projects:

        # check for project in database
        filtereddbdf = dbdf[dbdf["project_name"] == project]
        if filtereddbdf.empty:
            log_error(f"project '{project}' not found in database")

        # get list of postfixes
        postfixes = filtereddbdf["postfix"].unique().tolist()

        # init project
        multi_projects_list = (
            (multi_projects[project] if project in multi_projects else None)
            if multi_projects
            else None
        )
        if multi_projects_list:
            for addon in multi_projects_list:
                for postfix in postfixes:
                    _export_data(project, addon, postfix)
        else:
            for postfix in postfixes:
                _export_data(project, None, postfix)


def _export_data(
    project: str,
    addon: str,
    postfix: str,
) -> None:

    # export reports
    data = [
        ("to_customer", "_with_messages", "(Customer) All records with message"),
        ("to_proalpha", "", "(MigMan) All records with no message"),
    ]
    project_name = getProjectName(project, addon, postfix)

    for folder,file_postfix,report_name in data:

        file_name = os.path.join(
            local_project_directory_var.get(),
            folder,
            f"{project_name}{file_postfix}.csv",
        )
        df = LoadReport(
            config=config_var.get(),
            projectname=project_name,
            report_name=report_name,
        )
        df.to_csv(
            file_name,
            index=False,
            sep=";",
            encoding="UTF-8",
        )

        logging.info(
            f"File '{file_name}' for '{project}', addon '{addon}', postfix '{postfix}' exported '{report_name}'"
        )
        
