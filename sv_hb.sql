-- Câu lệnh INSERT cho bảng SinhVien_HocBong
INSERT INTO SinhVien_HocBong (MaSV, MaHocBong, NamHoc)
SELECT
    t.MaSV,
    CASE
        WHEN t.DiemTrungBinh >= 9.0 THEN 1  -- Học bổng Toàn phần
        WHEN t.DiemTrungBinh >= 8.0 AND t.DiemTrungBinh < 9.0 THEN 2  -- Học bổng Nửa phần
        WHEN t.DiemTrungBinh >= 7.5 AND t.DiemTrungBinh < 8.0 THEN 3  -- Học bổng Khuyến khích học tập
        WHEN t.DiemTrungBinh >= 8.5 AND t.DiemTrungBinh < 9.0 AND t.XepLoai = N'Giỏi' THEN 4  -- Học bổng Ngành học xuất sắc
        ELSE NULL  -- Không có học bổng nếu không đủ điều kiện
    END AS MaHocBong,
    2023 AS NamHoc  -- Giả sử năm học là 2023
FROM ThanhTichHocTap t
WHERE t.DiemTrungBinh >= 7.5;  -- Chỉ thêm những sinh viên có điểm trung bình từ 7.5 trở lên

