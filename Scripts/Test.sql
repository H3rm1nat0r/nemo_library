WITH CTEDM AS (
SELECT
	s_ustid_isdefault__096_ AS "S_UStID.IsDefault (096)",
	s_kunde_kunde__001_ AS "S_Kunde.Kunde (001)",
	s_adresse_adressnr__002_ AS "S_Adresse.AdressNr (002)",
	s_adresse_name1__003_ AS "S_Adresse.Name1 (003)",
	s_adresse_staat__004_ AS "S_Adresse.Staat (004)",
	s_adresse_ort__005_ AS "S_Adresse.Ort (005)",
	s_adresse_suchbegriff__006_ AS "S_Adresse.Suchbegriff (006)",
	s_adresse_selektion__007_ AS "S_Adresse.Selektion (007)",
	s_adresse_name2__012_ AS "S_Adresse.Name2 (012)",
	s_adresse_name3__013_ AS "S_Adresse.Name3 (013)",
	s_adresse_plz__014_ AS "S_Adresse.PLZ (014)",
	s_adresse_strasse__018_ AS "S_Adresse.Strasse (018)",
	s_adresse_hausnummer__020_ AS "S_Adresse.Hausnummer (020)",
	s_adresse_bundesland__021_ AS "S_Adresse.Bundesland (021)",
	s_adresse_plz_postfach__022_ AS "S_Adresse.PLZ_Postfach (022)",
	s_adresse_postfach__023_ AS "S_Adresse.Postfach (023)",
	s_adresse_telefonbuch__024_ AS "S_Adresse.Telefonbuch (024)",
	s_kunde_suchbegriff__035_ AS "S_Kunde.Suchbegriff (035)",
	s_kunde_selektion__036_ AS "S_Kunde.Selektion (036)",
	s_kunde_sachbearbeiter__040_ AS "S_Kunde.Sachbearbeiter (040)",
	s_kunde_sprache__041_ AS "S_Kunde.Sprache (041)",
	s_kunde_artikelstatistik__043_ AS "S_Kunde.Artikelstatistik (043)",
	s_kunde_webshop__044_ AS "S_Kunde.Webshop (044)",
	s_kunde_lieferantennummer__048_ AS "S_Kunde.lieferantennummer (048)",
	s_kunde_inlaendische_steuernr__049_ AS "S_Kunde.inlaendische_steuernr (049)",
	s_ustid_ustid__051_ AS "S_UStID.UStID (051)",
	s_kunde_rechnungsintervall__052_ AS "S_Kunde.rechnungsintervall (052)",
	s_kunde_rechnungskennzeichen__053_ AS "S_Kunde.rechnungskennzeichen (053)",
	s_kunde_rechnung_an__054_ AS "S_Kunde.rechnung_an (054)",
	s_kunde_konzern__055_ AS "S_Kunde.konzern (055)",
	s_verband_mahnempfaenger__059_ AS "S_Verband.Mahnempfaenger (059)",
	s_verband_zahlungsregulierung__060_ AS "S_Verband.Zahlungsregulierung (060)",
	s_kunde_mahnempfaenger_verband__062_ AS "S_Kunde.mahnempfaenger_verband (062)",
	s_kunde_stgr_mit_st__064_ AS "S_Kunde.stgr_mit_st (064)",
	s_kunde_stgr_ohne_st__065_ AS "S_Kunde.stgr_ohne_st (065)",
	s_kunde_stgreu_mit_st__066_ AS "S_Kunde.stgreu_mit_st (066)",
	s_kunde_stgreu_ohne_st__067_ AS "S_Kunde.stgreu_ohne_st (067)",
	s_kunde_stgraus_mit_st__068_ AS "S_Kunde.stgraus_mit_st (068)",
	s_kunde_stgraus_ohne_st__069_ AS "S_Kunde.stgraus_ohne_st (069)",
	s_kunde_kreditlimit_ueberwachen__074_ AS "S_Kunde.kreditlimit_ueberwachen (074)",
	s_kunde_mahnverfahren__075_ AS "S_Kunde.mahnverfahren (075)",
	f_kundeverzug_manuell__078_ AS "F_KundeVerzug.manuell (078)",
	s_kunde_rabattart__089_ AS "S_Kunde.rabattart (089)",
	s_kunde_fracht_skontofaehig__090_ AS "S_Kunde.fracht_skontofaehig (090)",
	s_kunde_zuschlag_skontofaehig__091_ AS "S_Kunde.zuschlag_skontofaehig (091)",
	s_ustid_bestaetigt__094_ AS "S_UStID.bestaetigt (094)"
	,LTRIM(CASE
		WHEN LEFT(TRIM(s_kunde_kunde__001_), 1) = '-' OR RIGHT(TRIM(s_kunde_kunde__001_), 1) = '-'
		THEN  CHAR(10) || 'S_Kunde.Kunde (001) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_kunde__001_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_kunde__001_)), '-', '')) - 1
                        )
                    ) > 8
		THEN  CHAR(10) || 'S_Kunde.Kunde (001) has too many digits before the decimal point (8 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_kunde__001_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_Kunde.Kunde (001) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN LEFT(TRIM(s_adresse_adressnr__002_), 1) = '-' OR RIGHT(TRIM(s_adresse_adressnr__002_), 1) = '-'
		THEN  CHAR(10) || 'S_Adresse.AdressNr (002) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_adresse_adressnr__002_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_adresse_adressnr__002_)), '-', '')) - 1
                        )
                    ) > 8
		THEN  CHAR(10) || 'S_Adresse.AdressNr (002) has too many digits before the decimal point (8 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_adresse_adressnr__002_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_Adresse.AdressNr (002) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_name1__003_) > 80
		THEN  CHAR(10) || 'S_Adresse.Name1 (003) exceeds field length (max 80 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_staat__004_) > 3
		THEN  CHAR(10) || 'S_Adresse.Staat (004) exceeds field length (max 3 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_ort__005_) > 30
		THEN  CHAR(10) || 'S_Adresse.Ort (005) exceeds field length (max 30 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_suchbegriff__006_) > 12
		THEN  CHAR(10) || 'S_Adresse.Suchbegriff (006) exceeds field length (max 12 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_selektion__007_) > 20
		THEN  CHAR(10) || 'S_Adresse.Selektion (007) exceeds field length (max 20 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_name2__012_) > 80
		THEN  CHAR(10) || 'S_Adresse.Name2 (012) exceeds field length (max 80 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_name3__013_) > 80
		THEN  CHAR(10) || 'S_Adresse.Name3 (013) exceeds field length (max 80 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_plz__014_) > 10
		THEN  CHAR(10) || 'S_Adresse.PLZ (014) exceeds field length (max 10 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_strasse__018_) > 50
		THEN  CHAR(10) || 'S_Adresse.Strasse (018) exceeds field length (max 50 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_hausnummer__020_) > 12
		THEN  CHAR(10) || 'S_Adresse.Hausnummer (020) exceeds field length (max 12 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_bundesland__021_) > 3
		THEN  CHAR(10) || 'S_Adresse.Bundesland (021) exceeds field length (max 3 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_plz_postfach__022_) > 10
		THEN  CHAR(10) || 'S_Adresse.PLZ_Postfach (022) exceeds field length (max 10 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_adresse_postfach__023_) > 30
		THEN  CHAR(10) || 'S_Adresse.Postfach (023) exceeds field length (max 30 digits)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_adresse_telefonbuch__024_ LIKE_REGEXPR('^(ja|nein)$')
		THEN  CHAR(10) || 'S_Adresse.Telefonbuch (024): logical value does not match format "ja/nein"'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_adresse_telefonbuch__024_ LIKE_REGEXPR('^\+?[0-9\s\-()](5, 15)$')
		THEN  CHAR(10) || 'S_Adresse.Telefonbuch (024) is not a valid phone number'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_kunde_suchbegriff__035_) > 12
		THEN  CHAR(10) || 'S_Kunde.Suchbegriff (035) exceeds field length (max 12 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_kunde_selektion__036_) > 20
		THEN  CHAR(10) || 'S_Kunde.Selektion (036) exceeds field length (max 20 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_kunde_sachbearbeiter__040_) > 12
		THEN  CHAR(10) || 'S_Kunde.Sachbearbeiter (040) exceeds field length (max 12 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_kunde_sprache__041_) > 3
		THEN  CHAR(10) || 'S_Kunde.Sprache (041) exceeds field length (max 3 digits)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_artikelstatistik__043_ LIKE_REGEXPR('^(führen|nicht führen)$')
		THEN  CHAR(10) || 'S_Kunde.Artikelstatistik (043): logical value does not match format "führen/nicht führen"'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_webshop__044_ LIKE_REGEXPR('^(ja|nein)$')
		THEN  CHAR(10) || 'S_Kunde.Webshop (044): logical value does not match format "ja/nein"'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_kunde_lieferantennummer__048_) > 20
		THEN  CHAR(10) || 'S_Kunde.lieferantennummer (048) exceeds field length (max 20 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_kunde_inlaendische_steuernr__049_) > 20
		THEN  CHAR(10) || 'S_Kunde.inlaendische_steuernr (049) exceeds field length (max 20 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_ustid_ustid__051_) > 19
		THEN  CHAR(10) || 'S_UStID.UStID (051) exceeds field length (max 19 digits)'
		ELSE ''
	END ||
	CASE
		WHEN LEFT(TRIM(s_kunde_rechnungsintervall__052_), 1) = '-' OR RIGHT(TRIM(s_kunde_rechnungsintervall__052_), 1) = '-'
		THEN  CHAR(10) || 'S_Kunde.rechnungsintervall (052) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_rechnungsintervall__052_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_rechnungsintervall__052_)), '-', '')) - 1
                        )
                    ) > 2
		THEN  CHAR(10) || 'S_Kunde.rechnungsintervall (052) has too many digits before the decimal point (2 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_rechnungsintervall__052_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_Kunde.rechnungsintervall (052) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_rechnungskennzeichen__053_ LIKE_REGEXPR('^(SmRe|EzRe)$')
		THEN  CHAR(10) || 'S_Kunde.rechnungskennzeichen (053): logical value does not match format "SmRe/EzRe"'
		ELSE ''
	END ||
	CASE
		WHEN LEFT(TRIM(s_kunde_rechnung_an__054_), 1) = '-' OR RIGHT(TRIM(s_kunde_rechnung_an__054_), 1) = '-'
		THEN  CHAR(10) || 'S_Kunde.rechnung_an (054) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_rechnung_an__054_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_rechnung_an__054_)), '-', '')) - 1
                        )
                    ) > 8
		THEN  CHAR(10) || 'S_Kunde.rechnung_an (054) has too many digits before the decimal point (8 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_rechnung_an__054_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_Kunde.rechnung_an (054) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN LEFT(TRIM(s_kunde_konzern__055_), 1) = '-' OR RIGHT(TRIM(s_kunde_konzern__055_), 1) = '-'
		THEN  CHAR(10) || 'S_Kunde.konzern (055) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_konzern__055_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_konzern__055_)), '-', '')) - 1
                        )
                    ) > 8
		THEN  CHAR(10) || 'S_Kunde.konzern (055) has too many digits before the decimal point (8 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_konzern__055_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_Kunde.konzern (055) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_verband_mahnempfaenger__059_ LIKE_REGEXPR('^(ja|nein)$')
		THEN  CHAR(10) || 'S_Verband.Mahnempfaenger (059): logical value does not match format "ja/nein"'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_verband_zahlungsregulierung__060_ LIKE_REGEXPR('^(ja|nein)$')
		THEN  CHAR(10) || 'S_Verband.Zahlungsregulierung (060): logical value does not match format "ja/nein"'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_mahnempfaenger_verband__062_ LIKE_REGEXPR('^(ja|nein)$')
		THEN  CHAR(10) || 'S_Kunde.mahnempfaenger_verband (062): logical value does not match format "ja/nein"'
		ELSE ''
	END ||
	CASE
		WHEN LEFT(TRIM(s_kunde_stgr_mit_st__064_), 1) = '-' OR RIGHT(TRIM(s_kunde_stgr_mit_st__064_), 1) = '-'
		THEN  CHAR(10) || 'S_Kunde.stgr_mit_st (064) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_stgr_mit_st__064_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_stgr_mit_st__064_)), '-', '')) - 1
                        )
                    ) > 3
		THEN  CHAR(10) || 'S_Kunde.stgr_mit_st (064) has too many digits before the decimal point (3 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_stgr_mit_st__064_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_Kunde.stgr_mit_st (064) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN LEFT(TRIM(s_kunde_stgr_ohne_st__065_), 1) = '-' OR RIGHT(TRIM(s_kunde_stgr_ohne_st__065_), 1) = '-'
		THEN  CHAR(10) || 'S_Kunde.stgr_ohne_st (065) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_stgr_ohne_st__065_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_stgr_ohne_st__065_)), '-', '')) - 1
                        )
                    ) > 3
		THEN  CHAR(10) || 'S_Kunde.stgr_ohne_st (065) has too many digits before the decimal point (3 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_stgr_ohne_st__065_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_Kunde.stgr_ohne_st (065) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN LEFT(TRIM(s_kunde_stgreu_mit_st__066_), 1) = '-' OR RIGHT(TRIM(s_kunde_stgreu_mit_st__066_), 1) = '-'
		THEN  CHAR(10) || 'S_Kunde.stgreu_mit_st (066) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_stgreu_mit_st__066_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_stgreu_mit_st__066_)), '-', '')) - 1
                        )
                    ) > 3
		THEN  CHAR(10) || 'S_Kunde.stgreu_mit_st (066) has too many digits before the decimal point (3 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_stgreu_mit_st__066_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_Kunde.stgreu_mit_st (066) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN LEFT(TRIM(s_kunde_stgreu_ohne_st__067_), 1) = '-' OR RIGHT(TRIM(s_kunde_stgreu_ohne_st__067_), 1) = '-'
		THEN  CHAR(10) || 'S_Kunde.stgreu_ohne_st (067) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_stgreu_ohne_st__067_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_stgreu_ohne_st__067_)), '-', '')) - 1
                        )
                    ) > 3
		THEN  CHAR(10) || 'S_Kunde.stgreu_ohne_st (067) has too many digits before the decimal point (3 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_stgreu_ohne_st__067_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_Kunde.stgreu_ohne_st (067) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN LEFT(TRIM(s_kunde_stgraus_mit_st__068_), 1) = '-' OR RIGHT(TRIM(s_kunde_stgraus_mit_st__068_), 1) = '-'
		THEN  CHAR(10) || 'S_Kunde.stgraus_mit_st (068) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_stgraus_mit_st__068_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_stgraus_mit_st__068_)), '-', '')) - 1
                        )
                    ) > 3
		THEN  CHAR(10) || 'S_Kunde.stgraus_mit_st (068) has too many digits before the decimal point (3 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_stgraus_mit_st__068_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_Kunde.stgraus_mit_st (068) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN LEFT(TRIM(s_kunde_stgraus_ohne_st__069_), 1) = '-' OR RIGHT(TRIM(s_kunde_stgraus_ohne_st__069_), 1) = '-'
		THEN  CHAR(10) || 'S_Kunde.stgraus_ohne_st (069) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_stgraus_ohne_st__069_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_stgraus_ohne_st__069_)), '-', '')) - 1
                        )
                    ) > 3
		THEN  CHAR(10) || 'S_Kunde.stgraus_ohne_st (069) has too many digits before the decimal point (3 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_stgraus_ohne_st__069_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_Kunde.stgraus_ohne_st (069) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_kreditlimit_ueberwachen__074_ LIKE_REGEXPR('^(ja|nein)$')
		THEN  CHAR(10) || 'S_Kunde.kreditlimit_ueberwachen (074): logical value does not match format "ja/nein"'
		ELSE ''
	END ||
	CASE
		WHEN LEFT(TRIM(s_kunde_mahnverfahren__075_), 1) = '-' OR RIGHT(TRIM(s_kunde_mahnverfahren__075_), 1) = '-'
		THEN  CHAR(10) || 'S_Kunde.mahnverfahren (075) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_mahnverfahren__075_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_mahnverfahren__075_)), '-', '')) - 1
                        )
                    ) > 1
		THEN  CHAR(10) || 'S_Kunde.mahnverfahren (075) has too many digits before the decimal point (1 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_mahnverfahren__075_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_Kunde.mahnverfahren (075) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN NOT f_kundeverzug_manuell__078_ LIKE_REGEXPR('^(ja|nein)$')
		THEN  CHAR(10) || 'F_KundeVerzug.manuell (078): logical value does not match format "ja/nein"'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_rabattart__089_ LIKE_REGEXPR('^(sichtbar|verdeckt)$')
		THEN  CHAR(10) || 'S_Kunde.rabattart (089): logical value does not match format "sichtbar/verdeckt"'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_fracht_skontofaehig__090_ LIKE_REGEXPR('^(ja|nein)$')
		THEN  CHAR(10) || 'S_Kunde.fracht_skontofaehig (090): logical value does not match format "ja/nein"'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_kunde_zuschlag_skontofaehig__091_ LIKE_REGEXPR('^(ja|nein)$')
		THEN  CHAR(10) || 'S_Kunde.zuschlag_skontofaehig (091): logical value does not match format "ja/nein"'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_ustid_bestaetigt__094_ LIKE_REGEXPR('^(ja|nein)$')
		THEN  CHAR(10) || 'S_UStID.bestaetigt (094): logical value does not match format "ja/nein"'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_ustid_isdefault__096_ LIKE_REGEXPR('^(ja|nein)$')
		THEN  CHAR(10) || 'S_UStID.IsDefault (096): logical value does not match format "ja/nein"'
		ELSE ''
	END,CHAR(10)) AS DEFICIENCY_MININNG_MESSAGE
	,CASE 
		WHEN LEFT(TRIM(s_kunde_kunde__001_), 1) = '-' OR RIGHT(TRIM(s_kunde_kunde__001_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_kunde__001_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_kunde__001_)), '-', '')) - 1
                        )
                    ) > 8 OR NOT s_kunde_kunde__001_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR LEFT(TRIM(s_adresse_adressnr__002_), 1) = '-' OR RIGHT(TRIM(s_adresse_adressnr__002_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_adresse_adressnr__002_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_adresse_adressnr__002_)), '-', '')) - 1
                        )
                    ) > 8 OR NOT s_adresse_adressnr__002_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR LENGTH(s_adresse_name1__003_) > 80 OR LENGTH(s_adresse_staat__004_) > 3 OR LENGTH(s_adresse_ort__005_) > 30 OR LENGTH(s_adresse_suchbegriff__006_) > 12 OR LENGTH(s_adresse_selektion__007_) > 20 OR LENGTH(s_adresse_name2__012_) > 80 OR LENGTH(s_adresse_name3__013_) > 80 OR LENGTH(s_adresse_plz__014_) > 10 OR LENGTH(s_adresse_strasse__018_) > 50 OR LENGTH(s_adresse_hausnummer__020_) > 12 OR LENGTH(s_adresse_bundesland__021_) > 3 OR LENGTH(s_adresse_plz_postfach__022_) > 10 OR LENGTH(s_adresse_postfach__023_) > 30 OR NOT s_adresse_telefonbuch__024_ LIKE_REGEXPR('^(ja|nein)$') OR NOT s_adresse_telefonbuch__024_ LIKE_REGEXPR('^\+?[0-9\s\-()](5, 15)$') OR LENGTH(s_kunde_suchbegriff__035_) > 12 OR LENGTH(s_kunde_selektion__036_) > 20 OR LENGTH(s_kunde_sachbearbeiter__040_) > 12 OR LENGTH(s_kunde_sprache__041_) > 3 OR NOT s_kunde_artikelstatistik__043_ LIKE_REGEXPR('^(führen|nicht führen)$') OR NOT s_kunde_webshop__044_ LIKE_REGEXPR('^(ja|nein)$') OR LENGTH(s_kunde_lieferantennummer__048_) > 20 OR LENGTH(s_kunde_inlaendische_steuernr__049_) > 20 OR LENGTH(s_ustid_ustid__051_) > 19 OR LEFT(TRIM(s_kunde_rechnungsintervall__052_), 1) = '-' OR RIGHT(TRIM(s_kunde_rechnungsintervall__052_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_rechnungsintervall__052_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_rechnungsintervall__052_)), '-', '')) - 1
                        )
                    ) > 2 OR NOT s_kunde_rechnungsintervall__052_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR NOT s_kunde_rechnungskennzeichen__053_ LIKE_REGEXPR('^(SmRe|EzRe)$') OR LEFT(TRIM(s_kunde_rechnung_an__054_), 1) = '-' OR RIGHT(TRIM(s_kunde_rechnung_an__054_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_rechnung_an__054_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_rechnung_an__054_)), '-', '')) - 1
                        )
                    ) > 8 OR NOT s_kunde_rechnung_an__054_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR LEFT(TRIM(s_kunde_konzern__055_), 1) = '-' OR RIGHT(TRIM(s_kunde_konzern__055_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_konzern__055_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_konzern__055_)), '-', '')) - 1
                        )
                    ) > 8 OR NOT s_kunde_konzern__055_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR NOT s_verband_mahnempfaenger__059_ LIKE_REGEXPR('^(ja|nein)$') OR NOT s_verband_zahlungsregulierung__060_ LIKE_REGEXPR('^(ja|nein)$') OR NOT s_kunde_mahnempfaenger_verband__062_ LIKE_REGEXPR('^(ja|nein)$') OR LEFT(TRIM(s_kunde_stgr_mit_st__064_), 1) = '-' OR RIGHT(TRIM(s_kunde_stgr_mit_st__064_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_stgr_mit_st__064_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_stgr_mit_st__064_)), '-', '')) - 1
                        )
                    ) > 3 OR NOT s_kunde_stgr_mit_st__064_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR LEFT(TRIM(s_kunde_stgr_ohne_st__065_), 1) = '-' OR RIGHT(TRIM(s_kunde_stgr_ohne_st__065_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_stgr_ohne_st__065_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_stgr_ohne_st__065_)), '-', '')) - 1
                        )
                    ) > 3 OR NOT s_kunde_stgr_ohne_st__065_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR LEFT(TRIM(s_kunde_stgreu_mit_st__066_), 1) = '-' OR RIGHT(TRIM(s_kunde_stgreu_mit_st__066_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_stgreu_mit_st__066_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_stgreu_mit_st__066_)), '-', '')) - 1
                        )
                    ) > 3 OR NOT s_kunde_stgreu_mit_st__066_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR LEFT(TRIM(s_kunde_stgreu_ohne_st__067_), 1) = '-' OR RIGHT(TRIM(s_kunde_stgreu_ohne_st__067_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_stgreu_ohne_st__067_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_stgreu_ohne_st__067_)), '-', '')) - 1
                        )
                    ) > 3 OR NOT s_kunde_stgreu_ohne_st__067_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR LEFT(TRIM(s_kunde_stgraus_mit_st__068_), 1) = '-' OR RIGHT(TRIM(s_kunde_stgraus_mit_st__068_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_stgraus_mit_st__068_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_stgraus_mit_st__068_)), '-', '')) - 1
                        )
                    ) > 3 OR NOT s_kunde_stgraus_mit_st__068_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR LEFT(TRIM(s_kunde_stgraus_ohne_st__069_), 1) = '-' OR RIGHT(TRIM(s_kunde_stgraus_ohne_st__069_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_stgraus_ohne_st__069_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_stgraus_ohne_st__069_)), '-', '')) - 1
                        )
                    ) > 3 OR NOT s_kunde_stgraus_ohne_st__069_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR NOT s_kunde_kreditlimit_ueberwachen__074_ LIKE_REGEXPR('^(ja|nein)$') OR LEFT(TRIM(s_kunde_mahnverfahren__075_), 1) = '-' OR RIGHT(TRIM(s_kunde_mahnverfahren__075_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_kunde_mahnverfahren__075_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_kunde_mahnverfahren__075_)), '-', '')) - 1
                        )
                    ) > 1 OR NOT s_kunde_mahnverfahren__075_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR NOT f_kundeverzug_manuell__078_ LIKE_REGEXPR('^(ja|nein)$') OR NOT s_kunde_rabattart__089_ LIKE_REGEXPR('^(sichtbar|verdeckt)$') OR NOT s_kunde_fracht_skontofaehig__090_ LIKE_REGEXPR('^(ja|nein)$') OR NOT s_kunde_zuschlag_skontofaehig__091_ LIKE_REGEXPR('^(ja|nein)$') OR NOT s_ustid_bestaetigt__094_ LIKE_REGEXPR('^(ja|nein)$') OR NOT s_ustid_isdefault__096_ LIKE_REGEXPR('^(ja|nein)$') THEN 'check'
		ELSE 'ok'
	END AS STATUS
FROM
	mig."PROJECT_CUSTOMERS"