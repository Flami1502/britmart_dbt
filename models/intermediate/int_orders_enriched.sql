SELECT 
    o.order_id
    o.customer_id
    c.customer_name
    c.city
    o.amount_gbp
    o.status
FROM {{ ref(stg_orders) }} o
INNER JOIN {{ ref(stg_customers) }} c ON c.customer_id = o.customer_id