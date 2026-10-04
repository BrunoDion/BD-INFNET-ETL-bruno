{% test unique_columns(model, column_name) %}

    SELECT
        {{ adapter.quote(column_name) }} AS valor,
        COUNT(*) AS quantidade
    FROM {{ model }}
    GROUP BY {{ adapter.quote(column_name) }}
    HAVING COUNT(*) > 1

{% endtest %}