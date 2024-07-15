WITH DateCalculationsFiscalYear AS (
    SELECT  
        YEAR(ADD_YEARS(ADD_MONTHS(CURRENT_DATE, -3), -2)) AS FiscalYearMinus2,
        YEAR(ADD_YEARS(ADD_MONTHS(CURRENT_DATE, -3), -1)) AS FiscalYearMinus1,
        YEAR(ADD_YEARS(ADD_MONTHS(CURRENT_DATE, -3), 0)) AS FiscalYearMinus0
    FROM 
        DUMMY            
    ),
DateCalculations AS (
    SELECT  
        *,
        ADD_MONTHS(TO_DATE(FiscalYearMinus2 || '-01-01'),3) AS CalendarPeriod0,
        ADD_MONTHS(TO_DATE(FiscalYearMinus2 || '-02-01'),3) AS CalendarPeriod1,
        ADD_MONTHS(TO_DATE(FiscalYearMinus2 || '-03-01'),3) AS CalendarPeriod2,
        ADD_MONTHS(TO_DATE(FiscalYearMinus2 || '-04-01'),3) AS CalendarPeriod3,
        ADD_MONTHS(TO_DATE(FiscalYearMinus2 || '-05-01'),3) AS CalendarPeriod4,
        ADD_MONTHS(TO_DATE(FiscalYearMinus2 || '-06-01'),3) AS CalendarPeriod5,
        ADD_MONTHS(TO_DATE(FiscalYearMinus2 || '-07-01'),3) AS CalendarPeriod6,
        ADD_MONTHS(TO_DATE(FiscalYearMinus2 || '-08-01'),3) AS CalendarPeriod7,
        ADD_MONTHS(TO_DATE(FiscalYearMinus2 || '-09-01'),3) AS CalendarPeriod8,
        ADD_MONTHS(TO_DATE(FiscalYearMinus2 || '-10-01'),3) AS CalendarPeriod9,
        ADD_MONTHS(TO_DATE(FiscalYearMinus2 || '-11-01'),3) AS CalendarPeriod10,
        ADD_MONTHS(TO_DATE(FiscalYearMinus2 || '-12-01'),3) AS CalendarPeriod11,
        ADD_MONTHS(TO_DATE(FiscalYearMinus1 || '-01-01'),3) AS CalendarPeriod12,
        ADD_MONTHS(TO_DATE(FiscalYearMinus1 || '-02-01'),3) AS CalendarPeriod13,
        ADD_MONTHS(TO_DATE(FiscalYearMinus1 || '-03-01'),3) AS CalendarPeriod14,
        ADD_MONTHS(TO_DATE(FiscalYearMinus1 || '-04-01'),3) AS CalendarPeriod15,
        ADD_MONTHS(TO_DATE(FiscalYearMinus1 || '-05-01'),3) AS CalendarPeriod16,
        ADD_MONTHS(TO_DATE(FiscalYearMinus1 || '-06-01'),3) AS CalendarPeriod17,
        ADD_MONTHS(TO_DATE(FiscalYearMinus1 || '-07-01'),3) AS CalendarPeriod18,
        ADD_MONTHS(TO_DATE(FiscalYearMinus1 || '-08-01'),3) AS CalendarPeriod19,
        ADD_MONTHS(TO_DATE(FiscalYearMinus1 || '-09-01'),3) AS CalendarPeriod20,
        ADD_MONTHS(TO_DATE(FiscalYearMinus1 || '-10-01'),3) AS CalendarPeriod21,
        ADD_MONTHS(TO_DATE(FiscalYearMinus1 || '-11-01'),3) AS CalendarPeriod22,
        ADD_MONTHS(TO_DATE(FiscalYearMinus1 || '-12-01'),3) AS CalendarPeriod23,
        ADD_MONTHS(TO_DATE(FiscalYearMinus0 || '-01-01'),3) AS CalendarPeriod24,
        ADD_MONTHS(TO_DATE(FiscalYearMinus0 || '-02-01'),3) AS CalendarPeriod25,
        ADD_MONTHS(TO_DATE(FiscalYearMinus0 || '-03-01'),3) AS CalendarPeriod26,
        ADD_MONTHS(TO_DATE(FiscalYearMinus0 || '-04-01'),3) AS CalendarPeriod27,
        ADD_MONTHS(TO_DATE(FiscalYearMinus0 || '-05-01'),3) AS CalendarPeriod28,
        ADD_MONTHS(TO_DATE(FiscalYearMinus0 || '-06-01'),3) AS CalendarPeriod29,
        ADD_MONTHS(TO_DATE(FiscalYearMinus0 || '-07-01'),3) AS CalendarPeriod30,
        ADD_MONTHS(TO_DATE(FiscalYearMinus0 || '-08-01'),3) AS CalendarPeriod31,
        ADD_MONTHS(TO_DATE(FiscalYearMinus0 || '-09-01'),3) AS CalendarPeriod32,
        ADD_MONTHS(TO_DATE(FiscalYearMinus0 || '-10-01'),3) AS CalendarPeriod33,
        ADD_MONTHS(TO_DATE(FiscalYearMinus0 || '-11-01'),3) AS CalendarPeriod34,
        ADD_MONTHS(TO_DATE(FiscalYearMinus0 || '-12-01'),3) AS CalendarPeriod35
    FROM 
        DateCalculationsFiscalYear            
    )
