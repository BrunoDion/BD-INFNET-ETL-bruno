SELECT
    id_cliente,
    nome,
    telefone,
    cep,
    logradouro,
    numero_residencial,

    {{ formatar_endereco(
        'logradouro',
        'numero_residencial',
        'cep'
    ) }} AS endereco_completo

FROM {{ source('consumo', 'stg_cliente') }}