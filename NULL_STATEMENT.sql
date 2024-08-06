-- Kiem tra gia tri NULL trong cot du lieu
-- Lay ra tat ca cac don hang chua duoc giao (ShippedDate == NULL)
SELECT [OrderID]
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL

SELECT COUNT([OrderID])
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL

-- Lay danh sach cac khach hang co khu vuc (Region) khong bi NULL
SELECT *
FROM [dbo].[Customers]
WHERE [Region] IS NOT NULL

-- Lay danh sach khach hang khong co ten cong ty
SELECT *
FROM [dbo].[Customers]
WHERE [CompanyName] IS NULL

-- Hay lay ra tat ca don hang chua duoc giao hang va co khu vuc giao hang (ShipRegion) khong bi NULL
SELECT *
FROM [dbo].[Orders]
WHERE [ShipRegion] IS NOT NULL AND [ShippedDate] IS NULL