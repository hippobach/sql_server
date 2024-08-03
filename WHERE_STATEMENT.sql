-- Liet ke tat ca cac nhan vien den tu thanh pho London
SELECT *
FROM [dbo].[Employees]
WHERE [City] = 'London'
--
SELECT *
FROM [dbo].[Employees]
WHERE [City] = 'London'
ORDER BY [LastName] ASC

-- Liet ke tat ca cac don hang giao muon, biet rang ngay phai giao hang RequireDate, ngay giao hang thuc te la ShippedDate
SELECT [OrderID], [RequiredDate], [ShippedDate]
FROM [dbo].[Orders]
WHERE [ShippedDate] > [RequiredDate]

SELECT COUNT(*) AS "LateOrders"
FROM [dbo].[Orders]
WHERE [ShippedDate] > [RequiredDate]

-- Lay ra tat ca cac don hang chi tiet duoc giam gia nhieu hon 20%
SELECT *
FROM [dbo].[Order Details]
WHERE [Discount] > 0.2

-- Liet ke tat ca cac don hang duoc gui den tu quoc gia la "France"
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'France'

-- Liet ke cac san pham co so luong hang trong kho (UnitsInStock) lon hon 20
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] > 20