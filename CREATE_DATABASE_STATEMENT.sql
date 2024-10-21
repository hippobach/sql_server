CREATE DATABASE NhanVien
ON
	(
		NAME = 'nhanvien_data',
		FILENAME = 'D:\Code\SQL Server\nhanvien_data.mdf',
		SIZE = 10MB,
		MAXSIZE = 100MB,
		FILEGROWTH = 5MB
	)
LOG ON
	(
		NAME = 'nhanvien_log',
		FILENAME = 'D:\Code\SQL Server\nhanvien_log.ldf',
		SIZE = 5MB,
		MAXSIZE = 50MB,
		FILEGROWTH = 5MB
	)