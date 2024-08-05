-- Lay danh sach cac san pham co gia ban trong khoang tu 10 den 20$
SELECT [ProductID], [ProductName]
FROM [dbo].[Products]
WHERE [UnitPrice] BETWEEN 10 AND 20

-- Lay ra nhung don dat hang trong khoang thoi gian tu ngay 1996-07-01 den ngay 1996-07-31
SELECT [OrderID]
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31'

-- Tinh tong so tien van chuyen (Freight) cua cac don hang duoc dat trong khoang thoi gian tu ngay 1996-07-01 den ngay 1996-07-31
SELECT SUM([Freight]) AS "Total"
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31'

-- Lay danh sach cac don dat hang co ngay dat hang trong khoang tu ngay 1/1/1997 den ngay 31/12/1997 va duoc van chuyen bang tau thuy (ShipVia = 3)
SELECT [OrderID],[ShipVia]
FROM [dbo].[Orders]
WHERE [ShipVia] = 3 AND [OrderDate] BETWEEN '1996-01-01' AND '1996-12-31'