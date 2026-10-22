-- Seed-based example; in real projects, use source() for raw inputs.
select
    cast(order_id as integer) as order_id,
    cast(amount as decimal(18, 2)) as amount
from {{ ref('sample_orders') }}
