SELECT
    customer_id
    trim(customer_name) as customer_name
    upper(city) as city
FROM {{ source('britmart_raw', 'customers') }}