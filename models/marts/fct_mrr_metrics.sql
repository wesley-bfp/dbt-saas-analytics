
select
    plan_type,
    status,
    sum(monthly_revenue) as total_mrr,
    count(customer_id) as total_customers
from {{ ref('stg_subscriptions') }}
group by 1, 2
