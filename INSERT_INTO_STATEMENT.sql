-- Thêm một khách hàng mới
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [Phone])
VALUES ('KH123', 'BachNguyen', 'Hippo', '0345434221')

-- Thêm nhiều khách hàng mới cùng một lúc
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [Phone])
VALUES 
	('KH124', 'James', 'Reccee', '0345434221'),
	('KH125', 'HuyenNguyen', 'Huyen', '0989770997'),
	('KH126', 'TungNguyen', 'Tung', '0385433174')

-- Thêm một bản ghi vào bảng Suppliers
INSERT INTO [dbo].[Suppliers] ([CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [HomePage])
VALUES ('BlueOC', 'John Smith', 'Sales Managers', 'Vin Ocean Park', 'New York',  'NY', '10001', 'USA', '555-555-5555', '555-555-5556', 'http://www.blueoc.com')