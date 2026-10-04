{% macro texto_na(coluna) %}

    COALESCE(NULLIF(TRIM({{ coluna }}), ''), 'N/A')

{% endmacro %}