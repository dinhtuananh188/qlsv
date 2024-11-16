CREATE VIEW View_SinhVien_HocBong AS
SELECT 
    sv.MaSV,
    sv.HoTen,
    sv.NgaySinh,
    sv.NamBatDauHoc,
    sv.GioiTinh,
    sv.DiaChi,
    sv.SDT,
    sv.Email,
    tt.DiemTrungBinh,
    tt.XepLoai,
    hb.TenHocBong,
    hb.GiaTri,
    hb.DieuKien
FROM 
    SinhVien sv
JOIN 
    ThanhTichHocTap tt ON sv.MaSV = tt.MaSV
LEFT JOIN 
    SinhVien_HocBong shb ON sv.MaSV = shb.MaSV
LEFT JOIN 
    HocBong hb ON shb.MaHocBong = hb.MaHocBong
WHERE 
    tt.DiemTrungBinh >= 7.5;  -- Chỉ chọn những sinh viên có điểm trung bình từ 7.0 trở lên