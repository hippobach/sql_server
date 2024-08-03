-- Tinh so luong hang ton kho trong bang Products
SELECT [ProductID], [ProductName], ([UnitsInStock] - [UnitsOnOrder]) AS StockRemaining
FROM [dbo].[Products]

-- Tinh gia tri don hang chi tiet cho tat ca cac san pham trong bang OrderDetails
SELECT *, ([UnitPrice] * [Quantity]) AS OrderDetailValue
FROM [dbo].[Order Details]

-- Tinh ti le gia van chuyen don dat hang trung binh cua cac don hang trong bang Orders so voi gia tri van chuyen cua don hang lon nhat: FreightRatio = AVG(Freight)/MAX(Freight)
SELECT AVG([Freight])/MAX([Freight]) AS FreightRatio
FROM [dbo].[Orders]