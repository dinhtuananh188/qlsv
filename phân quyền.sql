-- Tạo tài khoản Admin với quyền quản lý toàn bộ cơ sở dữ liệu
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON qlsv.* TO 'admin'@'localhost' WITH GRANT OPTION;

-- Tạo tài khoản Normal User chỉ có quyền đọc và ghi dữ liệu
CREATE USER 'normal'@'localhost' IDENTIFIED BY 'normal';
GRANT SELECT, INSERT, UPDATE, DELETE ON qlsv.* TO 'normal'@'localhost';

-- Tạo tài khoản guest chỉ có quyền xem dữ liệu
CREATE USER 'guest'@'localhost' IDENTIFIED BY 'guest';
GRANT SELECT ON qlsv.* TO 'guest'@'localhost';
