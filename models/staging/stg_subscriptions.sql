
with source as (
    select * from {{ ref('raw_subscriptions') }}
)
select
    sub_id,
    customer_id,
    upper(plan_name) as plan_type,
    status,
    cast(price as float) as monthly_revenue,
    cast(created_at as date) as start_date
from source
