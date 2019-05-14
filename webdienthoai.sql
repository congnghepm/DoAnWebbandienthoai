create database webdienthoai;
use webdienthoai;

create table KhuyenMai
(
	MaKM int not null auto_increment,
	TenKM VARCHAR(50),
	GiaTri	DOUBLE,
    primary key(MaKM)
);

DROP TABLE IF EXISTS ThongSoKyThuat;
create table if not exists ThongSoKyThuat
(
	MaThongSo	int not null auto_increment,
	ManHinh	VARCHAR(50),
	Ram	INT,
	BoNhoTrong INT,
	CameraTruoc	VARCHAR(50),
	CameraSau VARCHAR(50),
	DungLuongPin INT,
	CPU	VARCHAR(50),
    primary key (MaThongSo)
);
alter table ThongSoKyThuat modify CPU varchar(255);
drop table if exists SanPham;
create table if not exists SanPham
(
	MaSP INT not null auto_increment,
	TenSP VARCHAR(50),
	HangSX	VARCHAR(50),
	GiaBan	DOUBLE,
	SoLuongNhap	INT,
	GiaNhap	DOUBLE,
	SoLuongTon INT,
	MaThongSo INT,
	MaKM INT,
    primary key (MaSP),
    foreign key (MaThongSo) references ThongSoKyThuat(MaThongSo),
    foreign key (MaKM) references KhuyenMai(MaKM)
);

drop table if exists HinhAnh_SP;
create table if not exists HinhAnh_SP
(
	MaHA INT not null auto_increment,
	FileHA longblob,
	MaSP INT,
    primary key (MaHA),
    foreign key (MaSP) references SanPham(MaSP)
);

drop table if exists KhachHang;
create table if not exists KhachHang
(
	MaKH INT not null auto_increment,
	TênKH	VARCHAR(50),
	SoDienThoai	VARCHAR(11),
	DiaChi	VARCHAR(50),
	primary key (MaKH)
);

drop table if exists GopY;
create table if not exists GopY
(
	MaGopY	INT not null auto_increment,
	TieuDe	VARCHAR(50),
	NoiDung	LONGTEXT,
	MaKH INT,
	primary key (MaGopY),
    foreign key (MaKH) references KhachHang(MaKH)
);

drop table if exists DonHang;
create table if not exists DonHang
(
	MaDH INT not null auto_increment,
	ThoiGian datetime,
	TongTien DOUBLE,
	MaKH INT,
    primary key (MaDH),
    foreign key (MaKH) references KhachHang(MaKH)
);

drop table if exists ChiTietDonHang;
create table if not exists ChiTietDonHang
(
	MaDH INT not null,
	MaSP INT not null,
	GiaBan DOUBLE,
	SoLuong	INT,
    primary key (MaDH),
    foreign key (MaDH) references DonHang(MaDH),
    foreign key (MaSP) references SanPham(MaSP)
);

drop table if exists TaiKhoan;
create table if not exists TaiKhoan
(
	MaTK INT not null auto_increment,
	TenDangNhap	VARCHAR(50) unique,
	MatKhau	VARCHAR(10),
    primary key (MaTK)
);

insert into KhuyenMai
values (null, "Giảm giá 10%", 0.1);
insert into KhuyenMai
values (null, "Giảm giá 20%", 0.2);
insert into KhuyenMai
values (null, "Giảm giá 30%", 0.3);
insert into KhuyenMai
values (null, "Giảm giá 40%", 0.4);
insert into KhuyenMai
values (null, "Giảm giá 50%", 0.5);
insert into KhuyenMai
values (null, "Khuyến mãi sốc", 0.6);
insert into KhuyenMai
values (null, "Giá rẻ mỗi ngày", 0.15);
insert into KhuyenMai
values (null, "Khuyến mãi đặc biệt hàng tháng", 0.45);

select * from KhuyenMai;

