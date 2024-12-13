WITH CTE_bill_to_addresses__customers_ AS (
    SELECT DISTINCT
        s_adresse_bundesland__022_ AS "S_Adresse.Bundesland"
        ,s_adresse_staat__005_ AS "S_Adresse.Staat"
    FROM 
        mig.PROJECT_bill_to_addresses__customers_
)
,CTE_ship_to_addresses__customers_ AS (
    SELECT DISTINCT
        s_adresse_bundesland__025_ AS "S_Adresse.Bundesland"
        ,s_adresse_staat__008_ AS "S_Adresse.Staat"
    FROM 
        mig.PROJECT_ship_to_addresses__customers_
)
,CTE_customers AS (
    SELECT DISTINCT
        s_adresse_bundesland__021_ AS "S_Adresse.Bundesland"
        ,s_adresse_staat__004_ AS "S_Adresse.Staat"
    FROM 
        mig.PROJECT_customers
)
,CTE_suppliers AS (
    SELECT DISTINCT
        s_adresse_bundesland__021_ AS "S_Adresse.Bundesland"
        ,s_adresse_staat__004_ AS "S_Adresse.Staat"
    FROM 
        mig.PROJECT_suppliers
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
    , NULL as "target S_Adresse.Bundesland"
        ,NULL as "target S_Adresse.Staat"
FROM
    CTE_ALL_DISTINCT cte