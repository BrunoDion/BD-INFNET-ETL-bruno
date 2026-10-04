SELECT
    c.id_cliente,
    c.nome,

    COUNT(DISTINCT p.id_pedido) AS quantidade_pedidos,

    SUM(d.valor_total_item) AS total_gasto,

    MAX(p.data_pedido) AS ultima_compra

FROM {{ ref('silver_cliente') }} c

LEFT JOIN {{ ref('silver_pedido') }} p
    ON c.id_cliente = p.cliente_id

LEFT JOIN {{ ref('silver_detalhe_pedido') }} d
    ON p.id_pedido = d.pedido_id

GROUP BY
    c.id_cliente,
    c.nome