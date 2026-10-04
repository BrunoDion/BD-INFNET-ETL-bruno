SELECT
    id_produto,
    nome,
    categoria_id
FROM {{ source('consumo', 'stg_produto') }}