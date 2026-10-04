{{ config(materialized='table') }}

SELECT
    d.pedido_id,
    p.cliente_id,
    d.produto_id,
    p.data_pedido,
    d.quantidade,
    d.valor_unitario,
    d.valor_total_item

FROM {{ ref('silver_detalhe_pedido') }} d

INNER JOIN {{ ref('silver_pedido') }} p
    ON d.pedido_id = p.id_pedido