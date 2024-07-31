-- Viet cau lenh sql lay ra ten cac quoc gia khac nhau tu bang Customers
SELECT DISTINCT [Country]
FROM [dbo].[Customers]

-- Viet cau lenh sql lay ra ma buu dien tu bang Suppliers
SELECT DISTINCT [PostalCode]
FROM [dbo].[Suppliers]

-- Viet cau lenh sql lay ra cac du lieu khac nhau ve ho cua nhan vien (LastName) va cach goi danh hieu lich su (TitleOfCourtesy) cua nhan vien tu bang Employees
SELECT DISTINCT [LastName], [TitleOfCourtesy]
FROM [dbo].[Employees]

SELECT DISTINCT TitleOfCourtesy 
FROM Employees

-- Viet cau leh sql lay ra ma don vi van chuyen (shipvia) khac nhau cua cac don hang tu bang Orders
SELECT DISTINCT [ShipVia]
FROM [dbo].[Orders]