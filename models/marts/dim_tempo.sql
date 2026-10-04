{{ config(materialized='table') }}

SELECT DISTINCT
    DATE(data_pedido) AS data,
    EXTRACT(YEAR FROM data_pedido) AS ano,
    EXTRACT(MONTH FROM data_pedido) AS numero_mes,
    EXTRACT(QUARTER FROM data_pedido) AS trimestre  

FROM {{ ref('silver_pedido') }}