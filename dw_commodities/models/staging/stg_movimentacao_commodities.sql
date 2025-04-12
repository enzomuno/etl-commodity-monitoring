-- import

WITH source AS (

    SELECT
        date
        ,symbol
        ,action
        ,quantity
    FROM {{ source('dbcommodities_0dhf', 'movimentacao_commodities') }}

),



-- renamed
renamed as (
    select
        cast(date as date) as data,
        symbol as simbolo,
        action as acao,
        quantity as quantidade
    from source
)


-- select

select
    data,
    simbolo,
    acao,
    quantidade
from renamed