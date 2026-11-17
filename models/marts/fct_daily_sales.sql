select
    order_date,
    city,
    count(*) as order_count,
    sum(amount_gbp) as revenue_gbp
from {{ ref('int_orders_enriched') }}
where status = 'complete'
group by
    order_date,
    city
