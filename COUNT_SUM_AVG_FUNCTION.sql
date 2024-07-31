-- Hãy đếm số lượng khách hàng có trong bảng Customers
SELECT COUNT([CustomerID]) AS "Number Of Customers"
FROM [dbo].[Customers]

-- Tính tổng số tiền vận chuyển (Freight) của tất cả các đơn hàng
SELECT SUM([Freight]) AS "Total Shipping Charge"
FROM [dbo].[Orders]

-- Tính trung bình số lượng đặt hàng (Quantity) của tất cả các sản phẩm trong bảng (Order Details)
SELECT AVG([Quantity]) AS "The average number of orders"
FROM [dbo].[Order Details]

-- Đếm số lượng, tính tổng số lượng hàng trong kho và trung bình giá của các sản phẩm có trong bảng Products
SELECT COUNT([ProductID]) AS "Number of Orders", SUM([UnitsInStock]) AS "Number of Order In Stock", AVG([UnitPrice]) AS "The Average of Price"
FROM [dbo].[Products]

-- Đếm số lượng đơn hàng
SELECT COUNT(*)
FROM [dbo].[Orders]

SELECT COUNT([OrderID])
FROM [dbo].[Orders]

-- Kiểm tra có bao nhiêu nhân viên
SELECT COUNT([EmployeeID]) AS "Number of Employees"
FROM [dbo].[Employees]