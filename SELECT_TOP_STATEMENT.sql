-- Viet cau lenh sql lay ra 05 dong dau tien trong bang Customers
SELECT TOP 5 *
FROM [dbo].[Customers]

-- Viet cau lenh sql lay ra 30% nhan vien cua cong ty hien tai tu bang Employees
SELECT TOP 30 PERCENT *
FROM [dbo].[Employees]

-- Viet cau lenh sql lay ra ma cac khach hang voi quy dinh cac ma khach hang khong duoc trung lap, chi lay 5 dong du lieu dau tien
SELECT DISTINCT TOP 5 [CustomerID]
FROM [dbo].[Orders]