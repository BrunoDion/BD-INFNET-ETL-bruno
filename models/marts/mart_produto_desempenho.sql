SELECT
    p.id_produto,
    p.nome,
    p.nome_categoria,

    SUM(f.quantidade) AS unidades_vendidas,

    SUM(f.valor_total_item) AS faturamento_total

FROM {{ ref('dim_produto') }} p

LEFT JOIN {{ ref('fato_vendas') }} f
    ON p.id_produto = f.produto_id

GROUP BY
    p.id_produto,
    p.nome,
    p.nome_categoria