SELECT
    1 AS SortOrder,
    'fiscal_year' AS DESCRIPTION,
    FiscalYearMinus2 AS "P&L_FY02_FM01",
    FiscalYearMinus2 AS "P&L_FY02_FM02",
    FiscalYearMinus2 AS "P&L_FY02_FM03",
    FiscalYearMinus2 AS "P&L_FY02_FM04",
    FiscalYearMinus2 AS "P&L_FY02_FM05",
    FiscalYearMinus2 AS "P&L_FY02_FM06",
    FiscalYearMinus2 AS "P&L_FY02_FM07",
    FiscalYearMinus2 AS "P&L_FY02_FM08",
    FiscalYearMinus2 AS "P&L_FY02_FM09",
    FiscalYearMinus2 AS "P&L_FY02_FM10",
    FiscalYearMinus2 AS "P&L_FY02_FM11",
    FiscalYearMinus2 AS "P&L_FY02_FM12",
    FiscalYearMinus1 AS "P&L_FY01_FM01",
    FiscalYearMinus1 AS "P&L_FY01_FM02",
    FiscalYearMinus1 AS "P&L_FY01_FM03",
    FiscalYearMinus1 AS "P&L_FY01_FM04",
    FiscalYearMinus1 AS "P&L_FY01_FM05",
    FiscalYearMinus1 AS "P&L_FY01_FM06",
    FiscalYearMinus1 AS "P&L_FY01_FM07",
    FiscalYearMinus1 AS "P&L_FY01_FM08",
    FiscalYearMinus1 AS "P&L_FY01_FM09",
    FiscalYearMinus1 AS "P&L_FY01_FM10",
    FiscalYearMinus1 AS "P&L_FY01_FM11",
    FiscalYearMinus1 AS "P&L_FY01_FM12",
    FiscalYearMinus0 AS "P&L_FY00_FM01",
    FiscalYearMinus0 AS "P&L_FY00_FM02",
    FiscalYearMinus0 AS "P&L_FY00_FM03",
    FiscalYearMinus0 AS "P&L_FY00_FM04",
    FiscalYearMinus0 AS "P&L_FY00_FM05",
    FiscalYearMinus0 AS "P&L_FY00_FM06",
    FiscalYearMinus0 AS "P&L_FY00_FM07",
    FiscalYearMinus0 AS "P&L_FY00_FM08",
    FiscalYearMinus0 AS "P&L_FY00_FM09",
    FiscalYearMinus0 AS "P&L_FY00_FM10",
    FiscalYearMinus0 AS "P&L_FY00_FM11",
    FiscalYearMinus0 AS "P&L_FY00_FM12"
