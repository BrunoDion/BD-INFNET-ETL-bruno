{% macro formatar_endereco(logradouro, numero, cep) %}

    CONCAT(
        TRIM({{ logradouro }}),
        ', ',
        CAST({{ numero }} AS STRING),
        ' - ',
        SUBSTR(CAST({{ cep }} AS STRING), 1, 5),
        '-',
        SUBSTR(CAST({{ cep }} AS STRING), 6, 3)
    )

{% endmacro %}