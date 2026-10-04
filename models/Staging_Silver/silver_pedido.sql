SELECT
    id_pedido,
    cliente_id,
    data_pedido,

    DATE(data_pedido) AS data_pedido_date,
    TIME(data_pedido) AS hora_pedido

FROM {{ source('consumo', 'stg_pedido') }}