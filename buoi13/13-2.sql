CREATE database cybersoft_shop;
USE cybersoft_shop;

CREATE TABLE loaisanpham(
	maloaisp INT AUTO_INCREMENT,
	tenloaisp NVARCHAR(100),
	
	PRIMARY KEY(maloaisp)
);

CREATE TABLE sanpham (
	masp INT AUTO_INCREMENT, 
	tensp NVARCHAR(100),
    mota NVARCHAR(255),
    gia DECIMAL(10,2),
    maloaisp INT,
    
    PRIMARY KEY(masp)
);

CREATE TABLE hoadon (
    mahoadon INT AUTO_INCREMENT,
    makh INT,
    ngaymua DATE,
    
    PRIMARY KEY(mahoadon)
);

CREATE TABLE chitiethoadon (
    mahoadon INT,
    masp INT,
    soluong INT,
    giaBan DECIMAL(10,2),
    
    PRIMARY KEY (mahoadon, masp)
);

CREATE TABLE khachhang (
    makh INT AUTO_INCREMENT,
    ho NVARCHAR(50),
    ten NVARCHAR(50),
    email VARCHAR(100),
    sodt VARCHAR(20),
    diachi NVARCHAR(255),
    
    PRIMARY KEY (makh)
);

ALTER TABLE sanpham
ADD CONSTRAINT FK_maloaisp_sanpham
FOREIGN KEY (maloaisp) REFERENCES loaisanpham(maloaisp);

ALTER TABLE hoadon
ADD CONSTRAINT FK_makh_hoadon
FOREIGN KEY (makh) REFERENCES khachhang(makh);

ALTER TABLE chitiethoadon
ADD CONSTRAINT FK_mahoadon_chitiethoadon
FOREIGN KEY (mahoadon) REFERENCES hoadon(mahoadon);

ALTER TABLE chitiethoadon
ADD CONSTRAINT FK_masp_chitiethoadon
FOREIGN KEY (masp) REFERENCES sanpham(masp);
