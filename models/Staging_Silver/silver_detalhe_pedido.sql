SELECT
    pedido_id,
    produto_id,
    quantidade,
    valor_unitario,

    quantidade * valor_unitario AS valor_total_item

FROM {{ source('consumo', 'stg_detalhe_pedido') }}