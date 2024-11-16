create database qlsv;
use qlsv;
 
-- Bảng KhuVuc
CREATE TABLE KhuVuc (
    MaKhuVuc INT AUTO_INCREMENT PRIMARY KEY,
    TenKhuVuc NVARCHAR(100)
);
 
-- Bảng NganhHoc
CREATE TABLE NganhHoc (
    MaNganh INT AUTO_INCREMENT PRIMARY KEY,
    TenNganh NVARCHAR(100)
);
 
-- Bảng SinhVien
CREATE TABLE SinhVien (
    MaSV INT AUTO_INCREMENT PRIMARY KEY,
    HoTen NVARCHAR(100),
    NgaySinh DATE,
    NamBatDauHoc INT,
    GioiTinh NVARCHAR(10),
    DiaChi VARBINARY(255),
	SDT VARBINARY(255),
	Email VARBINARY(255),
    MaKhuVuc INT,
    MaNganh INT,
    FOREIGN KEY (MaKhuVuc) REFERENCES KhuVuc(MaKhuVuc),
    FOREIGN KEY (MaNganh) REFERENCES NganhHoc(MaNganh)
);
 
-- Bảng ThanhTichHocTap
CREATE TABLE ThanhTichHocTap (
    MaThanhTich INT AUTO_INCREMENT PRIMARY KEY,
    MaSV INT,
    DiemTrungBinh FLOAT,
    XepLoai NVARCHAR(50),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
);
 
-- Bảng HoatDongNgoaiKhoa
CREATE TABLE HoatDongNgoaiKhoa (
    MaHoatDong INT AUTO_INCREMENT PRIMARY KEY,
    TenHoatDong NVARCHAR(100),
    MoTa NVARCHAR(255)
);
 
-- Bảng SinhVien_HoatDong
CREATE TABLE SinhVien_HoatDong (
    MaSV INT,
    MaHoatDong INT,
    VaiTro NVARCHAR(50),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    FOREIGN KEY (MaHoatDong) REFERENCES HoatDongNgoaiKhoa(MaHoatDong),
    PRIMARY KEY (MaSV, MaHoatDong)
);
 
-- Bảng HocBong
CREATE TABLE HocBong (
    MaHocBong INT AUTO_INCREMENT PRIMARY KEY,
    TenHocBong NVARCHAR(100),
    GiaTri DECIMAL(15, 2),
    DieuKien NVARCHAR(255)
);
 
-- Bảng SinhVien_HocBong
CREATE TABLE SinhVien_HocBong (
    MaSV INT,
    MaHocBong INT,
    NamHoc INT,
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    FOREIGN KEY (MaHocBong) REFERENCES HocBong(MaHocBong),
    PRIMARY KEY (MaSV, MaHocBong)
);
