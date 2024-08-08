-- TIME FUNCTION: các hàm lấy ngày, tháng, năm DAY, MONTH, YEAR

-- Tính số lượng đơn đặt hàng trong năm 1997 của từng khách hàng
SELECT [CustomerID], COUNT([OrderID]) AS "TotalOrders", YEAR([OrderDate]) AS "Year"
FROM [dbo].[Orders] 
WHERE YEAR([OrderDate]) = 1997
GROUP BY [CustomerID], YEAR([OrderDate])

-- Lấy danh sách các đơn hàng được đặt hàng vào tháng 5 năm 1997
SELECT *
FROM [dbo].[Orders]
WHERE YEAR([OrderDate]) = 1997 AND MONTH([OrderDate]) = 5

-- Lấy danh sách các đơn hàng được đặt hàng vào ngày 4 tháng 9 năm 1996
SELECT *
FROM [dbo].[Orders]
WHERE YEAR([OrderDate]) = 1996 AND MONTH([OrderDate]) = 9 AND DAY([OrderDate]) = 4

-- Lấy ra danh sách khách hàng đặt hàng trong năm 1998 và số đơn hàng mỗi tháng sắp xếp tháng tăng dần
SELECT [CustomerID], MONTH([OrderDate]) AS "Tháng", COUNT(*) AS "Số Lượng Đơn Hàng"
FROM [dbo].[Orders]
WHERE YEAR([OrderDate]) = 1998
GROUP BY [CustomerID], MONTH([OrderDate])
ORDER BY MONTH([OrderDate]) ASC

-- Lọc ra các đơn đặt hàng đã được giao vào tháng 5 và sắp xếp tăng dần theo năm
SELECT [OrderID], MONTH([ShippedDate]) AS "Tháng", YEAR([ShippedDate]) AS "Năm"
FROM [dbo].[Orders]
WHERE MONTH([ShippedDate]) = 5
ORDER BY YEAR([ShippedDate]) ASC