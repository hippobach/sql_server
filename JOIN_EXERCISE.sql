--Liệt kê tên sản phẩm và tên nhà cung cấp của các sản phẩm đã được đặt hàng trong bảng Order Details. Sử dụng INNER JOIN để kết hợp bảng Order Details với các bảng liên quan để lấy thông tin sản phẩm và nhà cung cấp
SELECT DISTINCT od.ProductID, p.ProductName, s.CompanyName
FROM [dbo].[Order Details] od
INNER JOIN [dbo].[Products] p
ON od.ProductID = p.ProductID
INNER JOIN [dbo].[Suppliers] s
ON p.SupplierID = s.SupplierID

--Liệt kê tên khách hàng và tên nhân viên phụ trách của các đơn hàng trong bảng Orders. Bao gồm cả các đơn hàng không có nhân viên phụ trách. Sử dụng LEFT JOIN để kết hợp các bảng Orders với bảng Employees để lấy thông tin về khách hàng và nhân viên phụ trách
SELECT o.OrderID, e.FirstName, e.LastName, c.CompanyName
FROM [dbo].[Orders] o
LEFT JOIN [dbo].[Employees] e
ON o.EmployeeID = e.EmployeeID
LEFT JOIN [dbo].[Customers] c
ON o.CustomerID = c.CustomerID

--Liệt kê tên khách hàng và tên nhân viên phụ trách của các đơn hàng trong bảng Orders. Bao gồm cả các đơn hàng không có nhân viên phụ trách. Sử dụng RIGHT JOIN để kết hợp các bảng Orders với bảng Employees để lấy thông tin về khách hàng và nhân viên phụ trách
SELECT o.OrderID, e.FirstName, e.LastName, c.CompanyName
FROM [dbo].[Orders] o
RIGHT JOIN [dbo].[Employees] e
ON o.EmployeeID = e.EmployeeID
RIGHT JOIN [dbo].[Customers] c
ON o.CustomerID = c.CustomerID

--Liệt kê tên danh mục và tên nhà cung cấp của các sản phẩm đã được đặt hàng trong bảng Products. Bao gồm cả các danh mục và nhà cung cấp không có sản phẩm nào. Sử dụng FULL JOIN hoặc kết hợp LEFT JOIN và RIGHT JOIN để lấy thông tin sản phẩm và nhà cung cấp
SELECT DISTINCT p.ProductID, p.ProductName, s.CompanyName, c.CategoryName
FROM [dbo].[Products] p
FULL JOIN [dbo].[Suppliers] s
ON p.SupplierID = s.SupplierID
FULL JOIN [dbo].[Categories] c
ON c.CategoryID = p.CategoryID