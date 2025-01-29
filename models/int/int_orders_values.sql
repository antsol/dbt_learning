select
    order_id,
    sum(quantity*unit_price - discount) as order_value
from {{ref('sales__order_details')}} as details
group by order_id
