-- IN: loc du lieu trong danh sach
-- Hay loc tat ca cac don hang voi dieu kien:
-- Don hang duoc giao den Germany, UK, Brazil

SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] IN ('Germany','UK', 'Brazil')

-- Don hang duoc giao den cac quoc gia khac Germany, UK, Brazil

SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] NOT IN ('Germany','UK', 'Brazil')

-- Lay ra cac san pham co ma the loai khac voi 2, 3 va 4
SELECT *
FROM [dbo].[Products]
WHERE [CategoryID] NOT IN (2,3,4)

-- Liet ke ra cac nhan vien khong phai la nu
SELECT * 
FROM [dbo].[Employees]
WHERE [TitleOfCourtesy] IN ('Mr.', 'Dr.')

-- Hay lay ra cac khach hang den tu cac thanh pho sau day: Berlin, London, Warszawa
SELECT *
FROM [dbo].[Customers]
WHERE [City] IN ('Berlin','London','Warszawa')