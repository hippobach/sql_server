-- Loc ra tat ca cac khach hang den tu cac quoc gia bat dau bang chu A
SELECT [CustomerID], [CompanyName], [Country]
FROM [dbo].[Customers]
WHERE [Country] LIKE 'A%'

-- Lay danh sach cac don dat hang gui den cac thanh pho co chua chu 'de'
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE '%de%'

SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U_'

SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U%'

-- Lay ra tat ca cac nha cung cap co chua chu 'b' trong ten cong ty
SELECT *
FROM [dbo].[Suppliers]
WHERE [CompanyName] LIKE '%b%'