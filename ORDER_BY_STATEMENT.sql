-- Liet ke cac nha cung cap theo thu tu don vi CompanyName tu A->Z
SELECT *
FROM [dbo].[Suppliers]
ORDER BY [CompanyName] ASC

-- Liet ke tat ca cac san pham theo thu tu gia giam dan
SELECT *
FROM [dbo].[Products]
ORDER BY [UnitPrice] DESC

-- Liet ke tat ca cac nhan vien theo thu tu ho va ten dem theo A->Z
SELECT *
FROM [dbo].[Employees]
ORDER BY [LastName], [FirstName]

-- Lay ra mot san pham co so luong ban hang cao nhat tu bang Order Details, khong dung ham MAX
SELECT TOP 1 *
FROM [dbo].[Order Details]
ORDER BY [Quantity] DESC

-- Liet ke danh sach cac don dat hang (OrderID) trong bang Orders theo thu tu giam dan cua ngay dat hang (OrderDate)
SELECT [OrderID]
FROM [dbo].[Orders]
ORDER BY [OrderDate] DESC

-- Liet ke ten, don gia, so luong trong kho (UnitsInStock) cua tat ca cac san pham trong bang Products theo thu tu giam dan cua UnitsInStock
SELECT [ProductName], [UnitPrice], [UnitsInStock]
FROM [dbo].[Products]
ORDER BY [UnitsInStock] DESC