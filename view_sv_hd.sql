CREATE VIEW View_SinhVien_HoatDong AS
SELECT 
    sv.MaSV,
    sv.HoTen,
    sv.NgaySinh,
    sv.GioiTinh,
    hd.TenHoatDong,
    hd.MoTa,
    shd.VaiTro
FROM 
    SinhVien sv
JOIN 
    SinhVien_HoatDong shd ON sv.MaSV = shd.MaSV
JOIN 
    HoatDongNgoaiKhoa hd ON shd.MaHoatDong = hd.MaHoatDong;
