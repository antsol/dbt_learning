SELECT [customer_Id]
      ,[company_name]
      ,[contact_name]
      ,[contact_title]
      ,[address]
      ,[city]
      ,[region]
      ,[postalcode]
      ,[country]
      ,[phone]
      ,[fax]
      ,{{ continent ('country')}} as continent
  FROM {{ref('sales__customers')}}