{% macro padronizar_maiusculo(coluna) %}

    UPPER(TRIM({{ coluna }}))

{% endmacro %}