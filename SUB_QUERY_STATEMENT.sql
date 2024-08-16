-- Sub Query: câu truy vấn con
-- Câu truy vấn con trong SQL là một truy vấn SELECT được viết bên trong một truy vấn SELECT, UPDATE, INSERT hoặc DELETE khác.
--Subquery hoạt động như một bảng ảo tạm thời, nó được sử dụng để trích xuất thông tin từ các bảng hoặc tập dữ liệu khác trong cùng một truy vấn

--1: Liệt kê ra toàn bộ sản phẩm
SELECT [ProductID], [ProductName], [UnitPrice]
FROM [dbo].[Products]

--2: Tìm giá trung bình của cac sản phẩm
SELECT AVG([UnitPrice])
FROM [dbo].[Products]

--3: Lọc những sản phẩm có giá lớn hơn giá trung bình
SELECT [ProductID], [ProductName], [UnitPrice]
FROM [dbo].[Products]
WHERE [UnitPrice] > (
	SELECT AVG([UnitPrice])
	FROM [dbo].[Products]
)

--4: Lọc ra những khách hàng có số đơn hàng lớn hơn 10
SELECT c.[CustomerID], c.[CompanyName], COUNT(o.[OrderID]) AS "TotalOrders"
FROM [dbo].[Customers] c
LEFT JOIN [dbo].[Orders] o
ON c.[CustomerID] = o.[CustomerID]
GROUP BY c.[CustomerID], c.[CompanyName]
HAVING COUNT(o.[OrderID]) > 10

-- Subquery
SELECT *
FROM [dbo].[Customers]
WHERE [CustomerID] IN (
	SELECT [CustomerID]
	FROM [dbo].[Orders]
	GROUP BY [CustomerID]
	HAVING COUNT([OrderID]) > 10
)

--5: Tính tổng cho từng đơn hàng
SELECT o.*, 
	(
		SELECT SUM(od.[Quantity] * od.[UnitPrice])
		FROM [dbo].[Order Details] od
		WHERE o.[OrderID] = od.[OrderID]
	) AS "TotalPrice"
FROM [dbo].[Orders] o

--6: Lọc ra tên sản phẩm và tổng số đơn hàng của sản phẩm
SELECT p.ProductID, p.ProductName, (
	SELECT COUNT(*)
	FROM [dbo].[Order Details] od
	WHERE od.ProductID = p.ProductID
) AS "TotalProducts"
FROM [dbo].[Products] p

--7: Hãy in ra mã đơn hàng, số lượng sản phẩm của đơn hàng đó
SELECT o.OrderID, (
	SELECT SUM(od.Quantity)
	FROM [dbo].[Order Details] od
	WHERE od.OrderID = o.OrderID
) AS "TotalQuantity"
FROM [dbo].[Orders] o
GROUP BY o.OrderID

--8: Liệt kê các đơn hàng có ngày đặt hàng gần nhất
SELECT *
FROM [dbo].[Orders] o
WHERE o.OrderDate = (
	SELECT MAX([OrderDate])
	FROM [dbo].[Orders]
)

--9: Liệt kê những sản phẩm chưa từng được ai mua
SELECT *
FROM [dbo].[Products] p
WHERE p.ProductID NOT IN (
	SELECT DISTINCT [ProductID]
	FROM [dbo].[Order Details]
)

--10: Lấy thông tin về các đơn hàng và tên các sản phẩm thuộc các đơn hàng chưa được giao cho khách
SELECT o.OrderID, p.ProductName, o.ShippedDate
FROM [dbo].[Orders] o
INNER JOIN [dbo].[Order Details] od
ON o.OrderID = od.OrderID
INNER JOIN [dbo].[Products] p
ON p.ProductID = od.ProductID
WHERE o.OrderID IN (
	SELECT [OrderID]
	FROM [dbo].[Orders]
	WHERE [ShippedDate] IS NULL
)

--11: Lấy thông tin về các sản phẩm có số lượng tồn kho ít hơn số lượng tồn kho trung bình của tất cả các sản phẩm
SELECT *
FROM [dbo].[Products] p
WHERE p.UnitsInStock > (
	SELECT AVG([UnitsInStock])
	FROM [dbo].[Products]
)

--12: Lấy thông tin các khách hàng có tổng giá trị đơn hàng lớn nhất
SELECT c.*
FROM [dbo].[Customers] c
INNER JOIN [dbo].[Orders] o
	ON o.CustomerID = c.CustomerID
INNER JOIN [dbo].[Order Details] od
	ON od.OrderID = o.OrderID
WHERE (od.Quantity * od.UnitPrice) = (
	SELECT MAX(od.Quantity * od.UnitPrice)
	FROM [dbo].[Order Details] od
)