create database QLBH
use QLBH 

create table TAI_KHOAN(
Username nvarchar(50) not null primary key,
Pass nvarchar(50) not null,
Vai_tro nvarchar(50) not null,
Ho_ten nvarchar(50) not null,
Dia_chi nvarchar(50) not null,
Email nvarchar(50) not null,
Sdt nvarchar (15) not null
)

create table LOAI_SP(
Ma_loai nchar(10) not null primary key,
Loai_sp nvarchar(50) not null,
)

create table SAN_PHAM(
Ma_sp nchar(10) not null primary key,
Ten_sp nvarchar(50) not null,
Mo_ta nvarchar(500) not null,
So_luong int not null,
Don_gia float not null,
Hinh_anh nvarchar(200) not null,
Nha_sx nvarchar(50) not null,
Ma_loai nchar(10) not null,
foreign key (Ma_loai) references LOAI_SP(Ma_loai)
)

create table DON_HANG(
Ma_don_hang nchar(10) not null primary key,
Username nvarchar(50) not null,
Ngay_mua datetime not null,
Trang_thai nchar(10),
foreign key (Username) references TAI_KHOAN(Username)
)

create table DON_HANG_CT(
Ma_don_hang_ct nchar(10) not null primary key,
Ma_don_hang nchar(10) not null,
Ma_sp nchar(10) not null,
So_luong int not null,
Gia_tien float not null,
foreign key (Ma_sp) references SAN_PHAM(Ma_sp),
foreign key (Ma_don_hang) references DON_HANG(Ma_don_hang),
)

-- Truy xuất nhập liệu
select * from TAI_KHOAN 
select * from LOAI_SP
select * from SAN_PHAM
select * from DON_HANG_CT
select * from DON_HANG
delete from TAI_KHOAN where Username = 'hoang '
delete from SAN_PHAM where Ma_sp = 'sp010 '
insert into TAI_KHOAN values(
'hoai','123','admin','hoai','111 NTT','n@yahoo.com','11111111')
insert into TAI_KHOAN values(
'khanh','123','customer','Khanh','222 NTT','khanh@yahoo.com','22222222')
insert into TAI_KHOAN values(
'huyen','123','customer','huyen','111 NTT','n@yahoo.com','11111111')
insert into TAI_KHOAN values(
'hoa','123','customer','hoa','111 NTT','n@yahoo.com','11111111')
insert into TAI_KHOAN values(
'hoang','123','customer','hoang','111 NTT','n@yahoo.com','11111111')


insert into LOAI_SP values(
'k01','Dien thoai')
insert into LOAI_SP values(
'k02','Laptop')
insert into LOAI_SP values(
'k03','Sac')
insert into LOAI_SP values(
'k04','Tai Nghe')
insert into LOAI_SP values(
'k05','Ban Phim')




insert into SAN_PHAM values(
'sp001','Laptop Asus','man hinh sieu net.',200, 5000000,'Image/mt1.jpg','ASUS','k02')
insert into SAN_PHAM values(
'sp002','Laptop HP','Tinh hoa cua cong nghe',200, 6000000,'Image/ht2.jpg','HP','k02')
insert into SAN_PHAM values(
'sp003','Laptop SonyVaio','Nhe hon, mong hon',200, 7000000,'Image/ht3.jpg','Sony','k02')
insert into SAN_PHAM values(
'sp004','Laptop Dell','Xu huong thoi trang',200, 8000000,'Image/ht4.jpg','Dell','k02')
insert into SAN_PHAM values(
'sp005','Laptop Aces','cau hinh khung, Cam sieu net',200, 9000000,'Image/ht5.jpg','Aces','k02')
insert into SAN_PHAM values(
'sp006','Dien thoai HTC 620G','tinh nang chong tham nuoc',200, 6000000,'Image/dt1.jpg','HTC','k01')
insert into SAN_PHAM values(
'sp007','Dien thoai HTC one M7','tinh nang chong tham nuoc, Chup anh sieu net',200, 7000000,'Image/dt2.jpg','HTC','k01')
insert into SAN_PHAM values(
'sp008','Dien thoai HTC one 8','tinh nang chong tham nuoc, Chụp anh sac net',200, 14000000,'Image/dt3.jpg','HTC','k01')
insert into SAN_PHAM values(
'sp009','Dien thoai HTC one','tinh nang chong tham nuoc, Chụp nhanh với độ phân giải 23 MP',200, 10000000,'Image/dt4.jpg','HTC','k01')
insert into SAN_PHAM values(
'sp010','Dien thoai HTC 625g dual','tinh nang chong tham nuoc, Camera tu dong',200, 11000000,'Image/dt5.jpg','HTC','k01')


insert into DON_HANG_CT values('dhct1','dh1','sp001',5,50000)
insert into DON_HANG_CT values('dhct2','dh2','sp002',5,60000)
insert into DON_HANG_CT values('dhct3','dh3','sp003',5,70000)
insert into DON_HANG_CT values('dhct4','dh4','sp004',5,80000)
insert into DON_HANG_CT values('dhct5','dh5','sp005',5,50000)

insert into DON_HANG values( 'dh1','hoa',11/11/2016,'chuan')
insert into DON_HANG values( 'dh2','khanh',11/11/2016,'chuan')
insert into DON_HANG values( 'dh3','hoa',12/11/2016,'chuan')
insert into DON_HANG values( 'dh4','hoa',1/11/2016,'chuan')
insert into DON_HANG values( 'dh5','khanh',1/11/2016,'chuan')