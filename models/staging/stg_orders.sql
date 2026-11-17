-- models/staging/stg_orders.sql

SELECT 
    order_id, 
    customer_id, 
    amount_gbp, 
    status
FROM {{ source('britmart_raw','orders') }}
where order_id is not null