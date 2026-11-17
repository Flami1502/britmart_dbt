select
    order_id,
    customer_id,
    city,
    amount_gbp
from {{ ref('stg_orders') }}
where status = 'complete'