USE [master]
GO
/****** Object:  Database [QLMP]    Script Date: 12/22/2017 16:01:12 ******/
CREATE DATABASE [QLMP] ON  PRIMARY 
( NAME = N'QLMP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLMP.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLMP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLMP_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLMP] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLMP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLMP] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLMP] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLMP] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLMP] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLMP] SET ARITHABORT OFF
GO
ALTER DATABASE [QLMP] SET AUTO_CLOSE ON
GO
ALTER DATABASE [QLMP] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLMP] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLMP] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLMP] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLMP] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLMP] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLMP] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLMP] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLMP] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLMP] SET  ENABLE_BROKER
GO
ALTER DATABASE [QLMP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLMP] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLMP] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLMP] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLMP] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLMP] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLMP] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLMP] SET  READ_WRITE
GO
ALTER DATABASE [QLMP] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QLMP] SET  MULTI_USER
GO
ALTER DATABASE [QLMP] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLMP] SET DB_CHAINING OFF
GO
USE [QLMP]
GO
/****** Object:  Table [dbo].[CAPMA_TUDONG]    Script Date: 12/22/2017 16:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAPMA_TUDONG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MAKITU] [varchar](2) NULL,
	[MAKISO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CAPMA_TUDONG] ON
INSERT [dbo].[CAPMA_TUDONG] ([ID], [MAKITU], [MAKISO]) VALUES (1, N'DM', 6)
INSERT [dbo].[CAPMA_TUDONG] ([ID], [MAKITU], [MAKISO]) VALUES (2, N'ML', 16)
INSERT [dbo].[CAPMA_TUDONG] ([ID], [MAKITU], [MAKISO]) VALUES (3, N'MH', 4)
INSERT [dbo].[CAPMA_TUDONG] ([ID], [MAKITU], [MAKISO]) VALUES (4, N'KM', 4)
INSERT [dbo].[CAPMA_TUDONG] ([ID], [MAKITU], [MAKISO]) VALUES (5, N'SP', 27)
INSERT [dbo].[CAPMA_TUDONG] ([ID], [MAKITU], [MAKISO]) VALUES (6, N'KH', 2)
INSERT [dbo].[CAPMA_TUDONG] ([ID], [MAKITU], [MAKISO]) VALUES (7, N'DH', 2)
SET IDENTITY_INSERT [dbo].[CAPMA_TUDONG] OFF
/****** Object:  Table [dbo].[ADMIN]    Script Date: 12/22/2017 16:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMIN](
	[MAAD] [varchar](10) NOT NULL,
	[TENDN] [varchar](30) NULL,
	[MATKHAU] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAAD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ADMIN] ([MAAD], [TENDN], [MATKHAU]) VALUES (N'AD0000001', N'admin', N'admin')
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 12/22/2017 16:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MADM] [varchar](10) NOT NULL,
	[TENDM] [nvarchar](50) NULL,
	[ACTIVE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MADM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DANHMUC] ([MADM], [TENDM], [ACTIVE]) VALUES (N'DM0000001', N'TRANG ĐIỂM', 1)
INSERT [dbo].[DANHMUC] ([MADM], [TENDM], [ACTIVE]) VALUES (N'DM0000002', N'CHĂM SÓC DA', 1)
INSERT [dbo].[DANHMUC] ([MADM], [TENDM], [ACTIVE]) VALUES (N'DM0000003', N'BODYCARE', 1)
INSERT [dbo].[DANHMUC] ([MADM], [TENDM], [ACTIVE]) VALUES (N'DM0000004', N'NƯỚC HOA', 1)
INSERT [dbo].[DANHMUC] ([MADM], [TENDM], [ACTIVE]) VALUES (N'DM0000005', N'CHĂM SÓC TÓC', 1)
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 12/22/2017 16:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MAKM] [varchar](10) NOT NULL,
	[GIATRI] [int] NULL,
	[ACTIVE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KHUYENMAI] ([MAKM], [GIATRI], [ACTIVE]) VALUES (N'KM0000001', 25, 1)
INSERT [dbo].[KHUYENMAI] ([MAKM], [GIATRI], [ACTIVE]) VALUES (N'KM0000002', 50, 1)
INSERT [dbo].[KHUYENMAI] ([MAKM], [GIATRI], [ACTIVE]) VALUES (N'KM0000003', 0, 1)
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/22/2017 16:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [varchar](10) NOT NULL,
	[TENKH] [nvarchar](50) NULL,
	[GIOITINH] [bit] NULL,
	[NGAYSINH] [datetime] NULL,
	[DIACHI] [nvarchar](50) NULL,
	[DIENTHOAI] [varchar](11) NULL,
	[EMAIL] [varchar](30) NULL,
	[TENDN] [varchar](30) NULL,
	[MATKHAU] [varchar](30) NULL,
	[ACTIVE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TENDN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [GIOITINH], [NGAYSINH], [DIACHI], [DIENTHOAI], [EMAIL], [TENDN], [MATKHAU], [ACTIVE]) VALUES (N'KH0000001', N'Phạm Quốc Hưng', 1, CAST(0x000088F700000000 AS DateTime), N'Bình thạnh', N'0123456789', N'hung@gmail.com', N'hung', N'hung', 1)
/****** Object:  Table [dbo].[HANGSANXUAT]    Script Date: 12/22/2017 16:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HANGSANXUAT](
	[MAHANG] [varchar](10) NOT NULL,
	[TENHANG] [nvarchar](50) NULL,
	[ACTIVE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHANG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[HANGSANXUAT] ([MAHANG], [TENHANG], [ACTIVE]) VALUES (N'MH0000001', N'Benton', 1)
INSERT [dbo].[HANGSANXUAT] ([MAHANG], [TENHANG], [ACTIVE]) VALUES (N'MH0000002', N'Murad', 1)
INSERT [dbo].[HANGSANXUAT] ([MAHANG], [TENHANG], [ACTIVE]) VALUES (N'MH0000003', N'Secret Key', 1)
/****** Object:  Table [dbo].[DONHANG]    Script Date: 12/22/2017 16:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MADH] [varchar](10) NOT NULL,
	[NGAYLAP] [datetime] NOT NULL,
	[TONGTIEN] [int] NULL,
	[TINHTRANG] [bit] NULL,
	[MAKH] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DONHANG] ([MADH], [NGAYLAP], [TONGTIEN], [TINHTRANG], [MAKH]) VALUES (N'DH0000001', CAST(0x0000A81500E027BF AS DateTime), 2800000, 0, N'KH0000001')
/****** Object:  Table [dbo].[LOAISP]    Script Date: 12/22/2017 16:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAISP](
	[MALOAI] [varchar](10) NOT NULL,
	[MADM] [varchar](10) NOT NULL,
	[TENLOAI] [nvarchar](200) NULL,
	[ACTIVE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000001', N'DM0000001', N'Kem BB-CC-DD', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000002', N'DM0000001', N'Kem che khuyết điểm', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000003', N'DM0000001', N'Primer - Kem lót  ', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000004', N'DM0000001', N'Phấn phủ - Phấn nền', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000005', N'DM0000001', N'Phấn má hồng', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000006', N'DM0000002', N'Kem dưỡng da', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000007', N'DM0000002', N'Mặt nạ', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000008', N'DM0000002', N'Sữa rửa mặt', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000009', N'DM0000002', N'Tẩy trang', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000010', N'DM0000003', N'Sữa tắm', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000011', N'DM0000003', N'Giảm mỡ bụng', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000012', N'DM0000005', N'Dầu gội', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000013', N'DM0000005', N'Dầu xả', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000014', N'DM0000004', N'Nước hoa nữ', 1)
INSERT [dbo].[LOAISP] ([MALOAI], [MADM], [TENLOAI], [ACTIVE]) VALUES (N'ML0000015', N'DM0000004', N'Nước hoa nam', 1)
/****** Object:  View [dbo].[XEM_LOAISP]    Script Date: 12/22/2017 16:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create view [dbo].[XEM_LOAISP]
AS

SELECT D.MADM,TENDM,MALOAI,TENLOAI,L.ACTIVE
FROM DANHMUC D, LOAISP L
WHERE D.MADM = L.MADM
GO
/****** Object:  View [dbo].[XEM_DONDATHANG]    Script Date: 12/22/2017 16:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XEM_DONDATHANG]
AS

SELECT MADH,NGAYLAP,DONHANG.MAKH,TENKH,TONGTIEN,TINHTRANG
FROM DONHANG, KHACHHANG
WHERE DONHANG.MAKH =  KHACHHANG.MAKH
GO
/****** Object:  View [dbo].[COMBOBOX_LOAI]    Script Date: 12/22/2017 16:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[COMBOBOX_LOAI]
AS
SELECT D.MADM,D.TENDM,L.MALOAI,L.TENLOAI
FROM DANHMUC D, LOAISP L
WHERE D.MADM=L.MADM AND L.ACTIVE= 'true'
GO
/****** Object:  StoredProcedure [dbo].[P_MENU]    Script Date: 12/22/2017 16:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_MENU] (@ID VARCHAR(10))
AS
BEGIN	
	IF(@ID='NULL')
	BEGIN
		SELECT * 
		FROM DANHMUC
	END
	ELSE
	BEGIN
		SELECT LSP.MADM,TENDM,MALOAI,TENLOAI
		FROM DANHMUC DM,LOAISP LSP
		WHERE DM.MADM = LSP.MADM AND @ID=LSP.MADM
	END
END
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/22/2017 16:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [varchar](10) NOT NULL,
	[MALOAI] [varchar](10) NOT NULL,
	[MAHANG] [varchar](10) NOT NULL,
	[TENSP] [nvarchar](50) NULL,
	[MOTA] [nvarchar](max) NULL,
	[DONGIA] [int] NULL,
	[TINHTRANG] [bit] NULL,
	[ACTIVE] [bit] NULL,
	[MAKM] [varchar](10) NOT NULL,
	[HINHANH] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000001', N'ML0000001', N'MH0000001', N'Kem Lót Maybelline Baby Skin Pore Eraser (22ml)', N'<p>Maybelline Baby Skin Instant Pore Eraser<strong>&nbsp;</strong>mang đến cho bạn một lớp nền ho&agrave;n hảo v&agrave; chuy&ecirc;n nghiệp khi che phủ ho&agrave;n to&agrave;n c&aacute;c lỗ ch&acirc;n l&ocirc;ng to, mụn hay quầng th&acirc;m. Với giả cả b&igrave;nh d&acirc;n Maybelline Baby Skin Instant Pore Eraser nhanh ch&oacute;ng chiếm được cảm t&igrave;nh của c&aacute;c t&iacute;n đồ l&agrave;m đẹp m&agrave; hiệu quả th&igrave; lại tr&ecirc;n cả tuyệt vời, kh&ocirc;ng thua k&eacute;m g&igrave; đ&agrave;n chị đ&igrave;nh đ&aacute;m Benefit porefessional primer.</p>

<p>Chất kem dạng gel trong suốt, đặc n&ecirc;n dễ t&aacute;n v&agrave; thẩm thấu nhanh, hiệu quả che lỗ ch&acirc;n l&ocirc;ng c&oacute; thể nh&igrave;n thấy ngay khi t&aacute;n đều l&ecirc;n mặt. Trong chất kem c&oacute; chứa silicon n&ecirc;n sản phẩm hoạt động rất tốt trong việc ngăn ngừa dầu thừa sản sinh khi sử dụng mang đến một l&agrave;n da căng mọng.</p>

<p>Maybelline Baby Skin Instant Pore Eraser c&oacute; thể d&ugrave;ng trước lớp nền trang điểm hoặc d&ugrave;ng một m&igrave;nh nếu bạn muốn một phong c&aacute;ch tự nhi&ecirc;n m&agrave; kh&ocirc;ng bị ai ph&aacute;t hiện l&agrave; trang điểm, kh&ocirc;ng chứa hương liệu, kh&ocirc;ng g&acirc;y mụn, kh&ocirc;ng l&agrave;m b&iacute; lỗ ch&acirc;n l&ocirc;ng, dễ sử dụng, tiện lợi mang theo.</p>
', 160002, 1, 0, N'KM0000003', N'sp1.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000002', N'ML0000001', N'MH0000001', N'Kem Trang Điểm BB Cream NYX BB Beauty Balm (30ml)', N'<p><strong>BB cream NYX BB Beauty Balm</strong></p>

<p>BB l&agrave; chữ viết tắt của Blemish Balm c&oacute; &yacute; nghĩa l&agrave; che nhược điểm nhẹ nh&agrave;ng, l&agrave;m dịu nhẹ l&agrave;n da. C&ocirc;ng thức thức BB Cream bắt nguồn đầu ti&ecirc;n từ Đức v&agrave; được c&aacute;c chuy&ecirc;n gia da liễu sử dụng cho c&aacute;c bệnh nh&acirc;n sau khi giải phẫu thẩm mỹ bằng tia laser để l&agrave;m dịu v&agrave; hồi phục những v&ugrave;ng da đặc biệt nhạy cảm, đồng thời che phủ những v&ugrave;ng sẹo, mụn hay mẩn đỏ sao khi phẫu thuật. Ng&agrave;y nay, kem BB được xem l&agrave; một thế hệ kem trang điểm mới với những cải tiến mang đến sự tiện lợi cho người sử dụng.</p>

<p>D&ograve;ng sản phẩm BB cream mới nhất của NYX Cosmetis, được cải tiến để cung cấp nước gi&uacute;p da căng mọng v&agrave; đầy đặn, tạo một lớp l&oacute;t &amp; ho&agrave;n chỉnh da. NYX BB Beauty Balm sản phẩm được ph&aacute;t triển bởi NYX Cosmetics gi&uacute;p cho l&agrave;n da bạn tr&ocirc;ng ho&agrave;n to&agrave;n xinh đẹp mượt m&agrave; v&agrave; rạng rỡ hơn. Kem trang điểm si&ecirc;u đa năng mang đến sự ho&agrave;n hảo chỉ trong một tu&yacute;p BB cream . C&ocirc;ng thức kiềm dầu v&agrave; kho&aacute;ng chất phong ph&uacute; được t&iacute;ch hợp gi&uacute;p sản phẩm BB cream tất cả trong một được ho&agrave;n hảo hơn.</p>

<p>Sản phẩm c&oacute; hiệu quả l&agrave;m s&aacute;ng da, gi&uacute;p da mịn m&agrave;ng, tăng cường độ ẩm giữ nước gi&uacute;p da mềm mại v&agrave; săn chắc, cung cấp c&aacute;c kho&aacute;ng chất gi&uacute;p da khỏe mạnh v&agrave; đặc biệt kh&ocirc;ng chứa dầu. Sản phẩm ph&ugrave; hợp với mọi loại da. C&oacute; thể sử dụng như một lớp l&oacute;t nếu trang điểm kỹ hoặc d&ugrave;ng một m&igrave;nh để mang c&oacute; lớp nền tự nhi&ecirc;n nhẹ nh&agrave;ng.</p>
', 270000, 1, 1, N'KM0000003', N'aa.png')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000003', N'ML0000002', N'MH0000002', N'Che Khuyết Điểm Revlon Photoready Concealer', N'<p><strong>THỎI CHE KHUYẾT ĐIỂM REVLON PHOTOREADY CONCEALER</strong></p>

<p>Kem che khuyết điểm l&agrave; m&oacute;n kh&ocirc;ng thể thiếu đ&oacute;ng g&oacute;p v&agrave;o sự tự tin của ph&aacute;i đẹp. Bạn đ&atilde; biết c&aacute;ch chọn kem che khuyết điểm ph&ugrave; hợp với da mụn chưa?<br />
Chọn kem che khuyết điểm cho da mụn.</p>

<p>Che khuyết điểm dạng b&uacute;t được ưu ti&ecirc;n d&agrave;nh cho da mụn v&igrave; ch&uacute;ng c&oacute; đầu nhọn v&agrave; khả năng phủ quanh nốt mụn một c&aacute;ch dễ d&agrave;ng. Che khuyết điểm l&agrave; c&ocirc;ng cụ đắc lực gi&uacute;p ph&aacute;i nữ v&ocirc; c&ugrave;ng tự tin khi ra phố.</p>

<p>&nbsp;</p>

<p>Revlon PhotoReady Concealer chứa 0,5% axit salicylic c&oacute; thể vừa che mụn vừa che khuyết điểm. B&ecirc;n cạnh đ&oacute;, sản phẩm c&ograve;n chứa vitamin C, ngăn ngừa t&igrave;nh trạng l&atilde;o h&oacute;a da. Được gắn m&aacute;c oil-free v&agrave; fragance-free, kem Revlon cực k&igrave; ph&ugrave; hợp với da nhạy cảm v&agrave; da dầu.</p>

<p>Thỏi che khuyết điểm ăn ảnh chuy&ecirc;n nghiệp Revlon PhotoReady Concealer Makeup che phủ c&aacute;c thể loại khuyết điểm: quầng th&acirc;m, t&agrave;n nhang, mạch m&aacute;u, thậm ch&iacute; cả sẹo nhỏ.</p>

<p>Che phủ cực tốt v&agrave; ho&agrave;n to&agrave;n tự nhi&ecirc;n. Bảo vệ da với chỉ số chống nắng SPF 23.</p>

<p><em><strong>M&agrave;u sắc:</strong></em><br />
+ Light/Medium 003 &ndash; da trắng s&aacute;ng<br />
+ Medium 004 &ndash; da trung b&igrave;nh s&aacute;ng<br />
+ Medium Deep 005 &ndash; da trung b&igrave;nh</p>
', 150001, 1, 1, N'KM0000003', N'che.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000004', N'ML0000002', N'MH0000002', N'Kem Che Khuyết Điểm Benefit Boi', N'<h2><strong>Kem Che Khuyết Điểm Benefit Boi-ing Industrial-Strength Concealer (1.3g)</strong></h2>

<p>&nbsp;</p>

<p>Kem Che Khuyết Điểm Benefit Boi-ing Industrial-Strength Concealer gi&uacute;p che khuyết điểm ho&agrave;n hảo nhưng vẫn rất tự nhi&ecirc;n. Nếu vết th&acirc;m quầng mắt, th&acirc;m mụn, mẩn đỏ, t&agrave;n nhang khiến bạn k&eacute;m tự tin th&igrave; đ&acirc;y sẽ l&agrave; lựa chọn ho&agrave;n hảo.</p>

<p>Kem gi&uacute;p che phủ khuyết điểm tr&ecirc;n khu&ocirc;n mặt. Da mặt khuyết điểm sẽ kh&ocirc;ng c&ograve;n l&agrave; trở ngại của bạn nữa. Đặc biệt, kem kh&ocirc;ng tạo vết nhăn hay bong m&agrave;u. Da của bạn tr&ocirc;ng sẽ tự nhi&ecirc;n, rạng rỡ v&agrave; cuốn h&uacute;t. Độ b&aacute;m của sản phẩm cao v&agrave; kh&ocirc; tho&aacute;ng suốt cả ng&agrave;y. Do đ&oacute;, bạn kh&ocirc;ng cần phải lo da bị b&iacute;t hay đổ nhờn.</p>

<p>&nbsp;</p>

<p>Sản phẩm được sản xuất theo c&ocirc;ng nghệ ti&ecirc;n tiến cho bạn l&agrave;n da mềm mại, đẹp kh&ocirc;ng tỳ vết.</p>

<p>Thiết kế nhỏ gọn c&oacute; gương ngay trong nắp gi&uacute;p bạn dễ d&agrave;ng sử dụng v&agrave; mang theo b&ecirc;n m&igrave;nh.</p>

<p>Hướng dẫn sử dụng</p>

<ul>
	<li>Lấy một lượng kem vừa đủ chấm l&ecirc;n khuyết điểm tr&ecirc;n mặt.</li>
	<li>D&ugrave;ng tay hoặc cọ m&uacute;t chấm nhẹ nh&agrave;ng cho lớp kem tự nhi&ecirc;n.</li>
</ul>
', 170000, 1, 1, N'KM0000003', N'che1.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000005', N'ML0000003', N'MH0000003', N'Set Try It Kit Primer Authority', N'<h1><strong>Set Smashbox Try It Kit Primer Authority</strong></h1>

<p>&nbsp;</p>

<p><a href="https://www.facebook.com/hashtag/smashbox?source=feed_text&amp;story_id=1285362604810010">#Smashbox</a>&nbsp;&ndash; h&atilde;ng mỹ phẩm trang điểm &ldquo;Studio&rdquo; được th&agrave;nh lập năm 1996 tại L.A, trực thuộc tập đo&agrave;n Est&eacute;e Lauder từ năm 2000 đến nay. C&aacute;c d&ograve;ng sản phẩm của Smashbox tập trung v&agrave;o việc k&eacute;o d&agrave;i hiệu ứng ho&agrave;n hảo trong nhiều giờ, đồng thời việc make up với Smashbox sẽ cho gương mặt bạn d&ugrave; l&agrave; ở studio, tr&ecirc;n c&aacute;c trang ảnh hay ngo&agrave;i đời thực đều c&oacute; được vẻ đẹp như mong muốn. Drew Barrymore v&agrave; Charlize Theron l&agrave; 2 fan lớn của thương hiệu mỹ phẩm đến từ US n&agrave;y.</p>

<p>&nbsp;</p>

<p>+ Kem L&oacute;t V&ugrave;ng Da Dưới Mắt Smashbox Photo Finish Hydrating Under Eye Primer: 7.4ml<br />
+ Kem L&oacute;t Bầu Mắt Smashbox Photo Finish 24 Hour Shadow Primer: 4ml<br />
+ Nước Xịt L&oacute;t Trang Điểm Smashbox Photo Finish Primer Water: 30ml&nbsp;<br />
+ Kem L&oacute;t Smashbox Photo Finish Foundation Primer: 7.4ml</p>

<p><img alt="" src="https://www.facebook.com/images/emoji.php/v7/f9/1.5/16/1f3af.png" style="height:16px; width:16px" />&nbsp;D&ugrave; l&agrave; c&ocirc; n&agrave;ng mới chập chững bước v&agrave;o thế giới make up hay đ&atilde; cứng tay nghề th&igrave; đều phải ch&uacute; trọng tới bước kem l&oacute;t. Kem l&oacute;t kh&ocirc;ng những gi&uacute;p lớp nền th&ecirc;m mịn m&agrave;ng, ho&agrave;n hảo m&agrave; c&ograve;n ngăn chặn những h&oacute;a chất chứa trong c&aacute;c loại mỹ phẩm, đồng thời hỗ trợ dưỡng da. Nếu n&agrave;ng n&agrave;o chăm ch&uacute;t, tỉ mỉ cho bước kem l&oacute;t th&igrave; đừng ngần ngại thử ngay Set Smashbox Try It Kit Primer Authority nh&eacute;.</p>
', 800000, 1, 1, N'KM0000003', N'kemlot.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000006', N'ML0000003', N'MH0000001', N'Kem Lót The Face Shop Air Cotton', N'<p><strong>Make up Base Air Cotton</strong>&nbsp;l&agrave; k&egrave;m l&oacute;t hiệu chỉnh &nbsp;theo sắc m&agrave;u da của h&atilde;ng The Faceshop cải tiến hơn d&ograve;ng cũ Lovely Meex make up base, kh&ocirc; nhanh hơn tr&ecirc;n da, th&agrave;nh phần &iacute;t dầu kho&aacute;ng hơn, do đ&oacute; da dầu cũng y&ecirc;n t&acirc;m sử dụng, sản phẩm&nbsp;<strong>Make up Base Air Cotton</strong>&nbsp;kh&ocirc;ng s&acirc;u kiềm dầu như c&aacute;c d&ograve;ng sản phẩm kem l&oacute;t kiềm dầu kh&aacute;c, hay đa năng( vừa kiềm dầu vừa hiệu chỉnh sắc m&agrave;u da) như kem l&oacute;t đa năng Velvet Skin primer của The faceshop nhưng kh&ocirc; kh&aacute; nhanh hơn d&ograve;ng cũ, gi&uacute;p da giảm tối đa cảm gi&aacute;c dầu d&iacute;nh.</p>

<p>&nbsp;</p>

<p><strong>Kem l&oacute;t Air Cotton Make Up Base</strong>&nbsp;với th&agrave;nh phần cotton v&agrave; đất s&eacute;t trắng giữ độ ẩm v&agrave; cung cấp dưỡng chất cho da mềm mại, mịn m&agrave;ng, căng đầy sức sống. Đồng thời chứa khả năng hiệu chỉnh theo sắc m&agrave;u da, nhờ đ&oacute; gi&uacute;p đầy l&ugrave;i cũng như phủ lấp những khuyết điểm tr&ecirc;n l&agrave;n da bạn.</p>

<p>Chỉ số chống SPF30 PA+++ tối ưu cho 1 loại kem l&oacute;t, bảo vệ da dưới &aacute;nh nắng mặt trời.</p>
', 350000, 1, 1, N'KM0000003', N'kem-lót-tfs-2.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000007', N'ML0000004', N'MH0000001', N'Phấn Phủ Karadium Collagen Moisture ', N'<p><strong>Phấn Karadium Collagen Moisture Two-way Cake SPF25 PA++</strong></p>

<p>&nbsp;</p>

<p>Sản phẩm c&oacute; 3 t&aacute;c dụng:<br />
&ndash; Trang điểm, dưỡng da v&agrave; chống nắng hiệu quả. Với SPF 25, PA+++ th&igrave; khả năng chống tia UVA-UVB cực lớn v&agrave; c&oacute; thể bảo vệ bạn trong khoảng 12 giờ. Với độ b&aacute;m cao sẽ khiến c&aacute;c lớp trang điểm trở n&ecirc;n nhẹ nh&agrave;ng, tinh tế v&agrave; mỏng manh hơn.&nbsp;<br />
&ndash; Đ&acirc;y l&agrave; sản phẩm phấn n&eacute;n cao cấp 2 trong 1 vừa l&agrave; nền, vừa l&agrave; phủ với th&agrave;nh phần collagen, c&oacute; t&aacute;c dụng l&agrave;m da săn chắc, căng mịn, kết hợp với th&agrave;nh phần chống nắng SPF25 PA+++ tạo n&ecirc;n một lớp che phủ tối ưu, cho bạn một gương mặt ho&agrave;n hảo v&agrave; rạng rỡ.<br />
&ndash; Với th&agrave;nh phần Collagen, c&oacute; t&aacute;c dụng l&agrave;m da săn chắc, căng mịn, kết hợp với th&agrave;nh phần chống nắng tạo n&ecirc;n một l&agrave;n da đầy sức sống. Th&agrave;nh phần Collagen l&agrave; th&agrave;nh phần quan trọng trong cấu th&agrave;nh của da v&igrave; vậy khi bạn trang điểm bằng phấn phủ n&agrave;y sẽ mang lại cho bạn l&agrave;n da mịn m&agrave;ng kh&ocirc;ng t&igrave; vết.</p>
', 260000, 1, 1, N'KM0000003', N'karadium-4.png')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000008', N'ML0000004', N'MH0000003', N'Phấn Phủ Dior Snow Capture Totale', N'<p>C&oacute; độ ch&oacute;ng nắng SPF 20 PA +++, với hai cải tiến độc đ&aacute;o: nano-stretch &hellip; Phấn c&oacute; độ che phủ tốt, kiềm dầu tốt, th&iacute;ch hợp cho mọi loại da</p>

<p>Hộp mini sample 3g ( trọng lượng bằng 1/3 fullsize)</p>

<p>&nbsp;</p>

<p>Phấn phủ dạng n&eacute;n The Face Shop Skin Brightening UV Pact SPF 50 PA+++ l&agrave; d&ograve;ng phấn c&oacute; khả năng kiềm dầu cực k&igrave; tốt, hỗ trợ h&uacute;t nhờn để duy tr&igrave; lớp phấn s&aacute;ng mịn l&acirc;u d&agrave;i.</p>

<p><img alt="" src="https://www.facebook.com/images/emoji.php/v6/f6a/1/16/1f530.png" style="height:16px; width:16px" />?&nbsp;Th&agrave;nh phần của em ấy được chiết xuất từ những loại hạt gi&agrave;u dinh dưỡng từ thi&ecirc;n nhi&ecirc;n như: Cloudberry, Quinoa, Hawaiian Clay&hellip; kh&ocirc;ng chỉ gi&uacute;p c&acirc;n bằng độ ẩm gi&uacute;p duy tr&igrave; độ s&aacute;ng l&acirc;u d&agrave;i cho lớp nền trang điểm m&agrave; c&ograve;n cực k&igrave; an to&agrave;n với mọi l&agrave;n da.</p>
', 240000, 1, 1, N'KM0000003', N'DIOR-SNOW.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000009', N'ML0000005', N'MH0000002', N'Bảng Phấn Má Hồng Morphe 9B', N'<h2><strong>Bảng Phấn M&aacute; Hồng Morphe 9B &ndash; The Blushed Palette</strong></h2>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Nếu như c&aacute;c n&agrave;ng c&ograve;n đang loay hoay trong thế giới makeup v&agrave; kh&ocirc;ng biết chọn sản phẩm m&aacute; hồng n&agrave;o th&iacute;ch hợp cho m&igrave;nh, th&igrave;&nbsp;<a href="https://www.facebook.com/hashtag/nuty?source=feed_text&amp;story_id=1455852231094379">#Nuty</a>&nbsp;khuy&ecirc;n c&aacute;c c&ocirc; g&aacute;i h&atilde;y &ldquo;kết th&acirc;n&rdquo; ngay với b&eacute; đẹp Bảng Phấn M&aacute; Hồng Morphe 9B The Blushed Palette đang được giới beauty blogger khen rần rần n&agrave;y nhanh đi n&agrave;.</p>

<p>Sở dĩ em n&oacute; nhận được nhiều tr&agrave;n ph&aacute;o tay v&agrave; lời khen rầm rộ bởi chứa đến 9 gam m&agrave;u tươi s&aacute;ng từ hồng đậm đến cam đất, ph&ugrave; hợp với đủ phong c&aacute;ch makeup trẻ trung, đi học, đi l&agrave;m, đi chơi&hellip;</p>

<p>Đặc biệt bảng m&aacute; hồng n&agrave;y kết hợp cả chất phấn l&igrave; (matte) đến shimmer (nhũ lấp l&aacute;nh), gi&uacute;p gương mặt trở n&ecirc;n rạng rỡ, tươi tắn hơn.</p>

<p>Chất phấn mềm mịn, dễ t&aacute;n v&agrave; l&acirc;u tr&ocirc;i, cho bạn v&ocirc; tư bung lụa cả ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng lo phải dặm lại lớp trang điểm nhiều lần.</p>

<p>M&agrave;u l&ecirc;n đẹp, chuẩn v&agrave; cực ăn ảnh, gi&uacute;p cả gương mặt tr&ocirc;ng bừng s&aacute;ng v&agrave; xinh y&ecirc;u tuyệt đối.</p>

<p>Ngo&agrave;i ra c&aacute;c n&agrave;ng cũng c&oacute; thể pha trộn những gam m&agrave;u lại với nhau để tạo n&ecirc;n n&eacute;t ri&ecirc;n hay d&ugrave;ng phấn m&agrave;u n&acirc;u để tạo khối được lu&ocirc;n nh&eacute;, si&ecirc;u tiện lợi n&agrave;.</p>
', 290000, 1, 1, N'KM0000003', N'ME9B-500x500.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000010', N'ML0000005', N'MH0000002', N'Set Phấn Mắt và Má Hồng NYX Butt Naked', N'<h1>Set Phấn Mắt v&agrave; M&aacute; Hồng NYX Butt Naked &ndash; Turn The Other Cheek</h1>

<p>&nbsp;</p>

<p>Set Phấn Mắt v&agrave; M&aacute; Hồng NYX Butt Naked &ndash; Turn The Other Cheek sang trọng với thiết kế vỏ hộp đen b&oacute;ng, 2 tầng sắc sảo v&agrave; chắc chắn, c&oacute; gương lớn gi&uacute;p việc trang điểm th&ecirc;m dễ d&agrave;ng.</p>

<p>Chuy&ecirc;n nghiệp v&agrave; tiện lợi với:<br />
+ 15 m&agrave;u mắt<br />
+ 4 m&aacute; hồng<br />
+ 3 highlight + illuminator</p>
', 360000, 1, 1, N'KM0000003', N'set-phấn-mắt-và-má-hồng-Turn-Cheek-Nyx2.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000011', N'ML0000006', N'MH0000003', N'Gel Dưỡng Ẩm Vichy Aqualia Thermal ', N'<p><strong>Vichy Aqualia Thermal Mineral Water gel</strong></p>

<p>Vichy l&agrave; thương hiệu nổi tiếng của Ph&aacute;p được th&agrave;nh lập v&agrave;o năm 1931 tại th&agrave;nh phố c&ugrave;ng t&ecirc;n Vichy bởi b&aacute;c sĩ da liễu Haller v&agrave; nh&agrave; kinh doanh Guerin. Với nhiều năm kinh nghiệm, viện nghi&ecirc;n cứu Vichy đ&atilde; s&aacute;ng tạo ra nhiều phương thức mới v&agrave; hiệu quả để chăm s&oacute;c sức khỏe l&agrave;n da. Tất cả sản phẩm Vichy được kiểm nghiệm một c&aacute;ch to&agrave;n diện v&agrave; khắt khe dưới sự gi&aacute;m s&aacute;t của chuy&ecirc;n gia da liễu về độ an to&agrave;n v&agrave; dịu nhẹ cho da, đặc biệt đối với l&agrave;n da nhạy cảm. Ngo&agrave;i ra, c&aacute;c sản phẩm của Vichy đ&atilde; được chứng minh kh&ocirc;ng g&acirc;y dị ứng, kh&ocirc;ng g&acirc;y mụn, chứa nước kho&aacute;ng Vichy gi&agrave;u kho&aacute;ng chất c&oacute; t&aacute;c dụng củng cố v&agrave; tăng cường t&aacute;i tạo da.</p>

<p>&nbsp;</p>

<p>Kem dưỡng chứa c&aacute;c kho&aacute;ng chất từ nguồn nước kho&aacute;ng vichy được kết hợp c&ugrave;ng hoạt chất đột ph&aacute; Aquabioryl l&agrave; thế hệ hoạt chất dưỡng ẩm mới, gi&uacute;p dưỡng ẩm s&acirc;u v&agrave;o da v&agrave; tức thời; đồng thời li&ecirc;n tục cung cấp nước đến từng tế b&agrave;o da . Hyaluronic acid trong c&ocirc;ng thức gel cục kỳ m&aacute;t lạnh v&agrave; tinh khiết như pha l&ecirc; , gi&uacute;p dưỡng ẩm v&agrave; l&agrave;m dịu m&aacute;t l&agrave;n da tức th&igrave; , mang lại cảm gi&aacute;c tươi m&aacute;t sảng kho&aacute;i suốt 48h .</p>
', 310000, 1, 1, N'KM0000003', N'Gel-Dưỡng-Ẩm-Vichy-Aqualia-Thermal-Mineral-Water-Gel-50ml.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000012', N'ML0000006', N'MH0000002', N'Kem Dưỡng Ẩm Ban Đêm Clinique', N'<p><strong>Kem Dưỡng Ẩm Th&ocirc;ng Minh Ban Ng&agrave;y Clinique Smart Night Custom Repair</strong></p>

<p>&nbsp;</p>

<p>Kem dưỡng ẩm th&ocirc;ng minh ban ng&agrave;y Clinique Smart Night&trade;&nbsp;Broad Spectrum SPF 15 Custom-Repair Moisture</p>

<p><br />
Gi&uacute;p phục hồi l&agrave;n da sạm, đen, sần s&ugrave;i kh&ocirc;ng đều m&agrave;u</p>

<p><br />
&ndash; Sản phẩm chỉ vừa tung ra tại Mỹ đầu năm 2016. Như t&ecirc;n gọi, kem dưỡng th&ocirc;ng minh n&agrave;y sẽ tự t&igrave;m hiểu xem da bạn đang c&oacute; tổn thương n&agrave;o v&agrave; tự t&igrave;m c&aacute;ch khắc phục ch&uacute;ng. Smart Custom-Repair Serum chữa trị chinh x&aacute;c những tổn thương ở cả mức độ nh&igrave;n thấy (k&eacute;m đ&agrave;n hồi, đen sạm) v&agrave; kh&ocirc;ng nh&igrave;n thấy. Khi nhận được những &ldquo;t&iacute;n hiệu cầu cứu&rdquo; đ&oacute; của da, c&aacute;c hoạt chất trong kem sẽ ph&acirc;n t&iacute;ch v&agrave; k&iacute;ch hoạt những th&agrave;nh phần ph&ugrave; hợp để chữa trị thương tổn ở từng v&ugrave;ng da kh&aacute;c nhau.</p>

<p><br />
+ Ngay lập tức l&agrave;m da căng mọng, mịn m&agrave;ng hơn 75%.</p>
', 280000, 1, 1, N'KM0000003', N'CLINIQUE-SMART-NIGHT-CUSTOM-REPAIR2222222222222222.png')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000013', N'ML0000006', N'MH0000002', N'Gel Dưỡng Da Lô Hội Nature Republic', N'<p><strong>Gel dưỡng da l&ocirc; hội 8 t&aacute;c dụng 92% Aloe Vera Gel Nature Republic</strong></p>

<p>&nbsp;</p>

<p>Gel L&ocirc; Hội Nature Republic Aloe Vera 92% Soothing Gel với chiết xuất ho&agrave;n to&agrave;n từ l&ocirc; hội nguy&ecirc;n chất 92% v&agrave; đ&atilde; được kiểm định bởi Tổ chức chứng nhận sản phẩm hữu cơ California (CCOF).<br />
Như c&aacute;c bạn cũng thấy th&igrave; hũ gel n&agrave;y được ghi r&otilde; l&agrave; Aloe Leaf Extract 92%. Nhiều bạn nghĩ ghi thế n&agrave;y tức l&agrave; th&agrave;nh phần l&ocirc; hội chiếm 92% tổng c&aacute;c th&agrave;nh phần. Điều n&agrave;y kh&ocirc;ng ch&iacute;nh x&aacute;c đ&acirc;u nh&eacute;, m&agrave; l&agrave; l&ocirc; hội được đưa v&agrave;o sản phẩm n&agrave;y đạt độ tinh khiết tới 92%, c&ograve;n lại th&igrave; c&oacute; rất nhiều chất kh&aacute;c nữa.<br />
C&aacute;c ưu điểm của em n&agrave;y c&oacute; thể kể m&atilde;i kh&ocirc;ng hết như:<br />
Gel dễ d&agrave;ng thẩm thấu, gi&uacute;p l&agrave;m dịu v&agrave; tăng cường độ ẩm, dễ sử dụng v&agrave; kh&ocirc;ng g&acirc;y cảm gi&aacute;c nhờn d&iacute;nh.<br />
C&oacute; chứa vitamin v&agrave; chất chống oxy h&oacute;a trong l&ocirc; hội gi&uacute;p hạn chế t&igrave;nh trạng l&atilde;o ho&aacute; sớm của da, l&agrave;m tăng độ đ&agrave;n hồi v&agrave; se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, ngo&agrave;i ra c&ograve;n c&oacute; t&aacute;c dụng dưỡng ẩm v&agrave; l&agrave;m mềm t&oacute;c nữa.<br />
Gi&uacute;p l&agrave;m dịu v&agrave; bảo vệ l&agrave;n da nhạy cảm, dễ bị k&iacute;ch ứng, cho l&agrave;n da lu&ocirc;n mềm mại v&agrave; mịn m&agrave;ng với đầy đủ độ ẩm.<br />
Sản phẩm gi&uacute;p l&agrave;m mờ bớt nếp nhăn, l&agrave;m giảm bớt những nốt mụn kh&ocirc; cứng mọc tr&ecirc;n da v&agrave; nhanh ch&oacute;ng l&agrave;m liền c&aacute;c đầu mụn.</p>
', 350000, 1, 1, N'KM0000003', N'92-Aloe-Vera-Gel-Nature-Republic.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000014', N'ML0000007', N'MH0000001', N'Mặt Nạ Dưỡng Da 3D Foodaholic Natural ', N'<h2>Mặt Nạ Dưỡng Da 3D Foodaholic Natural Essence Mask</h2>

<p>&nbsp;</p>

<p>Mặt Nạ Dưỡng Da 3D Foodaholic Natural Essence Mask c&oacute; xuất xứ H&agrave;n Quốc. Ưu điểm của mặt nạ n&agrave;y l&agrave; chiết xuất&nbsp;100% từ c&aacute;c th&agrave;nh phần tự nhi&ecirc;n.&nbsp;Mặt nạ gắn vừa kh&iacute;t với khu&ocirc;n mặt. Chỉ đến khi mặt nạ đ&atilde; kh&ocirc; hẳn, dưỡng chất đ&atilde; thẩm thấu hết v&agrave;o da mặt bạn th&igrave; mặt nạ mới bị bong ra. Sau khi đắp, bạn sẽ c&oacute; cảm gi&aacute;c rất dễ chịu, tươi m&aacute;t v&agrave; sảng kho&aacute;i. Sản phẩm th&iacute;ch hợp với mọi loại da, kể cả da nhạy cảm.</p>

<p><strong>Mặt Nạ Dưỡng Da 3D Foodaholic Natural Essence Mask c&oacute; nhiều loại như sau:</strong></p>

<p>Mặt nạ Collagen: Collegen l&agrave; một loại protein c&oacute; t&aacute;c dụng l&agrave;m trẻ h&oacute;a l&agrave;n da. H&agrave;m lượng tinh chất Collagen trong mặt nạ gi&uacute;p chống lại &ocirc; nhiễm m&ocirc;i trường b&ecirc;n ngo&agrave;i. Đồng thời x&oacute;a bỏ nếp nhăn, phục hồi khả năng đ&agrave;n hồi tự nhi&ecirc;n của da.</p>

<p>Mặt nạ đậu xanh: Thải độc, kiểm so&aacute;t độ dầu của da. Ngăn ngừa mụn trứng c&aacute; ph&aacute;t triển. L&agrave;m cho l&agrave;n da trở n&ecirc;n mịn m&agrave;ng, thu nhỏ lỗ ch&acirc;n l&ocirc;ng. Chiết xuất 100% từ hạt đậu xanh tươi.</p>

<p>Mặt nạ chiết xuất từ &ocirc; liu tươi: Gi&agrave;u polyphenol, một chất cung cấp từ thi&ecirc;n nhi&ecirc;n, gi&uacute;p dưỡng ẩm v&agrave; l&agrave;m mềm da.</p>
', 100000, 1, 1, N'KM0000003', N'mat-na-3d-600x600.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000015', N'ML0000007', N'MH0000003', N'Mặt Nạ Dưỡng Da Secret Key', N'<p><strong>Mặt Nạ Dưỡng Da Secret Key Nature Recipe Mask Pack</strong><br />
<img alt="Trong hình ảnh có thể có: món ăn" src="https://scontent.fsgn5-2.fna.fbcdn.net/v/t1.0-9/19146070_1598045790208355_2382268351542865238_n.jpg?oh=42458135c223311d14e8e5733d8ed3fc&amp;oe=59A2E859" style="height:513px; width:770px" /></p>

<p><img alt="" src="https://www.facebook.com/images/emoji.php/v9/f7/1.5/16/1f3ad.png" style="height:16px; width:16px" />?&nbsp;Mặt nạ dưỡng da Secret Key Nature Recipe Mask Pack được chiết xuất từ những th&agrave;nh phần thi&ecirc;n nhi&ecirc;n gi&agrave;u dưỡng chất v&agrave; si&ecirc;u l&agrave;nh t&iacute;nh ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n hảo cho l&agrave;n da đang đối diện với c&aacute;c dấu hiệu mệt mỏi, thiếu ẩm, thiếu dưỡng chất v&agrave; k&eacute;m tươi tắn.</p>

<p><img alt="" src="https://www.facebook.com/images/emoji.php/v9/f7/1.5/16/1f3ad.png" style="height:16px; width:16px" />?&nbsp;Sản phẩm sở hữu c&ocirc;ng thức chăm s&oacute;c to&agrave;n diện cho l&agrave;n da s&aacute;ng khỏe rạng rỡ, nhờ sự kết hợp ho&agrave;n hảo của c&aacute;c th&agrave;nh phần cực k&igrave; c&oacute; lợi cho da như:&nbsp;<br />
&ndash; Hyaluronic Acid: cung cấp độ ẩm cần thiết cho da.<br />
&ndash; Chiết xuất rau sam: l&agrave;m dịu m&aacute;t l&agrave;n da.<br />
&ndash; Chiết xuất rau m&aacute;: thanh lọc cho da sạch khỏe hơn.<br />
&ndash; Chiết xuất mật ong ho&agrave;ng gia: phục hồi sức khỏe cho da th&ecirc;m tươi tắn.</p>
', 20000, 1, 1, N'KM0000003', N'mat-na-secret-key.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000016', N'ML0000008', N'MH0000001', N'Garnier TurboLight Oil Control', N'<p><strong>Sữa Rửa Mặt Sạch Nhờn M&aacute;t Lạnh Garnier TurboLight Oil Control Icy Scrub</strong></p>

<p>&nbsp;</p>

<p><img src="https://scontent-sit4-1.xx.fbcdn.net/v/t1.0-9/14089110_1279523802060557_1721160811281629155_n.jpg?oh=5aed9658c73094dd62ecfe2a02197656&amp;oe=5838DE26" /></p>

<p>&nbsp;</p>

<p>Ph&aacute;i mạnh cũng cần&hellip; chăm s&oacute;c l&agrave;n da .Việc chăm s&oacute;c da của nam giới th&ocirc;ng thường tập trung v&agrave;o việc l&agrave;m sạch l&agrave;n da. Với mức độ l&agrave;m việc ngo&agrave;i trời cao hơn nữ giới, việc giữ sạch l&agrave;n da sẽ gi&uacute;p c&aacute;nh đ&agrave;n &ocirc;ng c&oacute; được l&agrave;n da khỏe mạnh, tạo n&eacute;t trẻ trung cho khu&ocirc;n mặt. Tiếp nối th&agrave;nh c&ocirc;ng tr&ecirc;n khắp khu vực ch&acirc;u &Aacute; với đa dạng sản phẩm d&agrave;nh cho l&agrave;n da nam giới, Garnier Men đ&atilde; ch&iacute;nh thức bước v&agrave;o thị trường Việt nam với 4 sản phẩm ti&ecirc;n phong v&agrave;o đầu th&aacute;ng 11/2014.</p>

<p>&nbsp;</p>

<p>Sữa Rửa Mặt Sạch Nhờn M&aacute;t Lạnh (TurboLight Oil Control Icy Scrub) l&agrave; loại sửa rữa mặt mang lại cảm gi&aacute;c thoải m&aacute;i m&aacute;t lạnh nhờ v&agrave;o th&agrave;nh phần vi hạt bạc h&agrave; v&agrave; s&eacute;t kho&aacute;ng, gi&uacute;p da sạch v&agrave; kh&ocirc;ng b&oacute;ng nhờn. Sản phẩm được đ&aacute;nh gi&aacute; l&agrave; mang lại cảm gi&aacute;c m&aacute;t lạnh tức th&igrave;, cực sảng kho&aacute;i cho da, gi&uacute;p loại bỏ mụn đầu đen.</p>

<p>&nbsp;</p>
', 30000, 1, 1, N'KM0000003', N'Garnier-TurboLight-Oil-Control-Icy-Scrub-bìa.png')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000017', N'ML0000008', N'MH0000002', N'Gel Làm Sạch Da Uriage', N'<p>Gel L&agrave;m Sạch Da Đa Năng Uriage Extra-Rich Dermatological&nbsp;</p>

<p>Nếu phải hỏi về yếu tố m&igrave;nh quan t&acirc;m nhất khi chọn mua sữa tắm th&igrave; c&oacute; lẽ l&agrave; TUYỆT ĐỐI, TUYỆT ĐỐI KH&Ocirc;NG NHỜN D&Iacute;NH! M&igrave;nh sợ nhất l&agrave; cảm gi&aacute;c khi tắm xong kh&ocirc;ng sạch được sữa tắm m&agrave; cứ nhờn nhờn tr&ecirc;n cơ thể.</p>

<p>SẠCH v&agrave; ĐỦ ẨM cho da!</p>

<p>2 điều n&agrave;y đ&atilde; hội tụ đầy đủ trong loại Gel L&agrave;m Sạch Da v&ocirc; c&ugrave;ng nhẹ dịu cho da nhạy cảm của Uriage n&agrave;y.<br />
▶Kh&ocirc;ng Hương Liệu<br />
▶Kh&ocirc;ng X&agrave; Ph&ograve;ng<br />
▶Kh&ocirc;ng Paraben</p>

<p>Được b&agrave;y b&aacute;n trong c&aacute;c hiệu thuốc tr&ecirc;n to&agrave;n nước Ph&aacute;p, Gel L&agrave;m Sạch Da Uriage l&agrave;m sạch cơ thể nhẹ nh&agrave;ng, bổ sung độ ẩm ho&agrave;n hảo cho c&aacute;c l&agrave;n da kh&ocirc; trong m&ugrave;a thiếu ẩm sắp tới. N&oacute; thậm ch&iacute; c&oacute; thể d&ugrave;ng thay sữa rửa mặt, dầu gội đầu, cho cả gia đ&igrave;nh từ em b&eacute; đến người trưởng th&agrave;nh.</p>

<p>Do đ&oacute;, ch&uacute;ng m&igrave;nh c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ l&agrave;nh t&iacute;nh của sản phẩm. M&igrave;nh biết c&oacute; một số bạn c&oacute; da rất nhạy cảm với c&aacute;c sản phẩm l&agrave;m sạch, vậy th&igrave; sản phẩm l&agrave;m sạch cơ thể n&agrave;y ch&iacute;nh l&agrave; d&agrave;nh cho c&aacute;c bạn nha.</p>
', 240000, 1, 1, N'KM0000003', N'uriage-extra-rich-dermatological-gel-400ml.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000018', N'ML0000009', N'MH0000003', N'Dầu Tẩy Trang Kanebo Kracie', N'<h2>Dầu Tẩy Trang Kanebo Kracie Naive Deep Cleansing Oil</h2>

<p>&nbsp;</p>

<p>Dầu tẩy trang Kanebo Kracie Naive Deep Cleansing Oil dễ d&agrave;ng tẩy sạch bụi bẩn, lớp make-up, kể cả son l&igrave; hay mascara kh&ocirc;ng thấm nước một c&aacute;ch nhẹ nh&agrave;ng m&agrave; kh&ocirc;ng g&acirc;y cay mắt, kh&ocirc;ng l&agrave;m kh&ocirc; da.</p>

<p>Sản phẩm tuy dạng dầu nhưng kh&ocirc;ng hề nhờn d&iacute;nh, lỏng nhẹ như nước nhưng vẫn c&oacute; một ch&uacute;t độ đặc vốn c&oacute; của dầu, kh&ocirc;ng m&agrave;u, m&ugrave;i dầu olive rất nhẹ, ho&agrave;n to&agrave;n dễ chịu với những bạn kh&ocirc;ng th&iacute;ch m&ugrave;i mỹ phẩm qu&aacute; nồng.</p>

<p>Chứa th&agrave;nh phần acid từ tr&aacute;i c&acirc;y gi&uacute;p loại c&aacute;c tế b&agrave;o da chết, gi&uacute;p trả lại bề mặt da tươi s&aacute;ng, rạng rỡ hơn.</p>

<p>Được so s&aacute;nh ngang h&agrave;ng với dầu tẩy trang đ&igrave;nh đ&aacute;m Shu Uemura nhưng gi&aacute; phải chăng hơn rất nhiều, c&ocirc;ng năng lại kh&ocirc;ng hề thua k&eacute;m Shu, chai to o&agrave;nh 170ml x&agrave;i thả ga kh&ocirc;ng lo về gi&aacute;.</p>

<p>Chai nhựa trong suốt m&agrave;u xanh xinh xắn, nắp bật với lỗ nhỏ dễ kiểm so&aacute;t lượng sản phẩm muốn lấy ra.</p>
', 135000, 1, 1, N'KM0000003', N'Dầu-Tẩy-Trang-Kanebo-Kracie-Naive-Deep-Cleansing-Oil-2.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000019', N'ML0000010', N'MH0000002', N'Bộ Sữa Tắm Shower Mate Body Wash ', N'<p><strong>Bộ Sữa Tắm Shower Mate Body Wash</strong></p>

<p>Sữa Tắm Shower Mate Body Wash sở hữu v&ocirc; v&agrave;n c&aacute;c ưu điểm vượt trội, đảm bảo c&aacute;c n&agrave;ng sẽ &ldquo;bồ kết&rdquo; ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n đấy nha:<br />
<img alt="" src="https://www.facebook.com/images/emoji.php/v6/f42/1/16/1f4a7.png" style="height:16px; width:16px" />&nbsp;Sản phẩm c&oacute; khả năng l&agrave;m sạch c&aacute;c bụi bẩn, b&atilde; nhờn, mồ h&ocirc;i s&acirc;u b&ecirc;n trong lỗ ch&acirc;n l&ocirc;ng một c&aacute;ch dịu nhẹ.&nbsp;<br />
<img alt="" src="https://www.facebook.com/images/emoji.php/v6/f42/1/16/1f4a7.png" style="height:16px; width:16px" />&nbsp;C&ocirc;ng thức độc đ&aacute;o chứa c&aacute;c tinh chất từ thi&ecirc;n nhi&ecirc;n gi&uacute;p nu&ocirc;i dưỡng l&agrave;n da từ s&acirc;u b&ecirc;n trong, l&agrave;m tăng hiệu quả giữ ẩm da l&ecirc;n gấp nhiều lần so với c&aacute;c loại sữa tắm th&ocirc;ng thường.<br />
<img alt="" src="https://www.facebook.com/images/emoji.php/v6/f42/1/16/1f4a7.png" style="height:16px; width:16px" />&nbsp;Độ PH ở mức trung t&iacute;nh, đảm bảo an to&agrave;n tối ưu, do đ&oacute; c&oacute; thể loại bỏ t&igrave;nh trạng kh&ocirc; da, gi&uacute;p l&agrave;n da bạn lu&ocirc;n mềm mại, mịn m&agrave;ng sau khi tắm.&nbsp;<br />
<img alt="" src="https://www.facebook.com/images/emoji.php/v6/f42/1/16/1f4a7.png" style="height:16px; width:16px" />&nbsp;Thiết kế chai c&oacute; v&ograve;i nhấn tiện lợi, gi&uacute;p bạn dễ d&agrave;ng canh chỉnh lượng sữa tắm lấy ra.&nbsp;<br />
<img alt="" src="https://www.facebook.com/images/emoji.php/v6/f42/1/16/1f4a7.png" style="height:16px; width:16px" />&nbsp;Hương thơm dịu nhẹ k&eacute;o d&agrave;i suốt nhiều giờ liền mang lại cảm gi&aacute;c thư gi&atilde;n cho da.</p>
', 200000, 1, 1, N'KM0000003', N'sua-tam-3.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000020', N'ML0000010', N'MH0000001', N'Set Sữa Tắm Happy Bath ', N'<p><strong>Set Sữa Tắm Happy Bath</strong></p>

<p>Set sữa tắm Happy Bath c&oacute; một chai 500g v&agrave; một t&uacute;i 250g. Happy Bath c&oacute; nhiều m&ugrave;i hương như Hoa Hồng, L&uacute;a mạch v&agrave; Lavender.</p>

<p>C&ocirc;ng dụng của sữa tắm:</p>

<ul>
	<li>Loại bỏ bụi bẩn, mồ h&ocirc;i v&agrave; tế b&agrave;o chết cho da sạch sẽ.</li>
	<li>Chiết xuất 95% thi&ecirc;n nhi&ecirc;n nu&ocirc;i dưỡng da từ b&ecirc;n trong, gi&uacute;p da trở n&ecirc;n trắng s&aacute;ng mịn m&agrave;ng.</li>
	<li>Tăng cường Vitamin cho da th&ecirc;m khỏe mạnh.</li>
	<li>
	<p>Sữa tắm Happy Bath c&oacute; hương thơm hoa cỏ thi&ecirc;n nhi&ecirc;n tươi m&aacute;t đem lại cho bạn cảm gi&aacute;c thư gi&atilde;n. Đặc biệt, sản phẩm c&oacute; khả năng tạo bọt cao gi&uacute;p l&agrave;m sạch s&acirc;u v&agrave; rất hiệu quả.</p>

	<p>Hướng dẫn sử dụng:</p>
	</li>
	<li>Cho một lượng sữa tắm v&agrave;o tay hay v&agrave;o b&ocirc;ng tắm.</li>
	<li>Xoa đều khắp cơ thể v&agrave; massage to&agrave;n th&acirc;n.</li>
	<li>Sau đ&oacute; tắm lại bằng nước sạch.</li>
</ul>
', 420000, 1, 1, N'KM0000003', N'set-sua-tam.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000021', N'ML0000011', N'MH0000002', N'Miếng Dán Giảm Mỡ Bụng Ttmary Spa', N'<h2>Miếng D&aacute;n Giảm Mỡ Bụng Ttmary Spa Gel Patch 42&deg;C</h2>

<p>Miếng D&aacute;n Giảm Mỡ Bụng Spa Gel Patch được Tập đo&agrave;n Samsung bảo trợ v&agrave; mua bảo hiểm 2 tỷ cam kết hiệu quả. V&ograve;ng eo qu&aacute; khổ lu&ocirc;n l&agrave; nỗi &aacute;m ảnh của nhiều người. Kh&ocirc;ng chỉ chị em văn ph&ograve;ng, phụ nữ sau sinh m&agrave; ngay đến đấng m&agrave;y r&acirc;u cũng khổ sở v&igrave; bụng mỡ.&nbsp;Miếng D&aacute;n Giảm Mỡ Bụng Spa Gel Patch sẽ gi&uacute;p bạn cải thiện vấn đề n&agrave;y.</p>

<p>C&ocirc;ng dụng của miếng d&aacute;n giảm mỡ bụng Spa Gel Patch l&agrave; hỗ trợ đ&aacute;nh tan mỡ bụng cho bạn v&ograve;ng eo thon gọn. Miếng d&aacute;n tỏa nhiệt trong &iacute;t nhất 3 giờ đồng hồ với nhiệt độ 42 độ C. Từ đ&oacute; gi&uacute;p l&agrave;m tan mỡ bụng, giảm cảm gi&aacute;c th&egrave;m ăn cho bạn lấy lại v&oacute;c d&aacute;ng mơ ước.</p>

<p>Nếu vừa d&aacute;n sản phẩm vừa kết hợp tập luyện th&igrave; kết quả đạt được c&agrave;ng khả quan. Bạn c&oacute; thể sử dụng miếng d&aacute;n mọi l&uacute;c mọi nơi m&agrave; kh&ocirc;ng bị vướng hay cộm. Kh&ocirc;ng chỉ tan mỡ, miếng d&aacute;n c&ograve;n l&agrave;m cho da săn chắc.&nbsp;</p>
', 300000, 1, 1, N'KM0000003', N'phuong.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000022', N'ML0000011', N'MH0000003', N'Miếng Dán Làm Thon Bụng', N'<p><strong>Natural Key Magic Body Bikini Patch</strong></p>

<p>Ch&uacute;ng m&igrave;nh từ l&acirc;u đ&atilde; quen với kh&aacute;i niệm mask sheet &ndash; mặt da dưỡng da rồi nhỉ? Vậy c&ograve;n patch th&igrave; sao? Patch l&agrave; từ d&ugrave;ng để chỉ những miếng d&aacute;n đa chức năng, m&agrave; dễ li&ecirc;n tưởng nhất l&agrave; giống kiểu Salonpas miếng d&aacute;n giảm đau được b&aacute;n rộng r&atilde;i ở khắp c&aacute;c hiệu thuốc ấy. M&igrave;nh gọi l&agrave; những &lsquo;miếng d&aacute;n đa chức năng&rsquo; v&igrave; giờ ch&uacute;ng kh&ocirc;ng chỉ l&agrave; miếng d&aacute;n giảm đau quen thuộc nữa m&agrave; c&ograve;n c&oacute; miếng d&aacute;n tạo nhiệt, giảm c&acirc;n, mờ sẹo&hellip; Đặc biệt ở Myeongdong, Seoul c&ograve;n c&oacute; 1 cửa h&agrave;ng t&ecirc;n l&agrave; &lsquo;Mask Story&rsquo; b&aacute;n v&ocirc; v&agrave;n c&aacute;c sản phẩm li&ecirc;n quan đến mask v&agrave; patch lu&ocirc;n. V&agrave; đ&acirc;y l&agrave; những em m&igrave;nh mới được trải nghiệm đầu h&egrave; n&agrave;y.</p>

<p>Miếng D&aacute;n gi&uacute;p l&agrave;m thon gọn v&ugrave;ng bụng , gi&uacute;p cơ bụng ch&uacute;ng ta săn chắc, kh&ocirc;ng ch&agrave;y xệ v&agrave; giảm nhỏ v&ugrave;ng eo sau 1 th&ograve;i gian sử dụng &hellip; Ngo&agrave;i c&aacute;c tinh dầu tự nhi&ecirc;n tạo cảm gi&aacute;c thư th&aacute;i dễ chịu, patch c&ograve;n chứa nhiều dưỡng chất dưỡng da, tạo v&agrave; kh&oacute;a ẩm như glycerin, butylene glycol,&hellip;</p>
', 250000, 1, 1, N'KM0000003', N'naturalkey-1.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000023', N'ML0000014', N'MH0000002', N'Bộ Sản Phẩm Narciso Rodriguez', N'<p><strong>Bộ Sản Phẩm Narciso Rodriguez Narciso Eau de Parfum Gift Set</strong></p>

<p>Bộ Sản Phẩm Narciso Rodriguez Narciso Eau de Parfum Gift Set l&agrave; một sự lựa chọn tuyệt vời d&agrave;nh cho ph&aacute;i nữ với hương thơm quyến rũ, năng động kh&ocirc;ng k&eacute;m phần hiện đại, rất th&iacute;ch hợp với phong c&aacute;ch của c&aacute;c c&ocirc; n&agrave;ng &ldquo;kẹo ngọt&rdquo; lắm lu&ocirc;n n&egrave;.</p>

<p>Đặc biệt hơn đ&acirc;y l&agrave; bộ sản phẩm chứa đến 3 si&ecirc;u phẩm sang chảnh &ldquo;hot nhất quả đất&rdquo; v&agrave; khiến bất k&igrave; c&ocirc; g&aacute;i n&agrave;o cũng muốn &ldquo;kết th&acirc;n&rdquo; ngay lập tức.</p>
', 650000, 1, 1, N'KM0000003', N'nuoc-hoa-4.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000024', N'ML0000014', N'MH0000002', N'Nước Hoa Bath And Bodyworks ', N'<h2>Nước Hoa Bath And Bodyworks Forever Red Eau De Parfum (75ml)</h2>

<p>Nước Hoa Bath And Bodyworks Forever Red Eau De Parfum được tạo ra bởi nh&agrave; pha chế&nbsp;Honorine Blanc. Nước hoa c&oacute; m&ugrave;i hương ngọt ng&agrave;o của tr&aacute;i c&acirc;y h&ograve;a quyện với hương thơm tươi m&aacute;t của hoa cỏ.&nbsp;</p>

<p>Hương đầu của nước hoa l&agrave; m&ugrave;i quả lựu, quả đ&agrave;o v&agrave; t&aacute;o xanh. Hương giữa l&agrave; hương hoa mẫu đơn, hoa mộc t&ecirc; v&agrave; hoa c&uacute;c kim tiền. Hương cuối lại phảng phất m&ugrave;i rượu Rum, hương vani, c&acirc;y sồi v&agrave; kẹo dẻo Marshamallow.&nbsp;</p>

<p>M&ugrave;i hương của&nbsp;Forever Red được đ&aacute;nh gi&aacute; l&agrave; nữ t&iacute;nh, gợi cảm v&agrave; v&ocirc; c&ugrave;ng quyến rũ. B&ecirc;n cạnh đ&oacute;, hương thơm cũng kh&ocirc;ng k&eacute;m phần sang trọng v&agrave; tr&agrave;n ngập t&igrave;nh y&ecirc;u.</p>

<p>Thiết kế b&ecirc;n ngo&agrave;i l&agrave; m&agrave;u đỏ quyến rũ được đ&iacute;nh k&egrave;m một chiếc nơ quanh cổ chai gợi n&eacute;t nữ t&iacute;nh.</p>
', 500000, 1, 1, N'KM0000003', N'nuoc-hoa.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000025', N'ML0000015', N'MH0000002', N'Nước Hoa Bleu De Chanel', N'<h2>Nước Hoa Bleu De Chanel Eau De Parfum Pour Homme (50ml)</h2>

<p>Nước hoa d&agrave;nh cho nam. Hương thơm nam t&iacute;nh mạnh mẽ. M&ugrave;i gỗ đ&agrave;n hương kết hợp với bạc h&agrave; v&agrave; gừng k&iacute;ch th&iacute;ch c&aacute;c gi&aacute;c quan của bạn. Độ lưu hương l&acirc;u v&agrave; tỏa hương vừa phải.</p>
', 195000, 1, 1, N'KM0000003', N'bleu.jpg')
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAHANG], [TENSP], [MOTA], [DONGIA], [TINHTRANG], [ACTIVE], [MAKM], [HINHANH]) VALUES (N'SP0000026', N'ML0000015', N'MH0000002', N'Nước Hoa Dành Cho Nam Dior ', N'<p><strong>M&ugrave;i hương</strong></p>

<p>Hương thơm của Dior Sauvage 2015 kh&ocirc;ng những l&agrave;m c&aacute;c ch&agrave;ng trai m&ecirc; mẫn m&agrave; c&ograve;n khiến ph&aacute;i đẹp si&ecirc;u l&ograve;ng. Như một bản giao hưởng hiện đại&nbsp;lu&ocirc;n được bắt đầu bằng cung cảm x&uacute;c nồng nhiệt, nốt hương đầu mang đ&ecirc;m sự tươi m&aacute;t của cam begarmot, một ch&uacute;t nồng n&agrave;n của ti&ecirc;u. Tầng hương trung t&acirc;m từ từ đưa khứu gi&aacute;c cảm nhận được n&eacute;t gợi cảm v&agrave; quyến rũ của c&aacute;c lo&agrave;i hoa phong lữ, hoa oải hương, ti&ecirc;u hồng, ti&ecirc;u Tứ Xuy&ecirc;n, cỏ Vetiver, c&acirc;y Patchouli. Ch&iacute;nh tầng hương n&agrave;y l&agrave;m n&ecirc;n điểm nhấn đặc biệt khi kết hợp hương hoa trong nước hoa nam l&agrave;m n&ecirc;n hỗn hợp hương thơm gợi cảm vốn chỉ d&agrave;nh cho ph&aacute;i đẹp. Cuối c&ugrave;ng, kh&eacute;p lại bản giao hưởng m&ugrave;i hương n&agrave;y l&agrave; những nốt hương mạnh mẽ của nhựa Ambroxan, nhựa Labdanum v&agrave; ấm &aacute;p của hỗ ph&aacute;ch.</p>
', 2000000, 1, 1, N'KM0000003', N'nước-hoa-Sauvage-Dior.png')
/****** Object:  Table [dbo].[CTDH]    Script Date: 12/22/2017 16:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTDH](
	[MADH] [varchar](10) NOT NULL,
	[MASP] [varchar](10) NOT NULL,
	[SOLUONG] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MADH] ASC,
	[MASP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CTDH] ([MADH], [MASP], [SOLUONG]) VALUES (N'DH0000001', N'SP0000005', 1)
INSERT [dbo].[CTDH] ([MADH], [MASP], [SOLUONG]) VALUES (N'DH0000001', N'SP0000026', 1)
/****** Object:  StoredProcedure [dbo].[REPORT_SANPHAM]    Script Date: 12/22/2017 16:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[REPORT_SANPHAM] @MASP VARCHAR(10)
AS
	SELECT * FROM sanpham WHERE MASP = @MASP
GO
/****** Object:  StoredProcedure [dbo].[PROCDUCT_PRICE_MAX]    Script Date: 12/22/2017 16:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PROCDUCT_PRICE_MAX]
AS 
BEGIN 
	SELECT MASP,TENSP,DONGIA,HINHANH,MOTA
	FROM SANPHAM SP
	ORDER BY SP.DONGIA DESC 
END
GO
/****** Object:  StoredProcedure [dbo].[P_CATEGORY_PRODUCT]    Script Date: 12/22/2017 16:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[P_CATEGORY_PRODUCT](@ID VARCHAR(10))
AS
BEGIN
	SELECT SP.MALOAI, TENLOAI,MASP,TENSP,MOTA,DONGIA,HINHANH
	FROM SANPHAM SP,LOAISP L
	WHERE SP.MALOAI = L.MALOAI
END
GO
/****** Object:  StoredProcedure [dbo].[P_BRAND_PRODUCT]    Script Date: 12/22/2017 16:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[P_BRAND_PRODUCT](@ID VARCHAR(10))
AS
BEGIN
	SELECT SP.MAHANG, TENHANG,MASP,TENSP,MOTA,DONGIA,HINHANH
	FROM SANPHAM SP,HANGSANXUAT TH
	WHERE SP.MAHANG = TH.MAHANG 
END
GO
/****** Object:  View [dbo].[XEM_SANPHAM]    Script Date: 12/22/2017 16:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XEM_SANPHAM]
AS
SELECT MASP,TENSP, L.MALOAI,L.TENLOAI, H.MAHANG,H.TENHANG,K.MAKM,K.GIATRI,MOTA,DONGIA,TINHTRANG,HINHANH,S.ACTIVE
FROM SANPHAM S,LOAISP L, HANGSANXUAT H, KHUYENMAI K
WHERE S.MALOAI = L.MALOAI AND S.MAHANG = H.MAHANG AND S.MAKM = K.MAKM
GO
/****** Object:  View [dbo].[XEM_CTDH]    Script Date: 12/22/2017 16:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[XEM_CTDH]
AS
SELECT CTDH.MADH,SANPHAM.MASP,TENSP,SOLUONG
FROM CTDH,SANPHAM
WHERE CTDH.MASP = SANPHAM.MASP
GO
/****** Object:  ForeignKey [FK__DONHANG__MAKH__2A4B4B5E]    Script Date: 12/22/2017 16:01:13 ******/
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
/****** Object:  ForeignKey [FK__LOAISP__MADM__276EDEB3]    Script Date: 12/22/2017 16:01:13 ******/
ALTER TABLE [dbo].[LOAISP]  WITH CHECK ADD FOREIGN KEY([MADM])
REFERENCES [dbo].[DANHMUC] ([MADM])
GO
/****** Object:  ForeignKey [FK__SANPHAM__MAHANG__29572725]    Script Date: 12/22/2017 16:01:24 ******/
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MAHANG])
REFERENCES [dbo].[HANGSANXUAT] ([MAHANG])
GO
/****** Object:  ForeignKey [FK__SANPHAM__MAKM__2C3393D0]    Script Date: 12/22/2017 16:01:24 ******/
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MAKM])
REFERENCES [dbo].[KHUYENMAI] ([MAKM])
GO
/****** Object:  ForeignKey [FK__SANPHAM__MALOAI__286302EC]    Script Date: 12/22/2017 16:01:24 ******/
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAISP] ([MALOAI])
GO
/****** Object:  ForeignKey [FK__CTDH__MADH__2B3F6F97]    Script Date: 12/22/2017 16:01:24 ******/
ALTER TABLE [dbo].[CTDH]  WITH CHECK ADD FOREIGN KEY([MADH])
REFERENCES [dbo].[DONHANG] ([MADH])
GO
/****** Object:  ForeignKey [FK__CTDH__MASP__267ABA7A]    Script Date: 12/22/2017 16:01:24 ******/
ALTER TABLE [dbo].[CTDH]  WITH CHECK ADD FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
