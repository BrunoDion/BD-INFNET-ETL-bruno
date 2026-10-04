{{ config(materialized='table') }}

SELECT
    id_cliente,
    nome,
    telefone,
    cep,
    logradouro,
    numero_residencial,
    endereco_completo
FROM {{ ref('silver_cliente') }}