FROM DateCalculations
UNION ALL
SELECT
    2 AS SortOrder,
    'fiscal_month' AS DESCRIPTION,
    1 AS "P&L_FY02_FM01",
    2 AS "P&L_FY02_FM02",
    3 AS "P&L_FY02_FM03",
    4 AS "P&L_FY02_FM04",
    5 AS "P&L_FY02_FM05",
    6 AS "P&L_FY02_FM06",
    7 AS "P&L_FY02_FM07",
    8 AS "P&L_FY02_FM08",
    9 AS "P&L_FY02_FM09",
    10 AS "P&L_FY02_FM10",
    11 AS "P&L_FY02_FM11",
    12 AS "P&L_FY02_FM12",
    1 AS "P&L_FY01_FM01",
    2 AS "P&L_FY01_FM02",
    3 AS "P&L_FY01_FM03",
    4 AS "P&L_FY01_FM04",
    5 AS "P&L_FY01_FM05",
    6 AS "P&L_FY01_FM06",
    7 AS "P&L_FY01_FM07",
    8 AS "P&L_FY01_FM08",
    9 AS "P&L_FY01_FM09",
    10 AS "P&L_FY01_FM10",
    11 AS "P&L_FY01_FM11",
    12 AS "P&L_FY01_FM12",
    1 AS "P&L_FY00_FM01",
    2 AS "P&L_FY00_FM02",
    3 AS "P&L_FY00_FM03",
    4 AS "P&L_FY00_FM04",
    5 AS "P&L_FY00_FM05",
    6 AS "P&L_FY00_FM06",
    7 AS "P&L_FY00_FM07",
    8 AS "P&L_FY00_FM08",
    9 AS "P&L_FY00_FM09",
    10 AS "P&L_FY00_FM10",
    11 AS "P&L_FY00_FM11",
    12 AS "P&L_FY00_FM12"
FROM DateCalculations
UNION ALL
SELECT
    3 AS SortOrder,
    'calendar_year' AS DESCRIPTION,
    YEAR(CalendarPeriod0) AS "P&L_FY02_FM01",
    YEAR(CalendarPeriod1) AS "P&L_FY02_FM02",
    YEAR(CalendarPeriod2) AS "P&L_FY02_FM03",
    YEAR(CalendarPeriod3) AS "P&L_FY02_FM04",
    YEAR(CalendarPeriod4) AS "P&L_FY02_FM05",
    YEAR(CalendarPeriod5) AS "P&L_FY02_FM06",
    YEAR(CalendarPeriod6) AS "P&L_FY02_FM07",
    YEAR(CalendarPeriod7) AS "P&L_FY02_FM08",
    YEAR(CalendarPeriod8) AS "P&L_FY02_FM09",
    YEAR(CalendarPeriod9) AS "P&L_FY02_FM10",
    YEAR(CalendarPeriod10) AS "P&L_FY02_FM11",
    YEAR(CalendarPeriod11) AS "P&L_FY02_FM12",
    YEAR(CalendarPeriod12) AS "P&L_FY01_FM01",
    YEAR(CalendarPeriod13) AS "P&L_FY01_FM02",
    YEAR(CalendarPeriod14) AS "P&L_FY01_FM03",
    YEAR(CalendarPeriod15) AS "P&L_FY01_FM04",
    YEAR(CalendarPeriod16) AS "P&L_FY01_FM05",
    YEAR(CalendarPeriod17) AS "P&L_FY01_FM06",
    YEAR(CalendarPeriod18) AS "P&L_FY01_FM07",
    YEAR(CalendarPeriod19) AS "P&L_FY01_FM08",
    YEAR(CalendarPeriod20) AS "P&L_FY01_FM09",
    YEAR(CalendarPeriod21) AS "P&L_FY01_FM10",
    YEAR(CalendarPeriod22) AS "P&L_FY01_FM11",
    YEAR(CalendarPeriod23) AS "P&L_FY01_FM12",
    YEAR(CalendarPeriod24) AS "P&L_FY00_FM01",
    YEAR(CalendarPeriod25) AS "P&L_FY00_FM02",
    YEAR(CalendarPeriod26) AS "P&L_FY00_FM03",
    YEAR(CalendarPeriod27) AS "P&L_FY00_FM04",
    YEAR(CalendarPeriod28) AS "P&L_FY00_FM05",
    YEAR(CalendarPeriod29) AS "P&L_FY00_FM06",
    YEAR(CalendarPeriod30) AS "P&L_FY00_FM07",
    YEAR(CalendarPeriod31) AS "P&L_FY00_FM08",
    YEAR(CalendarPeriod32) AS "P&L_FY00_FM09",
    YEAR(CalendarPeriod33) AS "P&L_FY00_FM10",
    YEAR(CalendarPeriod34) AS "P&L_FY00_FM11",
    YEAR(CalendarPeriod35) AS "P&L_FY00_FM12"
