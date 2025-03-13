import json
import logging

from nemo_library.nemo_library import NemoLibrary
from nemo_library.utils.utils import FilterType

PROJECT_NAME = "Business Processes"


# Configure logging
logging.basicConfig(
    level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s"
)
nl = NemoLibrary()
nl.MetaDataLoad(projectname=PROJECT_NAME,prefix="(Conservative)")


# ag = nl.getMetrics(projectname=PROJECT_NAME,filter="Timm",filter_type=FilterType.CONTAINS)
# print(json.dumps(ag[0].to_dict(),indent=4))
