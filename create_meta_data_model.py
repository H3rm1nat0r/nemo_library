import logging

from nemo_library.nemo_library import NemoLibrary

PROJECT_NAME = "Business Processes"


# Configure logging
logging.basicConfig(
    level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s"
)
nl = NemoLibrary()
nl.MetaDataCreate(projectname=PROJECT_NAME)
