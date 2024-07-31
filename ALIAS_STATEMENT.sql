-- Viet cau lenh sql lay CompanyName va dat ten thay the la CongTy va PostalCode voi ten thay the la MaBuuDien
SELECT [CompanyName] as CongTy, [PostalCode] as "Ma Buu Dien"
FROM [dbo].[Customers]

-- Viet cau lenh sql lay ra FirstName voi ten thay the la Ten va LastName voi ten thay the la Ho
SELECT [FirstName] as Ten, [LastName] as Ho
FROM [dbo].[Employees]

-- Viet cau lenh sql lay ra 15 dong dau tien tat ca cac cot trong bang Orders, dat ten thay the cho bang Orders la 'o'
SELECT TOP 15 [o].*
FROM [dbo].[Orders] as o

-- Viet cau lenh sql lay ra cac cot va dat ten thay the nhu sau:
-- ProductName => Ten San Pham
-- SupplierID => Ma Nha Cung Cap
-- CategoryID => Ma The Loai
-- va dat ten thay the cho bang Products la 'p', su dung ten thay the khi truy van cac cot ben tren, chi lay ra 5 san pham dau tien trong bang
SELECT TOP 5 p.[ProductName] as "Ten San Pham", p.[SupplierID] as "Ma Nha Cung Cap", p.[CategoryID] as "Ma The Loai"
FROM [dbo].[Products] as p