-- I: Từ bảng Order Details hãy liệt kê các đơn đặt hàng có Unit Price trong phạm vi từ 100 đến 200
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200

--II: Từ bảng Order Details hãy liệt kê các đơn hàng có số lượng Quantity là 10 hoặc 20
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [Quantity] IN (10,20)

--III: Từ bảng Order Details hãy liệt kê các đơn đặt hàng có Unit Price trong phạm vi từ 100 đến 200 VÀ có số lượng Quantity là 10 hoặc 20
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200 AND [Quantity] IN (10,20)

--IV: Từ bảng Order Details hãy liệt kê các đơn đặt hàng có Unit Price trong phạm vi từ 100 đến 200 HOẶC có số lượng Quantity là 10 hoặc 20
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200 OR [Quantity] IN (10,20)
ORDER BY [OrderID]

--V: Từ bảng Order Details hãy liệt kê các đơn đặt hàng có Unit Price trong phạm vi từ 100 đến 200 HOẶC có số lượng Quantity là 10 hoặc 20 có sử dụng DISTINCT
SELECT DISTINCT [OrderID]
FROM [dbo].[Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200 OR [Quantity] IN (10,20)
ORDER BY [OrderID]

-- UNION: Kết hợp các kết quả
-- I OR II => V (DISTINCT)
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200
UNION
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [Quantity] IN (10,20)

-- I OR II => IV
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200
UNION ALL 
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [Quantity] IN (10,20)

-- Hãy liệt kê toàn bộ các thành phố và quốc gia tồn tại trong cả 2 tables Suppliers và Customers với 2 tình huống sử dụng UNION và UNION ALL
SELECT [Country]
FROM [dbo].[Customers]
UNION
SELECT [Country]
FROM [dbo].[Suppliers]

SELECT [Country]
FROM [dbo].[Customers]
UNION ALL
SELECT [Country]
FROM [dbo].[Suppliers]
