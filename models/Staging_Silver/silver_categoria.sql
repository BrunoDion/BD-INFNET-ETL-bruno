SELECT
    id_categoria,

    {{ padronizar_maiusculo('nome') }} AS nome_categoria

FROM {{ source('consumo', 'stg_categoria') }}