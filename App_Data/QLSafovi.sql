Create Database QLSafovi
go
Use QLSafovi
go

------------- Tạo Bảng ---------------
--------- bảng Loại Sản Phẩm --------
Create Table LoaiSP
(
	Maloai int identity(1, 1),
	Tenloai nvarchar(50) not null,
	constraint PK_LoaiSP primary key(Maloai)
)
Go
--------- xóa bảng Loại Sản Phẩm ----
Drop Table LoaiSP
Go

-------- bảng Nhà Sản Xuất --------
Create Table NhaSX
(
	MaNSX int identity(1,1),
	TenNSX nvarchar(100) NOT NULL,
	DiaChi NVARCHAR(150),
	DienThoai NVARCHAR(15),
	CONSTRAINT PK_NhaSX PRIMARY KEY(MaNSX)
)
Go

-------- bảng Sản Phẩm -------------
Create Table SanPham
( 
	MaSP INT IDENTITY(1, 1),
	TenSP NVARCHAR(100) NOT NULL,
	DonViTinh NVARCHAR(50) DEFAULT 'hộp',
	DonGia MONEY CHECK (DonGia>=0),
	MoTa NTEXT,
	HinhMinhHoa VARCHAR(50),
	Maloai INT,
	MaNSX INT,
	NgayCapNhat SMALLDATETIME,
	SoLuongBan INT CHECK(SoLuongBan>0),
	SoLanXem INT DEFAULT 0,
	CONSTRAINT PK_SanPham PRIMARY KEY(MaSP)
)
Go
---------- Xóa bảng SanPham --------
Drop Table SanPham
Go

---------- Bảng Khách Hàng --------
CREATE TABLE KHACHHANG
(
	MaKH INT IDENTITY(1, 1),
	HoTenKH nVarchar(50),
	DiaChiKH nVarchar(50),
	DienThoaiKH Varchar(10),
	TenDN Varchar(15),
	MatKhau Varchar(15),
	NgaySinh SMALLDATETIME,
	GioiTinh Bit Default 1,
	Email Varchar(50),
	DaDuyet Bit Default 0,
	CONSTRAINT PK_KhachHang PRIMARY KEY(MaKH)
)
GO

----------- bảng Đơn Đặt Hàng ---------
CREATE TABLE DONDATHANG
(
	SoDH INT IDENTITY(1,1),
	MaKH INT,
	NgayDH SMALLDATETIME,
	TriGia Money Check (TriGia>0),
	DaGiao Bit Default 0,
	NgayGiaoHang SMALLDATETIME,
	TenNguoiNhan Varchar(50),
	DiaChiNhan nvarchar(50),
	DienThoaiNhan Varchar(15),
	HTThanhToan Bit Default 0,
	HTGiaoHang Bit Default 0,
	CONSTRAINT PK_DonDatHang PRIMARY KEY(SoDH)
)
GO

------------ Bảng Chi Tiết Đặt Hàng -----------
CREATE TABLE CTDATHANG
(
	SoDH INT,
	MaSP INT,
	SoLuong Int Check(SoLuong>0),
	DonGia Decimal(9,2) Check(DonGia>=0),
	ThanhTien AS SoLuong*DonGia ,
	CONSTRAINT PK_CTDatHang PRIMARY KEY(SoDH, MaSP)
)
GO

-------------- Bảng Thăm Dò --------------
CREATE TABLE THAMDO
(
	MaCH INT IDENTITY(1,1),
	NgayDang SMALLDATETIME,
	NoiDungThamDo nVarchar(255) NOT NULL,
	TongSoBinhChon Int Default 0,
	CONSTRAINT PK_ThamDo PRIMARY KEY(MaCH)
)
GO

------------- Bảng Chi Tiết Thăm Dò --------------
CREATE TABLE CTTHAMDO
(
	MaCH INT,
	STT INT,
	NoiDungTraLoi nVarchar(255) NOT NULL,
	SoLanBinhChon Int Default 0,
	CONSTRAINT PK_CTThamDo PRIMARY KEY(MaCH,STT)
)
GO

------------ Bảng Quảng Cáo -----------------
CREATE TABLE QUANGCAO
(
	STT INT IDENTITY(1,1),
	TenCongTy nVarchar(200) NOT NULL,
	HinhMinhHoa Varchar(20),
	Href Varchar(100),
	NgayBatDau SMALLDATETIME,
	NgayHetHan SMALLDATETIME,
	CONSTRAINT PK_QuangCao PRIMARY KEY(STT)
)
GO

------------- Bảng Khóa Ngoại --------------
CREATE TABLE ADMIN
(
	MaAdmin INT IDENTITY(1,1),
	HoTenAdmin nVarchar(50),
	DiaChiAdmin nVarchar(50),
	DienThoaiAdmin Varchar(10),
	TenDNAdmin Varchar(15),
	MatKhauAdmin Varchar(15),
	NgaySinhAdmin SMALLDATETIME,
	GioiTinhAdmin Bit Default 1,
	EmailAdmin Varchar(50),
	QuyenAdmin Int Default 1,
	CONSTRAINT PK_Admin PRIMARY KEY(MaAdmin)
)
GO

------------- Tạo Khóa Ngoại ---------------
Alter Table SanPham  Add Constraint FK_SanPham_LoaiSP FOREIGN KEY (Maloai) REFERENCES LoaiSP(Maloai)
Alter Table SanPham  Add Constraint FK_SanPham_NhaSX FOREIGN KEY (MaNSX) REFERENCES NhaSX(MaNSX)
Alter Table DONDATHANG Add Constraint FK_DONDATHANG_KHACHHANG FOREIGN KEY (MaKH) REFERENCES KHACHHANG(MaKH)
Alter Table CTDATHANG Add Constraint FK_CTDATHANG_DONDATHANG FOREIGN KEY (SoDH) REFERENCES DONDATHANG(SoDH)
Alter Table CTDATHANG Add Constraint FK_CTDATHANG_SanPham FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
Alter Table CTTHAMDO Add Constraint FK_CTTHAMDO_THAMDO FOREIGN KEY (MaCH) REFERENCES THAMDO(MaCH)




---------------------------------------------------------
/******** Stored Procedure ***********/
Use QLsafovi
Create Proc Sanphamtheogia
@Giatu int, @Giaden Int
as
Select MaSP, TenSP, Dongia, Mota, Tenloai, TenNSX, NgayCapNhat
From SanPham s, LoaiSP C, NhaSanXuat N
Where C.Maloai=S.Maloai and N.MaNSX=S.MaNSX and DonGia Between @Giatu and @Giaden