FROM DateCalculations
UNION ALL
SELECT
    4 AS SortOrder,
    'calendar_month' AS DESCRIPTION,
    MONTH(CalendarPeriod0) AS "P&L_FY02_FM01",
    MONTH(CalendarPeriod1) AS "P&L_FY02_FM02",
    MONTH(CalendarPeriod2) AS "P&L_FY02_FM03",
    MONTH(CalendarPeriod3) AS "P&L_FY02_FM04",
    MONTH(CalendarPeriod4) AS "P&L_FY02_FM05",
    MONTH(CalendarPeriod5) AS "P&L_FY02_FM06",
    MONTH(CalendarPeriod6) AS "P&L_FY02_FM07",
    MONTH(CalendarPeriod7) AS "P&L_FY02_FM08",
    MONTH(CalendarPeriod8) AS "P&L_FY02_FM09",
    MONTH(CalendarPeriod9) AS "P&L_FY02_FM10",
    MONTH(CalendarPeriod10) AS "P&L_FY02_FM11",
    MONTH(CalendarPeriod11) AS "P&L_FY02_FM12",
    MONTH(CalendarPeriod12) AS "P&L_FY01_FM01",
    MONTH(CalendarPeriod13) AS "P&L_FY01_FM02",
    MONTH(CalendarPeriod14) AS "P&L_FY01_FM03",
    MONTH(CalendarPeriod15) AS "P&L_FY01_FM04",
    MONTH(CalendarPeriod16) AS "P&L_FY01_FM05",
    MONTH(CalendarPeriod17) AS "P&L_FY01_FM06",
    MONTH(CalendarPeriod18) AS "P&L_FY01_FM07",
    MONTH(CalendarPeriod19) AS "P&L_FY01_FM08",
    MONTH(CalendarPeriod20) AS "P&L_FY01_FM09",
    MONTH(CalendarPeriod21) AS "P&L_FY01_FM10",
    MONTH(CalendarPeriod22) AS "P&L_FY01_FM11",
    MONTH(CalendarPeriod23) AS "P&L_FY01_FM12",
    MONTH(CalendarPeriod24) AS "P&L_FY00_FM01",
    MONTH(CalendarPeriod25) AS "P&L_FY00_FM02",
    MONTH(CalendarPeriod26) AS "P&L_FY00_FM03",
    MONTH(CalendarPeriod27) AS "P&L_FY00_FM04",
    MONTH(CalendarPeriod28) AS "P&L_FY00_FM05",
    MONTH(CalendarPeriod29) AS "P&L_FY00_FM06",
    MONTH(CalendarPeriod30) AS "P&L_FY00_FM07",
    MONTH(CalendarPeriod31) AS "P&L_FY00_FM08",
    MONTH(CalendarPeriod32) AS "P&L_FY00_FM09",
    MONTH(CalendarPeriod33) AS "P&L_FY00_FM10",
    MONTH(CalendarPeriod34) AS "P&L_FY00_FM11",
    MONTH(CalendarPeriod35) AS "P&L_FY00_FM12"
