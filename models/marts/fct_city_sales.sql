SELECT
    city,
    count(order_id),
    sum(amount_gbp)
from {{ ref('int_completed_orders') }}
group by city