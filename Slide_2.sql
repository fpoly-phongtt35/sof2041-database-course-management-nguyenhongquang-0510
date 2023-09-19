create database Slide_2
go
use Slide_2
go

create table NhanVien(
	MaNV nvarchar(10) primary key,
	MatKhau varchar(20),
	HoTen nvarchar(50),
	VaiTro nvarchar(30),
)
create table KhoaHoc(
	MaKH nvarchar(10) primary key,
	MaCD nvarchar(10) foreign key references ChuyenDe(MaCD),
	HocPhi int,
	ThoiLuong int,
	NgayKG varchar(20),
	GhiChu nvarchar(30),
	MaNV nvarchar(10) foreign key references NhanVien(MaNV),
	NgayTao date,
)
create table ChuyenDe(
	MaCD nvarchar(10) primary key,
	TenCD nvarchar(50),
	HocPhi int,
	ThoiLuong int,
	Hinh varchar(30),
	MoTa nvarchar(30),
)
create table NguoiHoc(
	MaNH nvarchar(10) primary key,
	MatKhau varchar(20),
	GioiTinh nvarchar(10),
	NgaySinh varchar(20),
	Email varchar(30),
	DienThoai varchar(11),
	GhiChu nvarchar(30),
	MaNV nvarchar(10) foreign key references NhanVien(MaNV),
	NgayDK date,
)
create table HocVien(
	MaHV nvarchar(10) primary key,
	MaKH nvarchar(10) foreign key references KhoaHoc(MaKH),
	MaNH nvarchar(10) foreign key references NguoiHoc(MaNH),
)