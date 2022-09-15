create database quanlydiemthi;
use quanlydiemthi;
create table HocSinh(
    MaHS VARCHAR(20) PRIMARY KEY,
    TenHS VARCHAR(50),
    NgaySinh DATETIME,
    Lop VARCHAR(20),
    GT VARCHAR(20)
);
create table monhoc(
MaMH varchar(20) primary key,
TenMH varchar(50)
);
create table bangdiem(
MaHS varchar(20),
MaMH varchar(20),
Diemthi int,
NgayKT datetime,
primary key (MaHS, MaMH),
FOREIGN KEY (MaHS) REFERENCES HocSinh(MaHS),
foreign key (MaMH) references monhoc(MaMH)
);
create table GiaoVien(
MaGV varchar(20) primary key,
tenGV varchar(20),
SDT varchar(10)
);
alter table monhoc add MaGV varchar(20);
alter table monhoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV);