FROM DateCalculations
UNION ALL
SELECT
    5 AS SortOrder,
    'Revenues' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    6 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    7 AS SortOrder,
    '3rd Party' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    8 AS SortOrder,
    '  SW Licenses 3rd Party' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (8000,8001,8002,8003,8004,8005,8169)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    9 AS SortOrder,
    '  Maintenance 3rd Party' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (8170,8200,8201,8202,8203,8204,8205,8320,8321)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    10 AS SortOrder,
    '  Professional Services 3rd Party' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (8100,8101,8102,8103,8104,8105,8323,8650,8651,8652,8653,8654,8655,8750)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    11 AS SortOrder,
    '  Other Revenues 3rd Party' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (8700,8701,8702,8703,8704,8705,8706,8707,8708,8709,8720,8721,8723,8730,8737,8739)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    12 AS SortOrder,
    '  SaaS Revenues 3rd Party' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (8965,8967,8985)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    13 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    14 AS SortOrder,
    'Inter Company' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    15 AS SortOrder,
    '  SW Licenses IC' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (8006,8007,8008)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    16 AS SortOrder,
    '  Maintenance IC' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (8206,8207,8208,8322)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    17 AS SortOrder,
    '  Professional Services IC' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (8106,8107,8108,8361,8362,8363,8656,8657,8658)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    18 AS SortOrder,
    '  Other Revenues IC' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    19 AS SortOrder,
    '  SaaS Revenues IC' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (8966)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    20 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    21 AS SortOrder,
    'Other Operating Income' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    22 AS SortOrder,
    '  Obtained Grants' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    23 AS SortOrder,
    '  Rental Income' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (2752)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    24 AS SortOrder,
    '  Other Operating Income' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (2670,2702,2703,2720,2730,2735,2742,2743,2749,8610,8613,8616)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    25 AS SortOrder,
    '  Income from IC Charging' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (8950)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    26 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    27 AS SortOrder,
    'Costs' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    28 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    29 AS SortOrder,
    'COS' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    30 AS SortOrder,
    '  Costs of SW Licences' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (3300,3401,3402,3555,3556,3557)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    31 AS SortOrder,
    '  Other COS' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (3400,3500,3501,3502,3504,3505,3506,3507,3508,3509,3595,3597,3598,3599,3600,3730,3731,3737,3739)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    32 AS SortOrder,
    '  Costs of Maintenance' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (3210,3211,3215,3216,3217,3332)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    33 AS SortOrder,
    '  Costs of External Services' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (3100,3102,3103,3650,3651,3652)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    34 AS SortOrder,
    '  Costs of SaaS' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (3611,3612,3613)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    35 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    36 AS SortOrder,
    'Personnel' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    37 AS SortOrder,
    '  Salaries' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (2736,4100,4102,4104,4105,4106,4110,4112,4115,4119,4120,4121,4122,4123,4124,4125,4126,4127,4128,4152,4155,4190,4191,4199,6110,6120,6127,8597)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    38 AS SortOrder,
    '  Social Security Contributions' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4130,4132,4134,4138,4139,4140,4142,4145,4165,4170,6130,6140)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    39 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    40 AS SortOrder,
    'Other Operating Expenses' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    41 AS SortOrder,
    '  Rental Expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4201,4209,4210,4213)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    42 AS SortOrder,
    '  Facility Expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4240,4241,4251,4261)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    43 AS SortOrder,
    '  Vehicle Expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4510,4520,4531,4532,4541,4570,4571,4572,4575,4580,4581,4582)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    44 AS SortOrder,
    '  Non-Wage Personnel Expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4186,4946)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    45 AS SortOrder,
    '  Insurance' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4360,4362,4380,4381,4390)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    46 AS SortOrder,
    '  Communication Expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4910,4912,4920,4922,4925)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    47 AS SortOrder,
    '  Travel Expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4662,4663,4667,4668,4686,4690,4692,4695)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    48 AS SortOrder,
    '  Sales Commisions' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4760,4761)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    49 AS SortOrder,
    '  External Services' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4780,4781,6781)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    50 AS SortOrder,
    '  Legal and Consulting Expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4951,4957,6951)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    51 AS SortOrder,
    '  Marketing Expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4610,4616,4630,4635,4637,4641,4651,4652,4655,4952)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    52 AS SortOrder,
    '  Compensation for Supervisory Board' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    53 AS SortOrder,
    '  Leasing and Rent Expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4961,4963,4964)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    54 AS SortOrder,
    '  Repairments Expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4805,4809)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    55 AS SortOrder,
    '  Software Maintenance' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4785)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    56 AS SortOrder,
    '  Office Supply' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4931,4932,4933,4934,4940,4981)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    57 AS SortOrder,
    '  Other Taxes' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    58 AS SortOrder,
    '  Miscellaneous Expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (2000,2104,2300,2301,2308,2310,2315,2320,2350,2380,4732,4733,4900,4958)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    59 AS SortOrder,
    '  Other Financial Expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4970)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    60 AS SortOrder,
    '  Exchange Rate Differences' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (2150,2990)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    61 AS SortOrder,
    '  Value Adjustment' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (2400,2401,2403,2407,2460,2465,2731,2733)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    62 AS SortOrder,
    '  Expenses from IC charging' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4782,4783,4784,4901,4902,4903,4904,4905,4906)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    63 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    64 AS SortOrder,
    'EBITDA' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    65 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    66 AS SortOrder,
    'Depreciation' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (4830,4860,4870)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    67 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    68 AS SortOrder,
    'EBIT' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    69 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    70 AS SortOrder,
    'Other financial' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    71 AS SortOrder,
    ' Interest and other similar expenses' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (2100,2101,2110,2120)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    72 AS SortOrder,
    ' Other financial result' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    73 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    74 AS SortOrder,
    ' Income from participations' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (2494)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    75 AS SortOrder,
    ' Other interest and similar income' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (2650,2651,2660)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    76 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    77 AS SortOrder,
    ' Income tax' AS DESCRIPTION,
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus2
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY02_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus1
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY01_FM12",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 1 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM01",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 2 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM02",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 3 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM03",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 4 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM04",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 5 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM05",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 6 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM06",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 7 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM07",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 8 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM08",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 9 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM09",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 10 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM10",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 11 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM11",
    ROUND(
        SUM(
            CASE 
                WHEN FA_MAIN_POST_YEAR = FiscalYearMinus0
                    AND FA_MAIN_POST_PERIOD = 12 THEN 
                    FA_MAIN_POST_AMOUNT 
                    * CASE WHEN FA_MAIN_POST_DC_INDICATOR = 'C' THEN 1 ELSE -1 END
                ELSE 
                    0
            END),
        2) AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_ACCOUNT in (2200,2205,2210,2215,2219,2280,2283,2285,2289,2780,2785,4320)
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    78 AS SortOrder,
    '' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
