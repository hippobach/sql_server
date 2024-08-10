-- HAVING: lọc dữ liệu sau GROUP BY
-- Hãy cho biết những khách hàng nào đã đặt nhiều hơn 20 đơn hàng, sắp xếp theo thứ tự giảm dần tổng đơn hàng
SELECT [CustomerID], COUNT([OrderID]) AS "TotalOrders"
FROM [dbo].[Orders]
GROUP BY [CustomerID]
HAVING COUNT([OrderID]) > 20
ORDER BY COUNT([OrderID]) DESC

-- Hãy lọc ra những nhà cung cấp sản phẩm có tổng số lượng hàng trong kho (UnitsInStock) lớn hơn 30 và có trung bình đơn giá (UnitPrice) có giá trị dưới 50
SELECT [SupplierID], SUM([UnitsInStock]) AS "TotalProducts", AVG([UnitPrice]) AS "AvgPrice"
FROM [dbo].[Products]
GROUP BY [SupplierID]
HAVING SUM([UnitsInStock]) > 30 AND AVG([UnitPrice]) < 50

-- Hãy cho biết tổng số tiền vận chuyển của từng tháng, trong nửa năm sau của năm 1996, có tổng tiền vận chuyển lớn hơn 100$ và sắp xếp theo tháng tăng dần
SELECT MONTH([ShippedDate]) AS "Month", SUM([Freight]) AS "TotalFreight"
FROM [dbo].[Orders]
WHERE [ShippedDate] BETWEEN '1996-07-01' AND '1996-12-31'
GROUP BY MONTH([ShippedDate])
HAVING SUM([Freight]) > 1000
ORDER BY MONTH([ShippedDate]) ASC

-- Lọc ra những thành phố có lượng đơn hàng > 16 và sắp xếp theo tổng số lượng giảm dần
SELECT [ShipCity], COUNT([OrderID]) AS "TotalOrders"
FROM [dbo].[Orders]
GROUP BY [ShipCity]
HAVING COUNT([OrderID]) > 16
ORDER BY COUNT([OrderID]) DESC
