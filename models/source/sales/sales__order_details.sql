select
       [orderid] AS [order_id]
      ,[productid] AS [product_id]
      ,[unitprice] AS [unit_price]
      ,[qty] as [quantity]
      ,[discount]
from {{ source('sales','OrderDetails')}}