import json
import logging
import pandas as pd
from nemo_library.features.config import Config
from nemo_library.features.projects import (
    createImportedColumns,
    getImportedColumns,
)
from nemo_library.utils.migmanutils import (
    get_additional_fields,
    get_mapping_fields,
    get_synonym_fields,
)
from nemo_library.utils.utils import (
    get_display_name,
    get_import_name,
    get_internal_name,
)

__all__ = ["MigManApplyMapping"]


def MigManApplyMapping(config: Config) -> None:

    # get configuration
    mapping_fields = get_mapping_fields()
    additional_fields = get_additional_fields()
    synonym_fields = get_synonym_fields()

    # build dictionary with fields to map
    fields_to_map = {}
    # for mapping_field in mapping_fields:
    #     relatedfields = getRelatedFields(
    #         config=config,
    #         additionalfields=additional_fields,
    #         field=mapping_field,
    #         synonym_fields=(
    #             synonym_fields[mapping_field]
    #             if synonym_fields and mapping_field in synonym_fields
    #             else None
    #         ),
    #     )
    #     if relatedfields:
    #         fields_to_map[mapping_field] = relatedfields

    fields_to_map = {
        "S_Kunde.Kunde": {
            "Ship-To Addresses (Customers)": {
                "S_LieferAdresse.Kunde (001)": "s_lieferadresse_kunde__001_"
            },
            "Customers": {"S_Kunde.Kunde (001)": "s_kunde_kunde__001_"},
        },
        "S_Adresse.Bundesland": {
            "Suppliers": {
                "S_Adresse.Bundesland (021)": "s_adresse_bundesland__021_",
                "S_Adresse.Staat (004)": "s_adresse_staat__004_",
            },
            "Customers": {
                "S_Adresse.Bundesland (021)": "s_adresse_bundesland__021_",
                "S_Adresse.Staat (004)": "s_adresse_staat__004_",
            },
        },
    }
    logging.info(f"fields_to_map:\n{json.dumps(fields_to_map,indent=2)}")

    flat_data = []
    for main_key, sub_dict in fields_to_map.items():
        for category, mappings in sub_dict.items():
            for attribute, value in mappings.items():
                flat_data.append(
                    {
                        "mapping_field": main_key,
                        "project": category,
                        "field label": attribute,
                        "internal_name": value,
                    }
                )

    fields_to_map_df = pd.DataFrame(flat_data)

    print(fields_to_map_df)
    return

    # extract list of affected projects from that dictionary
    projects = [
        project
        for mappingfield, mappinginfo in fields_to_map.items()
        for project, projectinfo in mappinginfo.items()
    ]
    projects = list(set(projects))  # make list unique
    for project in projects:
        _process_project(config=config, project=project, fields_to_map=fields_to_map)


def _process_project(
    config: Config,
    project: str,
    fields_to_map,
) -> None:

    importedcolumnsdf = getImportedColumns(config=config, projectname=project)
    importedcolumnslist = importedcolumnsdf["displayName"].to_list()

    # get mapping columns for this project
    mapped_columns = []
    for mappingfield, mappinginfo in fields_to_map.items():
        for mappingproject, projectinfo in mappinginfo.items():
            if mappingproject == project:
                for label, internalname in projectinfo.items():
                    mapped_columns.append(label)

    # create "original" columns if they do not already exist
    new_columns = []
    for col in mapped_columns:
        mapcol = f"Original_{col}"
        if not mapcol in importedcolumnslist:
            new_columns.append(
                {
                    "displayName": get_display_name(mapcol),
                    "importName": get_import_name(mapcol),
                    "internalName": get_internal_name(mapcol),
                    "description": f"Original value of {col}",
                    "dataType": "string",
                }
            )

    if new_columns:
        createImportedColumns(
            config=config,
            projectname=project,
            columns=new_columns,
        )
        logging.info(
            f"project '{project}': columns created\n{json.dumps(new_columns,indent=2)}"
        )

    # now lets fill these values
    _apply_mapping(
        config=config,
        project=project,
        importedcolumnsdf=importedcolumnsdf,
        fields_to_map=fields_to_map,
    )


