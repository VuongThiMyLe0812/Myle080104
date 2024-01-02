create Database BanHang
Use BanHang

Create table HangHoa 
(MaHang varchar (4) not null primary key,
TenHang varchar(50) not null,
NuocSX varchar (50) not null,
GiaBan int not null)


Create table KhachHang
( MaKhach char (6) not null primary key,
TenKhach varchar (50) not null,
Gioitinh char(5) not null,
Diachi varchar(50) not null,
Dienthoai varchar(12) not null unique)

Create table HoaDon
(SoHoaDon varchar(6) not null primary key,
MaKhach char (6) not null,
MaHang varchar (4) not null,
NgayBan Datetime not null,
SoLuong int not null,
TienHang  int,
ChietXuat float,
Tongtien int
Constraint Fk_HangHoa foreign key (Mahang) references HangHoa(MaHang),
Constraint Fk_KhachHang foreign key (MaKhach) references KhachHang(MaKhach))


/*Cau2*/
INSERT INTO HANGHOA
VALUES
('MH01','Ti Vi','Nhat',9000000),
('MH02','Ruou','Phap',700000),
('MH03','Giay','Viet Nam',300000),
('MH04','Gao','Viet Nam',200000),
('MH05','Nuoc Ngot','My',130000),
('MH06','Banh','My',150000)

INSERT INTO KHACHHANG
VALUES
('KH0011','Nguyen Cong Phuc','Nam','Thanh Khe','0123456789'),
('KH0022','Truong Cong Minh','Nam','Ngu Hanh Son','0123456788'),
('KH0033','Nguyen Thi To Nhu','Nu','Son Tra','0123456787'),
('KH0044','Pham Thi Thu Thao','Nu','Hai Chau','0123456786'),
('KH0055','Dinh Bao Loc','Nam','Lien Chieu','0123456785')



INSERT INTO HOADON (SoHoaDon, MaKhach, MaHang, NgayBan, SoLuong)
VALUES 
('HD0011','KH0011','MH01','2019-02-23',2),
('HD0022','KH0022','MH02','2019-05-27',10),
('HD0033','KH0033','MH03','2019-06-18',30),
('HD0044','KH0044','MH04','2019-10-12',20),
('HD0055','KH0055','MH05','2019-10-05',50),
('HD0066','KH0011','MH01','2019-03-27',1),
('HD0077','KH0033','MH06','2019-11-11',60),
('HD0088','KH0055','MH05','2019-09-15',15),
('HD0099','KH0022','MH02','2019-10-15',20)
select *from Hoadon
select *from HangHoa
select *from Hoadon

/*CAU3*/

update Hoadon
set tienhang=soluong*giaban
from hoadon inner join hanghoa on hoadon.mahang=hanghoa.mahang


UPDATE HOADON
SET ChietKhau = IIF(TienHang > 10000000, 0.15*TienHang, IIF(TienHang between 5000000 and 10000000, 0.1*TienHang,0))






