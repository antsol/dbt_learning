select
       orders.[order_id]
      ,orders.[customer_id]
      ,orders.[order_date]
      ,orders.[ship_country]
      ,{{ continent ('orders.[ship_country]')}} as continent
      ,details.order_value
from {{ ref('sales__orders')}} as orders
left join {{ ref('int_orders_values')}} as details
    on orders.order_id = details.order_id
