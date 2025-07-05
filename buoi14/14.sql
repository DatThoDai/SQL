CREATE DATABASE quanlysach

USE quanlysach

CREATE TABLE tacgia (
	matacgia INT AUTO_INCREMENT,
	tentacgia VARCHAR(100) NOT NULL,
	quoctich VARCHAR(50) NULL,
	PRIMARY KEY(matacgia)
)

CREATE TABLE sach (
    masach INT AUTO_INCREMENT,
    tieude VARCHAR(200) NOT NULL,
    namxuatban INT,
    matacgia INT,
    PRIMARY KEY(masach)
)

ALTER TABLE sach 
ADD CONSTRAINT FK_matacgia_sach
FOREIGN KEY (matacgia)
REFERENCES tacgia(matacgia)

INSERT INTO tacgia (tentacgia,quoctich)
VALUES ('Nguyễn Nhật Ánh', 'Việt Nam'),
('Haruki Murakami', 'Nhật Bản'),
('J.K. Rowling', 'Anh')

INSERT INTO sach (tieude,namxuatban,matacgia)
VALUES ('Mắt Biếc', 1990, 1),
('Tôi thấy hoa vàng trên cỏ xanh', 2005, 1),
('Rừng Na Uy', 1987, 2),
('Harry Potter và Hòn đá Phù thủy', 1997, 3)

-- 1 lấy danh sách tất cả sách trong hệ thống 
SELECT * FROM sach 
-- 2 Lấy danh sách tất cả tác giả có quốc tịch là "Việt Nam".
SELECT * FROM tacgia t
WHERE t.quoctich = 'Việt Nam'
-- 3 Lấy tên sách và tên tác giả tương ứng 
-- (JOIN 2 bảng).
SELECT s.tieude, tg.tentacgia
FROM sach s
JOIN tacgia tg on s.matacgia = tg.matacgia

-- 4 Lấy danh sách các sách xuất bản sau năm 1990.
SELECT * FROM sach 
WHERE namxuatban > 1990 
 
-- 5 Đếm số lượng sách của mỗi tác giả
SELECT t.tentacgia, COUNT(s.masach) AS soluongsach
FROM tacgia t
JOIN sach s ON s.matacgia = t.matacgia
GROUP BY t.tentacgia

-- 6 Tìm tác giả có nhiều sách nhất 
SELECT t.tentacgia, COUNT(s.masach) AS soluongsach
FROM sach s 
JOIN tacgia t ON s.matacgia = t.matacgia
GROUP BY tentacgia
ORDER BY soluongsach DESC
LIMIT 1
