-- JOIN: Các câu lệnh kết hợp nhiều bảng
-- INNER JOIN (JOIN): trả về tất cả các hàng khi có ít nhất một giá trị ở cả hai bảng

-- Từ bảng Products và Categories hãy lấy ra các thông tin sau:
--Mã thể loại
--Tên thể loại
--Mã sản phẩm
--Tên sản phẩm
SELECT c.[CategoryID], c.[CategoryName], p.[ProductID], p.[ProductName]
FROM [dbo].[Categories] c
INNER JOIN [dbo].[Products] p
ON c.[CategoryID] = p.[CategoryID]

-- Từ bảng Products và Categories hãy lấy ra các thông tin sau:
--Mã thể loại
--Tên thể loại
--Số lượng sản phẩm
SELECT c.[CategoryID], c.[CategoryName], COUNT(p.[ProductID])
FROM [dbo].[Categories] c
INNER JOIN [dbo].[Products] p
ON c.[CategoryID] = p.[CategoryID]
GROUP BY c.[CategoryID], c.[CategoryName]

-- Sử dụng phép JOIN hãy in ra các thông tin sau: mã đơn hàng, tên công ty khách hàng
SELECT o.[OrderID], c.[CompanyName]
FROM [dbo].[Orders] o
INNER JOIN [dbo].[Customers] c
ON o.[CustomerID] = c.[CustomerID]

-- LEFT OUTER JOIN (LEFT JOIN): trả lại tất cả các dòng từ bảng bên trái, và các dòng đúng với điều kiện từ bảng bên phải

-- Từ bảng Products và Categories hãy lấy ra các thông tin sau:
--Mã thể loại
--Tên thể loại
--Mã sản phẩm
--Tên sản phẩm
SELECT c.[CategoryID], c.[CategoryName], p.[ProductID], p.[ProductName]
FROM [dbo].[Categories] c
LEFT JOIN [dbo].[Products] p
ON c.[CategoryID] = p.[CategoryID]

-- Từ bảng Products và Categories hãy lấy ra các thông tin sau:
--Mã thể loại
--Tên thể loại
--Số lượng sản phẩm
SELECT c.[CategoryID], c.[CategoryName], COUNT(p.[ProductID])
FROM [dbo].[Categories] c
LEFT JOIN [dbo].[Products] p
ON c.[CategoryID] = p.[CategoryID]
GROUP BY c.[CategoryID], c.[CategoryName]

-- RIGHT OUTER JOIN (RIGHT JOIN): trả lại tất cả các dòng từ bảng bên trái, và các dòng đúng với điều kiện từ bảng bên phải
SELECT c.[CategoryID], c.[CategoryName], p.[ProductID], p.[ProductName]
FROM [dbo].[Categories] c
RIGHT JOIN [dbo].[Products] p
ON c.[CategoryID] = p.[CategoryID]

-- Sử dụng RIGHT JOIN in ra các thông tin sau: mã đơn hàng, tên công ty khách hàng
SELECT c.[CompanyName], COUNT(o.[OrderID])
FROM [dbo].[Orders] o
RIGHT JOIN [dbo].[Customers] c
ON o.[CustomerID] = c.[CustomerID]
GROUP BY c.[CompanyName]

-- FULL OUTER JOIN (FULL JOIN): trả về tất cả các dòng đúng với 1 trong các bảng

--Từ bảng Products và Categories hãy in ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Mã sản phẩm
--Tên sản phẩm
SELECT c.[CategoryID], c.[CategoryName], p.[ProductID], p.[ProductName]
FROM [dbo].[Categories] c
FULL OUTER JOIN [dbo].[Products] p
ON c.[CategoryID] = p.[CategoryID]
