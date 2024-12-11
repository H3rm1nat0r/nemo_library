WITH CTE_bill_to_addresses__customers_ AS (
    SELECT DISTINCT
        s_adresse_bundesland__022_ AS "S_Adresse.Bundesland"
        ,s_adresse_staat__005_ AS "S_Adresse.Staat"
    FROM 
        PROJECT_bill_to_addresses__customers_
)
,CTE_ship_to_addresses__customers_ AS (
    SELECT DISTINCT
        s_adresse_bundesland__025_ AS "S_Adresse.Bundesland"
        ,s_adresse_staat__008_ AS "S_Adresse.Staat"
    FROM 
        PROJECT_ship_to_addresses__customers_
)
,CTE_customers AS (
    SELECT DISTINCT
        s_adresse_bundesland__021_ AS "S_Adresse.Bundesland"
        ,s_adresse_staat__004_ AS "S_Adresse.Staat"
    FROM 
        PROJECT_customers
)
,CTE_suppliers AS (
    SELECT DISTINCT
        s_adresse_bundesland__021_ AS "S_Adresse.Bundesland"
        ,s_adresse_staat__004_ AS "S_Adresse.Staat"
    FROM 
        PROJECT_suppliers
)
,CTE_ALL AS (
        SELECT
    "S_Adresse.Bundesland"
        ,"S_Adresse.Staat"
    FROM 
        CTE_bill_to_addresses__customers_
UNION ALL
        SELECT
    "S_Adresse.Bundesland"
        ,"S_Adresse.Staat"
    FROM 
        CTE_ship_to_addresses__customers_
UNION ALL
        SELECT
    "S_Adresse.Bundesland"
        ,"S_Adresse.Staat"
    FROM 
        CTE_customers
UNION ALL
        SELECT
    "S_Adresse.Bundesland"
        ,"S_Adresse.Staat"
    FROM 
        CTE_suppliers)
,CTE_ALL_DISTINCT AS (
    SELECT DISTINCT
        "S_Adresse.Bundesland"
        ,"S_Adresse.Staat"
    FROM 
        CTE_ALL
)
SELECT
    cte."S_Adresse.Bundesland" as "source S_Adresse.Bundesland"
        ,cte."S_Adresse.Staat" as "source S_Adresse.Staat"
    , mapping.TARGET_s_adresse_bundesland as "target S_Adresse.Bundesland"
        ,mapping.TARGET_s_adresse_staat as "target S_Adresse.Staat"
FROM
    CTE_ALL_DISTINCT cte
LEFT JOIN
    mig.PROJECT_mapping_s_adresse_bundesland mapping
ON  
    mapping.SOURCE_s_adresse_bundesland = cte."S_Adresse.Bundesland"
         AND mapping.SOURCE_s_adresse_staat = cte."S_Adresse.Staat"