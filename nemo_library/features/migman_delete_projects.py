from nemo_library.features.nemo_persistence_api import deleteProjects
from nemo_library.features.nemo_persistence_api import getProjects
from nemo_library.utils.config import Config
from nemo_library.utils.migmanutils import get_migman_project_list

__all__ = ["MigManDeleteProjects"]


def MigManDeleteProjects(config: Config) -> None:
    projects = getProjects(config)
    migmanprojects = get_migman_project_list(config)
    to_delete = [
        project.id
        for project in projects
        if project.displayName in migmanprojects
    ]
    deleteProjects(config, to_delete)
