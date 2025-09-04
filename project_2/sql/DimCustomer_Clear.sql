-- DimCustomer_Clear --

SELECT c.[CustomerKey],
       c.[FirstName],
       c.[LastName],
       c.[FirstName] + '' + c.[LastName] AS FullName,
       CASE c.[Gender]
           WHEN 'M' THEN 'Male'
           WHEN 'f' THEN 'Female'
       END AS Gender,
       c.[DateFirstPurchase],
       g.[City] AS CustomerCity
FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey
ORDER BY [CustomerKey] ASC
