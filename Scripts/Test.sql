
SELECT
    data.s_kunde_stgreu_ohne_st__067_ AS "S_Kunde.stgreu_ohne_st (067)"
	,data.s_kunde_sprache__041_ AS "S_Kunde.Sprache (041)"
	,data.s_adresse_name3__013_ AS "S_Adresse.Name3 (013)"
	,data.s_kunde_stgraus_ohne_st__069_ AS "S_Kunde.stgraus_ohne_st (069)"
	,data.s_adresse_strasse__018_ AS "S_Adresse.Strasse (018)"
	,data.datasource_id AS "datasource_id"
	,data.s_adresse_bundesland__021_ AS "Original_S_Adresse.Bundesland (021)"
	,data.s_adresse_plz__014_ AS "S_Adresse.PLZ (014)"
	,data.s_kunde_stgr_ohne_st__065_ AS "S_Kunde.stgr_ohne_st (065)"
	,data.s_adresse_name1__003_ AS "S_Adresse.Name1 (003)"
	,data.timestamp_file AS "timestamp_file"
	,data.s_adresse_staat__004_ AS "S_Adresse.Staat (004)"
	,data.s_kunde_sachbearbeiter__040_ AS "S_Kunde.Sachbearbeiter (040)"
	,data.s_adresse_plz_postfach__022_ AS "S_Adresse.PLZ_Postfach (022)"
	,data.s_ustid_ustid__051_ AS "S_UStID.UStID (051)"
	,data.s_kunde_abc_klasse__042_ AS "S_Kunde.Abc_klasse (042)"
	,data.s_kunde_stgraus_mit_st__068_ AS "S_Kunde.stgraus_mit_st (068)"
	,data.s_adresse_postfach__023_ AS "S_Adresse.Postfach (023)"
	,data.s_kunde_suchbegriff__035_ AS "S_Kunde.Suchbegriff (035)"
	,data.s_adresse_name2__012_ AS "S_Adresse.Name2 (012)"
	,data.s_kunde_zahlungsziel__072_ AS "S_Kunde.zahlungsziel (072)"
	,data.s_kunde_kunde__001_ AS "S_Kunde.Kunde (001)"
	,data.s_kunde_stgreu_mit_st__066_ AS "S_Kunde.stgreu_mit_st (066)"
	,data.s_adresse_ort__005_ AS "S_Adresse.Ort (005)"
	,data.s_kunde_stgr_mit_st__064_ AS "S_Kunde.stgr_mit_st (064)"
	,data.s_adresse_hausnummer__020_ AS "S_Adresse.Hausnummer (020)"
	,COALESCE(Mapping_s_adresse_bundesland.TARGET_s_adresse_bundesland,data.s_adresse_bundesland__021_) AS "S_Adresse.Bundesland (021)"
FROM
    mig.PROJECT_CUSTOMERS data
LEFT JOIN
   	mig.PROJECT_MAPPING_S_ADRESSE_BUNDESLAND MAPPING_s_adresse_bundesland
    ON MAPPING_s_adresse_bundesland.SOURCE_s_adresse_staat = data.s_adresse_staat__004_
	AND MAPPING_s_adresse_bundesland.SOURCE_s_adresse_bundesland = data.s_adresse_bundesland__021_
