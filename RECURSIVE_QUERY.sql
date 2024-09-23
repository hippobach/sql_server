-- Truy vấn sử dụng CTE
WITH FIBO(prev_n, n) AS (
	-- Khởi tạo
	SELECT
		0 AS prev_n,
		1 AS n
	UNION ALL
	-- Đệ quy
	SELECT 
		n AS prev_n,
		prev_n + n AS n
	FROM FIBO
)

SELECT * FROM FIBO
OPTION (MAXRECURSION 5)

-- Tính giai thừa
WITH giaiThua(stt, giaiThuaX) AS (
	-- Khởi tạo
	SELECT
		1 AS stt,
		1 AS giaiThuaX
	UNION ALL
	-- Đệ quy
	SELECT 
		stt+1 AS stt,
		(stt+1)*giaiThuaX AS giaiThuaX
	FROM giaiThua
)

SELECT * FROM giaiThua
OPTION (MAXRECURSION 5)