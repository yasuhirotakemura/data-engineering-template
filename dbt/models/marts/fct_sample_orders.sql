select
    order_id,
    amount
from {{ ref('stg_sample__orders') }}
