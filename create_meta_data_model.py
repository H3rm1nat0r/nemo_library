import json
import logging

from nemo_library.model.defined_column import DefinedColumn
from nemo_library.model.metric import Metric
from nemo_library.nemo_library import NemoLibrary

# Configure logging
logging.basicConfig(
    level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s"
)

with open("./metadata/definedcolumns.json", "r", encoding="utf-8") as file:
    data = json.load(file)

defined_columns = [DefinedColumn(**item) for item in data]

with open("./metadata/metrics.json", "r", encoding="utf-8") as file:
    data = json.load(file)

metrics = [Metric(**item) for item in data]

nl = NemoLibrary()
nl.createDefinedColumns(projectname="Business Processes",data=defined_columns)
nl.createMetrics(projectname="Business Processes",data=metrics)
