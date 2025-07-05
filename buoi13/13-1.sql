CREATE DATABASE studentdb;

USE studentdb;

CREATE TABLE students (
	id INT AUTO_INCREMENT,
	full_name NVARCHAR(100) NOT NULL,
	gender VARCHAR(10),
	age INT,
	city NVARCHAR(50),
	weight DECIMAL(6,4),
	
	PRIMARY KEY(id)
);

INSERT INTO students (full_name, gender, age, city, weight) VALUES
(N'Nguyen Thanh Nhan', 'Nam', 19, N'Can Tho', 56.5674),
(N'Pham Thu Huong', 'Nu', 20, N'Vinh Long', 72.456),
(N'Nguyen Nhu Ngoc', 'Nu', 20, N'Soc Trang', 85.387),
(N'Bui Thanh Bao', 'Nam', 19, N'Soc Trang', 49.3),
(N'Le My Nhan', 'Nu', 22, N'Can Tho', 62.963),
(N'Tan Thuc Bao', 'Nam', 35, N'An Giang', 55.5678),
(N'Trinh Giao Kim', 'Nam', 44, N'Bac Lieu', 67.34);

SELECT * FROM students 


