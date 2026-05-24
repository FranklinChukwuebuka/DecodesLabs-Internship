--viewing all data
SELECT * FROM [dbo].[Datasets]
SELECT OrderID, CustomerID, Product,TotalPrice FROM [dbo].Datasets 
-- Orders with a Specific status
SELECT * FROM [dbo].Datasets WHERE OrderStatus = 'Delivered'
SELECT * FROM [dbo].Datasets WHERE OrderStatus = 'Cancelled'
SELECT * FROM [dbo].Datasets WHERE OrderStatus = 'Shipped'
-- High value orders
SELECT * FROM [dbo].Datasets WHERE TotalPrice > 500
-- Most expensive orders first
SELECT OrderID, Product, TotalPrice FROM [DBO].Datasets ORDER BY TotalPrice DESC
-- Earliest orders first
SELECT OrderID, Date, CustomerID FROM [dbo].Datasets ORDER BY Date ASC
-- GROUP BY; Revenue by Payment method
SELECT PaymentMethod, SUM(TotalPrice) AS Revenue FROM [dbo].Datasets GROUP BY PaymentMethod
-- Total number of orders
SELECT COUNT(*) AS TotalOrders From [dbo].[Datasets]
-- Total Revenue
SELECT SUM(TotalPrice) AS TotalRevenue FROM [dbo].Datasets
-- Average order value
SELECT AVG(TotalPrice) AS AvgOrderValue FROM [dbo].Datasets