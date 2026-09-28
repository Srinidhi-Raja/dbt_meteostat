WITH source_data AS (
    SELECT *
    FROM {{ source('northwind_data', 'customers') }}
)
SELECT
    customer_id
    ,company_name
    ,contact_name
    ,city
    ,country
FROM source_data
