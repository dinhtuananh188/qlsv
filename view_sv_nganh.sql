CREATE VIEW View_SinhVien_KhuVuc_Nganh AS
SELECT 
    sv.MaSV,
    sv.HoTen,
    sv.NgaySinh,
    kv.TenKhuVuc,
    ng.TenNganh
FROM 
    SinhVien sv
JOIN 
    KhuVuc kv ON sv.MaKhuVuc = kv.MaKhuVuc
JOIN 
    NganhHoc ng ON sv.MaNganh = ng.MaNganh;
