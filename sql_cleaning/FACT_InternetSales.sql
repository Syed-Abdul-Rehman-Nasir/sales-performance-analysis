SELECT 
  ProductKey,
  OrderDateKey,
  DueDateKey,
  ShipDateKey,
  CustomerKey,
  SalesOrderNumber,
  SalesAmount
FROM dbo.FactInternetSales
WHERE OrderDateKey >= 
(
  SELECT MIN(DateKey)
  FROM dbo.DimDate
  WHERE CalendarYear >= YEAR(GETDATE()) - 2
)
ORDER BY OrderDateKey ASC;