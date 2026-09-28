WITH source_data AS (
    SELECT *
    FROM {{ source('northwind_data', 'orders') }}
)
SELECT
    order_id
    ,customer_id
    ,employee_id
    ,orderdate::DATE AS order_date
    ,requireddate::DATE AS required_date
    ,shippeddate::DATE AS shipped_date
    ,ship_via
    ,ship_city
    ,ship_country
FROM source_data
