-- GROUP BY: gom nhom cac du lieu co cung gia tri

-- Hay cho biet moi khach hang da dat bao nhieu don hang
SELECT [CustomerID], COUNT([OrderID]) AS "TotalOrders"
FROM [dbo].[Orders]
GROUP BY [CustomerID]

-- Hay tinh gia tri don hang trung binh theo moi nha cung cap san pham
SELECT [SupplierID], AVG([UnitPrice]) AS "AVG_Price"
FROM [dbo].[Products]
GROUP BY [SupplierID]

-- Hay cho biet moi the loai co tong bao nhieu san pham trong kho (UnitsInStock)
SELECT [CategoryID], SUM([UnitsInStock]) AS "Total"
FROM [dbo].[Products]
GROUP BY [CategoryID]

-- Hay cho biet gia van chuyen thap nhat va lon nhat cua cac don hang theo tung thanh pho va quoc gia 
SELECT [ShipCountry], [ShipCity], MIN([Freight]) AS "Min_Freight", MAX([Freight]) AS "Max_Freight"
FROM [dbo].[Orders]
GROUP BY [ShipCountry], [ShipCity]
ORDER BY [ShipCountry], [ShipCity] ASC

--Hay thong ke so luong nhan vien theo tung quoc gia khac nhau
SELECT [Country], COUNT([EmployeeID]) AS "TotalEmployees"
FROM [dbo].[Employees]
GROUP BY [Country]

