-- Common Table Expression - CTE
-- được sử dụng để tạo bảng tạm thời và sử dụng nó trong các truy vấn sau đó
-- giúp làm cho câu truy vấn trở nên dễ đọc hơn, dễ quản lý hơn
-- nâng cao hiệu suất làm việc
-- Syntax: WITH ten_CTE(cột 1, cột 2, ...) AS (
	-- Truy vấn định nghĩa CTE
-- )

-- 1:
WITH short_e AS (
	SELECT [EmployeeID], [LastName], [FirstName]
	FROM [dbo].[Employees]
)

SELECT * FROM short_e

-- 2: lấy thông tin về các sản phẩm (Products) có cùng thể loại với một sản phẩm cụ thể
WITH cte AS (
	SELECT [CategoryID]
	FROM [dbo].[Products]
	WHERE [ProductName] = 'Chai'
)

SELECT p.ProductName, p.CategoryID
FROM [dbo].[Products] p
JOIN cte c
	ON p.CategoryID = c.CategoryID

-- 3: lấy thông tin những đơn hàng (Orders) cùng với tổng giá trị đơn hàng và tỷ lệ giữa tổng giá trị và phí giao hàng
WITH OrderTotals AS (
	SELECT [OrderID], SUM(od.[UnitPrice] * od.[Quantity]) AS TotalPrice
	FROM [dbo].[Order Details] od
	GROUP BY [OrderID]
)

SELECT o.[OrderID], o.[OrderDate], o.[Freight], ot.TotalPrice, ot.TotalPrice / o.Freight AS "Ratio"
FROM [dbo].[Orders] o
JOIN OrderTotals ot ON ot.OrderID = o.OrderID