-- FactInternetSales_Clear --

SELECT [ProductKey],
       [OrderDateKey],
       [DueDateKey],
       [ShipDateKey],
       [CustomerKey],
       [SalesOrderNumber],
       [SalesAmount]
FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
WHERE LEFT (OrderDateKey,
            4) >= YEAR(GETDATE()) -2 -- always look at the last two years
ORDER BY OrderDateKey ASC
