-- Liet ke tat ca cac san pham co so luong trong kho (UnitsInStock) thuoc khoang nho hon 50 hoac lon hon 100
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] < 50 OR [UnitsInStock] > 100

-- Liet ke tat ca cac don hang duoc giao den Brazil da bi giao muon, biet rang ngay can giao hang la RequiredDate, ngay giao hang thuc te la ShippedDate
SELECT [OrderID]
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'Brazil' AND [RequiredDate] < [ShippedDate]

-- Lay ra tat ca cac san pham co gia duoi 100$ va ma the loai khac 1
SELECT [ProductID]
FROM [dbo].[Products]
WHERE NOT([UnitPrice] >= 100 OR [CategoryID] = 1)

-- Liet ke tat ca cac don hang co gia van chuyen Freight trong khoang [50,100]$
SELECT [OrderID]
FROM [dbo].[Orders]
WHERE [Freight] >= 50 AND [Freight] <= 100

-- Liet ke cac san pham co so luong hang trong kho (UnitsInStock) lon hon 20 va so luong hang trong don hang (UnitsInOrder) nho hon 20
SELECT [ProductID], [ProductName]
FROM [dbo].[Products]
WHERE [UnitsInStock] > 20 AND [UnitsOnOrder] < 20
