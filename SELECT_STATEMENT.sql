-- SELECT
-- Viet cau lenh sql lay ra ten cua tat ca cac san pham
SELECT [ProductName]
FROM [dbo].[Products]

-- Viet cau lenh sql lay ra ten san pham, gia ban tren moi don vi, so luong san pham tren don vi do
SELECT [ProductName], [UnitPrice], [QuantityPerUnit]
FROM [dbo].[Products]

-- Viet cau lenh sql lay ra ten cong ty cua khach hang va quoc gia cua khach hang do
SELECT [CompanyName], [Country]
FROM [dbo].[Customers]

SELECT Address
FROM Customers

-- Viet cau lenh sql lay ra ten cong ty va so dien thoai cua tat ca cac nha cung cap hang
SELECT [CompanyName], [Phone]
FROM [dbo].[Suppliers]

-- Viet cau lenh sql lay ra tat ca du lieu tu bang Products
SELECT * FROM Products