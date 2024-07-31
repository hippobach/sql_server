-- Viet cau lenh sql tim gia tri thap nhat cua cac san pham trong bang Products
SELECT MIN(p.[UnitPrice]) as "Min Price"
FROM [dbo].[Products] as p

-- Viet cau lenh lay ra ngay dat hang gan day nhat tu bang Orders
SELECT MAX(o.[OrderDate]) as "Max Date"
FROM [dbo].[Orders] as o

-- Viet cau lenh sql tim ra so luong hang ton kho (UnitInStock) lon nhat
SELECT MAX(p.[UnitsInStock]) as "Inventory"
FROM [dbo].[Products] as p