def _apply_mapping(
    config: Config,
    project: str,
    importedcolumnsdf: pd.DataFrame,
    fields_to_map,
) -> None:
    select_statement = _select_statement(
        project=project,
        importedcolumnsdf=importedcolumnsdf,
        fields_to_map=fields_to_map,
    )
    print(select_statement)


def _select_statement(
    project: str,
    importedcolumnsdf: pd.DataFrame,
    fields_to_map,
) -> str:

    # filter original-values, they will be re-created again
    importedcolumnsdf = importedcolumnsdf[
        ~importedcolumnsdf["displayName"].str.startswith("Original_")
    ]

    selectfrags = [
        f'data.{row["internalName"]}' for idx, row in importedcolumnsdf.iterrows()
    ]
    select = f"""SELECT
    {"\n\t, ".join(selectfrags)}
FROM
    $schema.$table data
"""


#     # add new column with display names without numbers
#     importedcolumnsdf["strippedDisplayName"] = importedcolumnsdf[
#         "displayName"
#     ].str.replace(r" \(\d{3}\)$", "", regex=True)
#     datafrags = [
#         f'data.{row["internalName"]} AS "{"Original_" if row["strippedDisplayName"] in columnstobemapped.keys() else""}{row["displayName"]}"'
#         for idx, row in importedcolumnsdf.iterrows()
#     ]

#     # now add all mapped values
#     datafrags.extend(
#         f'COALESCE(Mapping_{get_internal_name(key)}.TARGET_{get_internal_name(key)},data.{get_internal_name(tgt)}) AS "{tgt}"'
#         for key, value in columnstobemapped.items()
#         for src, tgt in value
#         if src == key
#     )

#     # and now, we join the mapping tables
#     joins = []
#     for key, value in columnstobemapped.items():
#         selects = [
#             f"MAPPING_{get_internal_name(key)}.SOURCE_{get_internal_name(src)} = data.{get_internal_name(tgt)}"
#             for src, tgt in value
#         ]
#         joins.append(
#             f"""LEFT JOIN
#     $schema.PROJECT_MAPPING_{get_internal_name(key)} MAPPING_{get_internal_name(key)}
#     ON {"\n\tAND ".join(selects)}"""
#         )

#     # and finally build the query
#     query = f"""
# SELECT
#     {"\n\t,".join(datafrags)}
# FROM
#     $schema.$table data
# {"\n".join(joins)}
# """
#     return query


#             sqlQuery = _SQL_Query_in_data_table(
#                 project=project,
#                 columnstobemapped=columnstobemapped,
#             )

#             createOrUpdateReport(
#                 config=config,
#                 projectname=project,
#                 displayName="(MAPPING) map data",
#                 querySyntax=sqlQuery,
#                 internalName="MAPPING_map_data",
#                 description="Map data",
#             )
#             df = LoadReport(
#                 config=config,
#                 projectname=project,
#                 report_name="(MAPPING) map data",
#             )

#             # Write to a temporary file and upload
#             with tempfile.TemporaryDirectory() as temp_dir:
#                 temp_file_path = os.path.join(temp_dir, "tempfile.csv")

#                 df.to_csv(
#                     temp_file_path,
#                     index=False,
#                     sep=";",
#                     na_rep="",
#                     encoding="UTF-8",
#                 )
#                 logging.info(
#                     f"dummy file {temp_file_path} written for project '{project}'. Uploading data to NEMO now..."
#                 )

#                 ReUploadFile(
#                     config=config,
#                     projectname=project,
#                     filename=temp_file_path,
#                     update_project_settings=False,
#                     version=3,
#                     datasource_ids=[{"key": "datasource_id", "value": project}],
#                 )
#                 logging.info(f"upload to project {project} completed")

#             # couple attributes
#             importedcolumns = getImportedColumns(config=config, projectname=project)[
#                 "displayName"
#             ].to_list()
#             pairs = []
#             for col in importedcolumns:
#                 original_col = f"Original_{col}"
#                 if original_col in importedcolumns:
#                     pairs.append((col, original_col))

#             for col, original_col in pairs:
#                 logging.info(f"Couple pairs: {col} & {original_col}")
#                 focusCoupleAttributes(
#                     config=config,
#                     projectname=project,
#                     attributenames=[col, original_col],
#                     previous_attribute=col,
#                 )
