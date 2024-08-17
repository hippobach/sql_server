-- Thứ tự thực thi câu lệnh SQL
--1 FROM: choose and join tables to get base data
--2 WHERE: filters the base data
--3 GROUP BY: aggregates the base data
--4 HAVING: filters the aggregated data
--5 SELECT: returns the final data
--6 DISTINCT: executed after evaluating expressions, and alias references in the previous step. It filters any duplicate rows and returns only unique rows.
--7 ORDER BY: sorts the final data
--8 LIMIT/OFFSET: limits the returned data to a row count

--	SELECT DISTINCT (9) TOP (11), , (8)
--	FROM (1)
--	INNER/FULL/LEFT/RIGHT (4) OUTER JOIN (2) ON (3)
--	WHERE (5)
--	GROUP BY (6)
--	HAVING (7)
--	ORDER BY (10)

SELECT p.CategoryID, COUNT(p.ProductID) AS [TotalProducts] -- 5
FROM [dbo].[Products] p -- 1
WHERE p.CategoryID IN (1,2,3,4,5,6,7) -- 2
GROUP BY p.CategoryID -- 3
HAVING COUNT(p.ProductID) >= 10 -- 4
ORDER BY [TotalProducts] DESC -- 6

SELECT TOP 3 p.ProductID, o.Discount, o2.ShipCountry  -- 13 10 11
FROM [dbo].[Products] p -- 1
INNER JOIN [dbo].[Order Details] o -- 4 2
ON p.ProductID = o.ProductID -- 3
INNER JOIN [dbo].[Orders] o2 -- 7 5
ON o2.OrderID = o.OrderID -- 6
WHERE o.Discount = 0.25 AND o2.ShipCountry = 'Germany' -- 8 9
ORDER BY p.ProductID DESC -- 12