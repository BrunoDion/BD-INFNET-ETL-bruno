{% test not_null_columns(model, column_name) %}

    SELECT *
    FROM {{ model }}
    WHERE {{ adapter.quote(column_name) }} IS NULL

{% endtest %}