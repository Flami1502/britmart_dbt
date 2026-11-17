select
    order_id,
    order_date,
    cast(amount_text as decimal(10,2)) as amount_gbp
from {{ source('britmart_raw', 'orders') }}