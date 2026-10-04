{% test relationship_columns(model, column_name, to_model, to_field) %}

    SELECT origem.*
    FROM {{ model }} AS origem

    LEFT JOIN {{ to_model }} AS destino
        ON origem.{{ adapter.quote(column_name) }}
         = destino.{{ adapter.quote(to_field) }}

    WHERE origem.{{ adapter.quote(column_name) }} IS NOT NULL
      AND destino.{{ adapter.quote(to_field) }} IS NULL

{% endtest %}