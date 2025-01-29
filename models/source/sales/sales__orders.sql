select
       [orderid] AS [order_id]
      ,[custid] AS [customer_id]
      ,[orderdate] AS [order_date]
      ,upper([shipcountry]) as [ship_country]
from {{ source('sales','Orders')}}