import json
import logging

from nemo_library.features.projects import FilterType
from nemo_library.model.defined_column import DefinedColumn
from nemo_library.model.metric import Metric
from nemo_library.model.tile import Tile
from nemo_library.nemo_library import NemoLibrary

PROJECT_NAME = "Business Processes"

# Configure logging
logging.basicConfig(
    level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s"
)
nl = NemoLibrary()

#######
# load data from json files
with open("./metadata/definedcolumns.json", "r", encoding="utf-8") as file:
    data = json.load(file)

defined_columns = [DefinedColumn(**item) for item in data]

with open("./metadata/metrics.json", "r", encoding="utf-8") as file:
    data = json.load(file)

metrics = [Metric(**item) for item in data]

# tiles are generic
tiles = [
    Tile(
        aggregation="Mean",
        description=f"Tile for metric {metric.displayName}",
        descriptionTranslations={},
        displayName=metric.displayName,
        displayNameTranslations={},
        frequency="Month",
        graphic="",
        internalName=metric.internalName,
        status="Mandatory",
        tileGroup="(Conservative)",
        tileGroupTranslations={},
        tileSourceID=metric.id,
        tileSourceInternalName=metric.internalName,
        type="Metric",
        unit="",
        id="",
        projectId="",
        tenant="",
    )
    for metric in metrics
]

# delete objects first
tiles_nemo = nl.getTiles(
    projectname=PROJECT_NAME, filter="(Conservative)", filter_type=FilterType.STARTSWITH
)
tiles_nemo_ids = [tile_nemo["id"] for tile_nemo in tiles_nemo]
nl.deleteTiles(tiles_nemo_ids)

metrics_nemo = nl.getMetrics(
    projectname=PROJECT_NAME, filter="(Conservative)", filter_type=FilterType.STARTSWITH
)
metric_nemo_ids = [metric["id"] for metric in metrics_nemo]
nl.deleteMetrics(metric_nemo_ids)

defined_columns_nemo = nl.getDefinedColumns(
    projectname=PROJECT_NAME, filter="(Conservative)", filter_type=FilterType.STARTSWITH
)
defined_columns_nemo_ids = [
    defined_column["id"] for defined_column in defined_columns_nemo
]
nl.deleteDefinedColumns(defined_columns_nemo_ids)

# now create objects from scratch
nl.createDefinedColumns(projectname=PROJECT_NAME, data=defined_columns)
nl.createMetrics(projectname=PROJECT_NAME, data=metrics)
nl.createTiles(projectname=PROJECT_NAME, data=tiles)
