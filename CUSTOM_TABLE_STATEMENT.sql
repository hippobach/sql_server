CREATE TABLE NhanVien (
	MaNV INT NOT NULL PRIMARY KEY,
	HoTen VARCHAR(50) NOT NULL,
	Phai VARCHAR(50),
	NgaySinh VARCHAR(255),
	SDT VARCHAR(10)
);

-- Tạo ra một bảng (table) trong sql server
CREATE TABLE KhachHang (
	MaKH INT IDENTITY(100,5) NOT NULL PRIMARY KEY,
	TenKH VARCHAR(50) NOT NULL,
	DiaChi VARCHAR(255),
	SDT VARCHAR(10) CHECK (SDT LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);

-- Thay đổi cấu trúc của một bảng
-- Thêm cột email vào bảng NhanVien
ALTER TABLE NhanVien
ADD Email VARCHAR(100);

-- Thay độ dài ký tự của cột họ tên
ALTER TABLE NhanVien
ALTER COLUMN HoTen VARCHAR(100) 

-- Thêm ràng buộc cho ngày sinh của nhân viên
ALTER TABLE NhanVien
ADD CONSTRAINT NgaySinh CHECK (NgaySinh <= GETDATE())

-- Cú pháp xóa bảng:
-- TRUNCATE TABLE [tên bảng] -> xóa tất cả dữ liệu có trong bảng nhưng không xóa cấu trúc của bảng
-- DROP TABLE [tên bảng] -> xóa hoàn toàn bảng, bao gồm cả cấu trúc và dữ liệu

TRUNCATE TABLE NhanVien

DROP TABLE NhanVien