UNION ALL
SELECT
    79 AS SortOrder,
    'Result' AS DESCRIPTION,
0 AS "P&L_FY02_FM01",
0 AS "P&L_FY02_FM02",
0 AS "P&L_FY02_FM03",
0 AS "P&L_FY02_FM04",
0 AS "P&L_FY02_FM05",
0 AS "P&L_FY02_FM06",
0 AS "P&L_FY02_FM07",
0 AS "P&L_FY02_FM08",
0 AS "P&L_FY02_FM09",
0 AS "P&L_FY02_FM10",
0 AS "P&L_FY02_FM11",
0 AS "P&L_FY02_FM12",
0 AS "P&L_FY01_FM01",
0 AS "P&L_FY01_FM02",
0 AS "P&L_FY01_FM03",
0 AS "P&L_FY01_FM04",
0 AS "P&L_FY01_FM05",
0 AS "P&L_FY01_FM06",
0 AS "P&L_FY01_FM07",
0 AS "P&L_FY01_FM08",
0 AS "P&L_FY01_FM09",
0 AS "P&L_FY01_FM10",
0 AS "P&L_FY01_FM11",
0 AS "P&L_FY01_FM12",
0 AS "P&L_FY00_FM01",
0 AS "P&L_FY00_FM02",
0 AS "P&L_FY00_FM03",
0 AS "P&L_FY00_FM04",
0 AS "P&L_FY00_FM05",
0 AS "P&L_FY00_FM06",
0 AS "P&L_FY00_FM07",
0 AS "P&L_FY00_FM08",
0 AS "P&L_FY00_FM09",
0 AS "P&L_FY00_FM10",
0 AS "P&L_FY00_FM11",
0 AS "P&L_FY00_FM12"
    FROM 
        $schema.$table  
    CROSS JOIN
        DateCalculations
    WHERE
        COMPANY = 21
        AND FA_MAIN_POST_DATE >= CalendarPeriod0
ORDER BY SortOrder
