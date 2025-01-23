WITH CTEDefMining AS (
    SELECT
        s_ustid_kontenbereich__001_,
		s_ustid_ustid__003_,
		s_ustid_isdefault__005_
        ,LTRIM(CASE
		WHEN LEFT(TRIM(s_ustid_kontenbereich__001_), 1) = '-' OR RIGHT(TRIM(s_ustid_kontenbereich__001_), 1) = '-'
		THEN  CHAR(10) || 'S_UStID.Kontenbereich (001) must not be negative'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_ustid_kontenbereich__001_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_ustid_kontenbereich__001_)), '-', '')) - 1
                        )
                    ) > 1
		THEN  CHAR(10) || 'S_UStID.Kontenbereich (001) has too many digits before the decimal point (1 allowed)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_ustid_kontenbereich__001_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$')
		THEN  CHAR(10) || 'S_UStID.Kontenbereich (001) is not a valid number'
		ELSE ''
	END ||
	CASE
		WHEN LENGTH(s_ustid_ustid__003_) > 19
		THEN  CHAR(10) || 'S_UStID.UStID (003) exceeds field length (max 19 digits)'
		ELSE ''
	END ||
	CASE
		WHEN NOT s_ustid_isdefault__005_ LIKE_REGEXPR('^(ja|nein)$')
		THEN  CHAR(10) || 'S_UStID.IsDefault (005): logical value does not match format "ja/nein"'
		ELSE ''
	END,CHAR(10)) AS DEFICIENCY_MININNG_MESSAGE
        ,CASE 
            WHEN LEFT(TRIM(s_ustid_kontenbereich__001_), 1) = '-' OR RIGHT(TRIM(s_ustid_kontenbereich__001_), 1) = '-' OR LENGTH(
                        LEFT(
                            REPLACE(TO_VARCHAR(TRIM(s_ustid_kontenbereich__001_)), '-', ''), 
                            LOCATE('.', REPLACE(TO_VARCHAR(TRIM(s_ustid_kontenbereich__001_)), '-', '')) - 1
                        )
                    ) > 1 OR NOT s_ustid_kontenbereich__001_ LIKE_REGEXPR('^[-]?[0-9]+(\.[0-9]+)?[-]?$') OR LENGTH(s_ustid_ustid__003_) > 19 OR NOT s_ustid_isdefault__005_ LIKE_REGEXPR('^(ja|nein)$') THEN 'check'
            ELSE 'ok'
        END AS STATUS
    FROM
        $schema.$table
)
SELECT
    s_ustid_kontenbereich__001_ as "S_UStID.Kontenbereich",
	s_ustid_konto__002_ as "S_UStID.Konto",
	s_ustid_ustid__003_ as "S_UStID.UStID",
	s_ustid_bestaetigt__004_ as "S_UStID.bestaetigt",
	s_ustid_isdefault__005_ as "S_UStID.IsDefault"
FROM 
    CTEDefMining
WHERE
    STATUS = 'ok'
