{{ config(materialized='table') }}

SELECT
    p.id_produto,
    p.nome,
    p.categoria_id,
    c.nome_categoria
FROM {{ ref('silver_produto') }} p
LEFT JOIN {{ ref('silver_categoria') }} c
    ON p.categoria_id = c.id_categoria