insert into ThongSoKyThuat
values(null, "6.1 inches, 1440 x 3040 pixels", 8, 128, "10MP", "Chính 12 MP & Phụ 12 MP, 16 MP", 3400, "Exynos 9820 8 nhân 64-bit");
insert into ThongSoKyThuat
values(null, "6.53 inchs, 1080 x 2340 Pixels", 6, 64, "32MP", "12Mp+8Mp+5Mp", 4000, "	MTK P70, 8, 2.1 GHz");
insert into ThongSoKyThuat
values(null, "	6.15 inches, 2312 x 1080 Pixel", 6, 128, "32MP", "24 MP+8 MP+2 MP (3 camera)", 3340, "HUAWEI Kirin 710, Octa-Core");
insert into ThongSoKyThuat
values(null, "6.4 inches, 1080 x 2340 Pixels", 4, 64, "25MP", "25 MP, 8 MP và 5 MP (3 camera)", 4000, "EExynos 9610 8 nhân 64-bit, 8, 2.3 GHz");
insert into ThongSoKyThuat
values(null, "6.3 inchs, 1080 x 2340 Pixels", 8, 128, "16MP", "16 MP và 2 MP (2 camera)", 3500, "Qualcomm Snapdragon 660, 8, 8 nhân 1.95Ghz");
insert into ThongSoKyThuat
values(null, "	6.53 inchs, 1080 x 2340 Pixels", 6, 64, "16MP", "48 MP+ 5 MP", 4020, "MTK P70, 8, 2.1 GHz");
insert into ThongSoKyThuat
values(null, "6.18 inches, 1080 x 2280 Pixels", 4, 64, "20MP", "12.0 MP + 13.0 MP", 3500, "Qualcomm Snapdragon 710, 8, 2 x 2.2 GHz & 6x 1.7 GHz");
insert into ThongSoKyThuat
values(null, "6.18 inches, 1080 x 2280 Pixels", 6, 64, "20MP", "Camera kép 12MP+5MP", 4000, "Snapdragon 845, 8, 2.8 GHz");
insert into ThongSoKyThuat
values(null, "	5.84 inches 1080 x 2280 pixels", 4, 128, "24MP", "24 MP và 16 MP", 4000, "Hisilicon Kirin 970 , 8 nhân");
insert into ThongSoKyThuat
values(null, "6.7 inchs, 1080 x 2340 Pixels", 6, 128, "32MP", "Chính 32 MP & Phụ 8 MP, 5 MP", 4500, "Snapdragon 675 8 nhân 64-bit, 8, 2 nhân 2.0 Ghz & 6 nhân 1.7 Ghz");
select * from ThongSoKyThuat;

insert into SanPham
values(null, "Samsung Galaxy A70", "Samsung", 7500000, 10, 6500000, 10, 10, 3);
insert into SanPham
values(null, "Samsung Galaxy A7", "Samsung", 6490000, 10, 4500000, 7, 6, 2);
insert into SanPham
values(null, "Samsung Galaxy A30", "Samsung", 6500000, 20, 3500000, 17, 8, 6);
insert into SanPham
values(null, "Samsung Galaxy S9", "Samsung", 16500000, 10, 10500000, 10, 2, 1);
insert into SanPham
values(null, "iPhone Xs Max", "iPhone", 29500000, 12, 26500000, 12, 8, 7);
insert into SanPham
values(null, "iPhone 7 Plus 64GB ", "iPhone", 13990000, 20, 10500000, 20, 6, 2);
insert into SanPham
values(null, "iPhone 8 Plus 64GB", "iPhone", 18950000, 15, 16990000, 13, 4, 7);
insert into SanPham
values(null, "iPhone 6s Plus 64GB", "iPhone", 9000000, 15, 6500000, 10, 7, 5);
insert into SanPham
values(null, "Xiaomi Mi 8 Pro 128GB", "Xiaomi", 14990000, 20, 10500000, 10, 5, 7);
insert into SanPham
values(null, "Xiaomi Pocophone F1", "Xiaomi", 7990000, 15, 7500000, 15, 9, 8);
insert into SanPham
values(null, "Xiaomi Mi 8 Lite 128GB", "Xiaomi", 7490000, 7, 5500000, 7, 9, 7);
insert into SanPham
values(null, "Xiaomi Redmi Note 7 64GB", "Xiaomi", 4500000, 10, 3500000, 10, 6, 5);
insert into SanPham
values(null, "Huawei P30 Pro", "Huawei", 22900000, 20, 16500000, 20, 5, 1);
insert into SanPham
values(null, "Huawei Y9", "Huawei", 4990000, 25, 4900000, 25, 8, 7);
insert into SanPham
values(null, "Huawei Nova 3i", "Huawei", 5500000, 10, 4000000, 10, 9, 6);
insert into SanPham
values(null, "Huawei Y7 Pro", "Huawei", 4550000, 20, 3500000, 20, 9, 7);
insert into SanPham
values(null, "Nokia 8.1", "Nokia", 6500000, 14, 4500000, 14, 9, 6);
insert into SanPham
values(null, "Nokia 6.1 Plus", "Nokia", 7500000, 10, 6500000, 10, 5, 7);
insert into SanPham
values(null, "Nokia 5.1 Plus", "Nokia", 3500000, 20, 1500000, 20, 6, 8);
insert into SanPham
values(null, "Nokia 3.1", "Nokia", 3500000, 10, 1500000, 10, 5, 2);
insert into SanPham
values(null, "OPPO F11 Pro", "OPPO", 8500000, 20, 6500000, 20, 7, 8);
insert into SanPham
values(null, "OPPO F11", "OPPO", 9500000, 10, 6500000, 10, 8, 6);
insert into SanPham
values(null, "OPPO A5", "OPPO", 5500000, 20, 3500000, 20, 4, 7);
insert into SanPham
values(null, "OPPO F9", "OPPO", 5500000, 10, 6500000, 10, 10, 5);
insert into SanPham
values(null, "OPPO A7", "OPPO", 4500000, 14, 2500000, 14, 5, 1);
insert into SanPham
values(null, "OPPO A7", "OPPO", 4500000, 14, 2500000, 14, 5, 1);
insert into SanPham
values(null, "VSmart active 1", "VSmart", 4500000, 20, 2500000, 14, 7, 3);
insert into SanPham
values(null, "VSmart active 1+", "VSmart", 5500000, 20, 4500000, 14, 4, 4);
insert into SanPham
values(null, "VSmart Joy", "VSmart", 4500000, 10, 2500000, 10, 9, 7);
insert into SanPham
values(null, "VSmart Joy 1+", "VSmart", 6500000, 10, 5500000, 10, 7, 4);
select * from SanPham;

