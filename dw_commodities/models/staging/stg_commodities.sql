-- Import

WITH source AS (
    SELECT
        "Date"
        ,"Close"
        ,"simbolo"
    FROM {{ source('dbcommodities_0dhf', 'commodities') }}
),

-- renamed


renamed AS (

    SELECT
        CAST("Date" AS Date) AS data
        ,"Close" AS valor_fechamento
        ,simbolo
    FROM source
)


-- select

SELECT
    *
FROM renamed