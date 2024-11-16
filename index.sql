CREATE INDEX idx_ThanhTichHocTap_MaSV ON ThanhTichHocTap(MaSV);
CREATE INDEX idx_SinhVien_HocBong_MaSV ON SinhVien_HocBong(MaSV);
CREATE INDEX idx_SinhVien_HoatDong_MaSV ON SinhVien_HoatDong(MaSV);

CREATE INDEX idx_SinhVien_MaKhuVuc ON SinhVien(MaKhuVuc);
CREATE INDEX idx_SinhVien_MaNganh ON SinhVien(MaNganh);

CREATE INDEX idx_ThanhTichHocTap_DiemTrungBinh ON ThanhTichHocTap(DiemTrungBinh);

CREATE INDEX idx_SinhVien_HoatDong_MaHoatDong ON SinhVien_HoatDong(MaHoatDong);