insert into HinhAnh_SP 
values(null, "product01.jpg", 1);
insert into HinhAnh_SP 
values(null, "product02.jpg", 1);
insert into HinhAnh_SP 
values(null, "product02.jpg", 1);
insert into HinhAnh_SP 
values(null, "shop02.jpg", 2);
insert into HinhAnh_SP 
values(null, "product02.jpg", 2);
insert into HinhAnh_SP 
values(null, "product02.jpg", 2);
insert into HinhAnh_SP 
values(null, "product02.jpg", 2);
insert into HinhAnh_SP 
values(null, "product02.jpg", 3);
insert into HinhAnh_SP 
values(null, "product02.jpg", 3);
insert into HinhAnh_SP 
values(null, "product02.jpg", 3);
insert into HinhAnh_SP 
values(null, "product02.jpg", 4);
insert into HinhAnh_SP 
values(null, "product02.jpg", 4);
insert into HinhAnh_SP 
values(null, "product02.jpg", 4);
insert into HinhAnh_SP 
values(null, "product02.jpg", 5);
insert into HinhAnh_SP 
values(null, "product02.jpg", 5);
insert into HinhAnh_SP 
values(null, "product02.jpg", 5);
insert into HinhAnh_SP 
values(null, "product02.jpg", 6);
insert into HinhAnh_SP 
values(null, "product02.jpg", 6);
insert into HinhAnh_SP 
values(null, "product02.jpg", 6);
insert into HinhAnh_SP 
values(null, "product02.jpg", 6);
insert into HinhAnh_SP 
values(null, "product02.jpg", 7);
insert into HinhAnh_SP 
values(null, "product02.jpg", 7);
insert into HinhAnh_SP 
values(null, "product02.jpg", 7);
insert into HinhAnh_SP 
values(null, "product02.jpg", 8);
insert into HinhAnh_SP 
values(null, "product02.jpg", 8);
insert into HinhAnh_SP 
values(null, "product02.jpg", 8);
insert into HinhAnh_SP 
values(null, "product02.jpg", 8);
insert into HinhAnh_SP 
values(null, "product02.jpg", 9);
insert into HinhAnh_SP 
values(null, "product02.jpg", 9);
insert into HinhAnh_SP 
values(null, "product02.jpg", 9);
insert into HinhAnh_SP 
values(null, "product02.jpg", 10);
insert into HinhAnh_SP 
values(null, "product02.jpg", 10);
insert into HinhAnh_SP 
values(null, "product02.jpg", 10);





select * from HinhAnh_SP where MaSP=2;

select  * from sanpham join hinhanh_sp on sanpham.MaSP = hinhanh_sp.MaSP;
select * from hinhanh_sp;
select  FileHA from hinhanh_sp where hinhanh_sp.MaSP = '1' limit 1;
select * from hinhanh_sp, sanpham where sanpham.MaSP = hinhanh_sp.MaSP and  hinhanh_sp.MaSP = '4';
select * from sanpham join khuyenmai on sanpham.MaKM = khuyenmai.MaKM
order by khuyenmai.GiaTri desc;

select * from sanpham join khuyenmai on sanpham.MaKM = khuyenmai.MaKM order by khuyenmai.GiaTri desc;

select * from sanpham where sanpham.HangSX ='Samsung';
                    
select * from khuyenmai;

select * from sanpham join khuyenmai on sanpham.MaKM = khuyenmai.MaKM and sanpham.MaSP = '5';

select * from sanpham
order by (sanpham.SoLuongNhap - sanpham.SoLuongTon) desc;

select * from thongsokythuat join sanpham on sanpham.MaThongSo = thongsokythuat.MaThongSo and MaSP = 1;

select * from sanpham where sanpham.HangSX ='iPhone';
select FileHA from hinhanh_sp where MaSP='1';
select * from sanpham where sanpham.HangSX ='Vsmart';

select * from sanpham where sanpham.GiaBan >=30000000 and sanpham.GiaBan <=40000000;
 













