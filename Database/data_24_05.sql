USE [master]
GO
/****** Object:  Database [QLKS_IS201]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE DATABASE [QLKS_IS201]
GO
USE [QLKS_IS201]
GO
/****** Object:  Table [dbo].[CHITIET_HDAU]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_HDAU](
	[MA_HDAU] [int] NOT NULL,
	[MA_MH] [int] NOT NULL,
	[SOLUONG_MH] [int] NULL,
 CONSTRAINT [PK_CHITIET_HDAU] PRIMARY KEY CLUSTERED 
(
	[MA_HDAU] ASC,
	[MA_MH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIET_HDDC]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_HDDC](
	[MA_HDDC] [int] NOT NULL,
	[MA_CD] [int] NOT NULL,
	[SOLUONG_CD] [int] NULL,
 CONSTRAINT [PK_CHITIET_HDDC] PRIMARY KEY CLUSTERED 
(
	[MA_HDDC] ASC,
	[MA_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIET_HDGU]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_HDGU](
	[MA_HDGU] [int] NOT NULL,
	[MA_LUOTGU] [int] NOT NULL,
 CONSTRAINT [PK_CHITIET_HDGU] PRIMARY KEY CLUSTERED 
(
	[MA_HDGU] ASC,
	[MA_LUOTGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIET_HDLT]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_HDLT](
	[MA_HDLT] [int] NOT NULL,
	[MA_PHONG] [int] NOT NULL,
	[THOIGIANNHAN_PHONG] [datetime] NULL,
	[THOIGIANTRA_PHONG] [datetime] NULL,
 CONSTRAINT [PK_CHITIET_HDLT] PRIMARY KEY CLUSTERED 
(
	[MA_HDLT] ASC,
	[MA_PHONG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUYENDI]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUYENDI](
	[MA_CD] [int] IDENTITY(1,1) NOT NULL,
	[SOLUONGNGUOI_CD] [int] NULL,
	[DONGIA_CD] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MA_HD] [int] IDENTITY(1,1) NOT NULL,
	[MA_HDAU] [int] NULL,
	[MA_HDGU] [int] NULL,
	[MA_HDLT] [int] NOT NULL,
	[MA_HDDC] [int] NULL,
	[MA_NV] [int] NOT NULL,
	[MA_KH] [int] NOT NULL,
	[THOIGIANLAP_HD] [datetime] NULL,
	[TRIGIA_HD] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADONANUONG]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONANUONG](
	[MA_HDAU] [int] IDENTITY(1,1) NOT NULL,
	[THOIGIANLAP_HDAU] [datetime] NULL,
	[TRIGIA_HDAU] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADONDICHUYEN]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONDICHUYEN](
	[MA_HDDC] [int] IDENTITY(1,1) NOT NULL,
	[THOIGIANLAP_HDDC] [datetime] NULL,
	[TRIGIA_HDDC] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADONGIATUI]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONGIATUI](
	[MA_HDGU] [int] IDENTITY(1,1) NOT NULL,
	[THOIGIANLAP_HDGU] [datetime] NULL,
	[TRIGIA_HDGU] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADONLUUTRU]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONLUUTRU](
	[MA_HDLT] [int] IDENTITY(1,1) NOT NULL,
	[THOIGIANLAP_HDLT] [datetime] NULL,
	[TRIGIA_HDLT] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MA_KH] [int] IDENTITY(1,1) NOT NULL,
	[HOTEN_KH] [nvarchar](255) NULL,
	[SODIENTHOAI_KH] [nvarchar](15) NULL,
	[CMND_KH] [nvarchar](12) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAIGIATUI]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIGIATUI](
	[MA_LOAIGU] [int] IDENTITY(1,1) NOT NULL,
	[TEN_LOAIGU] [nvarchar](255) NULL,
	[DONGIA_LOAIGU] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAIPHONG]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIPHONG](
	[MA_LP] [int] IDENTITY(1,1) NOT NULL,
	[TEN_LP] [nvarchar](255) NULL,
	[DONGIA_LP] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LUOTGIATUI]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUOTGIATUI](
	[MA_LUOTGU] [int] IDENTITY(1,1) NOT NULL,
	[MA_LOAIGU] [int] NOT NULL,
	[SOKILOGRAM_LUOTGU] [int] NULL,
	[NGAYBATDAU_LUOTGU] [datetime] NULL,
	[NGAYKETTHUC_LUOTGU] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MATHANG]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATHANG](
	[MA_MH] [int] IDENTITY(1,1) NOT NULL,
	[TEN_MH] [nvarchar](255) NULL,
	[DONGIA_MH] [money] NULL,
	[NGAYNHAP_MH] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MA_NV] [int] IDENTITY(1,1) NOT NULL,
	[MA_TK] [int] NOT NULL,
	[HOTEN_NV] [nvarchar](255) NULL,
	[GIOITINH_NV] [bit] NULL,
	[NGAYSINH_NV] [datetime] NULL,
	[SODIENTHOAI_NV] [nvarchar](15) NULL,
	[CHUCVU_NV] [nvarchar](30) NULL,
	[DIACHI_NV] [nvarchar](255) NULL,
	[NGAYVAOLAM_NV] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[MA_PHONG] [int] NOT NULL,
	[MA_LP] [int] NOT NULL,
	[TINHTRANG_PHONG] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 23/05/2018 4:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[MA_TK] [int] IDENTITY(1,1) NOT NULL,
	[TENDANGNHAP_TK] [nvarchar](32) NULL,
	[MATKHAU_TK] [nvarchar](32) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MA_KH], [HOTEN_KH], [SODIENTHOAI_KH], [CMND_KH]) VALUES (1, N'Bùi Huy Phúc', N'0914659369', N'272645354')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[LOAIPHONG] ON 

INSERT [dbo].[LOAIPHONG] ([MA_LP], [TEN_LP], [DONGIA_LP]) VALUES (1, N'Vip đơn', 300000,0000)
INSERT [dbo].[LOAIPHONG] ([MA_LP], [TEN_LP], [DONGIA_LP]) VALUES (2, N'Vip đôi', 500000,0000)
INSERT [dbo].[LOAIPHONG] ([MA_LP], [TEN_LP], [DONGIA_LP]) VALUES (3, N'Thường đơn', 150000,0000)
INSERT [dbo].[LOAIPHONG] ([MA_LP], [TEN_LP], [DONGIA_LP]) VALUES (4, N'Thường đôi', 250000,0000)
SET IDENTITY_INSERT [dbo].[LOAIPHONG] OFF
SET IDENTITY_INSERT [dbo].[MATHANG] ON 

INSERT [dbo].[MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (1, N'Trái cây', 100000,0000, CAST(N'2018-05-23 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[MATHANG] OFF
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MA_NV], [MA_TK], [HOTEN_NV], [GIOITINH_NV], [NGAYSINH_NV], [SODIENTHOAI_NV], [CHUCVU_NV], [DIACHI_NV], [NGAYVAOLAM_NV]) VALUES (1, 1, N'Bùi Huy Phúc', 1, NULL, N'0914659369', N'Admin', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MA_NV], [MA_TK], [HOTEN_NV], [GIOITINH_NV], [NGAYSINH_NV], [SODIENTHOAI_NV], [CHUCVU_NV], [DIACHI_NV], [NGAYVAOLAM_NV]) VALUES (2, 2, N'Phạm Phong Phú', 1, NULL, N'0909090909', N'Admin', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MA_NV], [MA_TK], [HOTEN_NV], [GIOITINH_NV], [NGAYSINH_NV], [SODIENTHOAI_NV], [CHUCVU_NV], [DIACHI_NV], [NGAYVAOLAM_NV]) VALUES (3, 3, N'Bùi Thanh Tùng', 1, NULL, N'0969696969', N'Admin', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MA_NV], [MA_TK], [HOTEN_NV], [GIOITINH_NV], [NGAYSINH_NV], [SODIENTHOAI_NV], [CHUCVU_NV], [DIACHI_NV], [NGAYVAOLAM_NV]) VALUES (4, 4, N'Nguyễn Thị A', 0, NULL, NULL, N'Staff', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (101, 1, N'Đang sửa chữa')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (102, 1, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (103, 1, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (104, 1, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (105, 1, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (201, 2, N'Đang sửa chữa')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (202, 2, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (203, 2, N'Đang sửa chữa')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (204, 2, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (205, 2, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (301, 3, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (302, 3, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (303, 3, N'Đang sửa chữa')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (304, 3, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (305, 3, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (401, 4, N'Đang sửa chữa')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (402, 4, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (403, 4, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (404, 4, N'Đang sửa chữa')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (405, 4, N'Tốt')
INSERT [dbo].[PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (406, 4, N'Tốt')
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([MA_TK], [TENDANGNHAP_TK], [MATKHAU_TK]) VALUES (1, N'phuc', N'c4aa9e36697271fbd4922f13d68a94f9')
INSERT [dbo].[TAIKHOAN] ([MA_TK], [TENDANGNHAP_TK], [MATKHAU_TK]) VALUES (2, N'phu', N'9b0550b1bb8c4323f4f5f2f8e386302b')
INSERT [dbo].[TAIKHOAN] ([MA_TK], [TENDANGNHAP_TK], [MATKHAU_TK]) VALUES (3, N'tung', N'26b3fbb2ce1354a7a8dcc2abb458e96b')
INSERT [dbo].[TAIKHOAN] ([MA_TK], [TENDANGNHAP_TK], [MATKHAU_TK]) VALUES (4, N'nhanvien', N'32035964ea350cc45ca333216c4a59ff')
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
/****** Object:  Index [CHITIET_HDAU_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CHITIET_HDAU_FK] ON [dbo].[CHITIET_HDAU]
(
	[MA_HDAU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CHITIET_HDAU2_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CHITIET_HDAU2_FK] ON [dbo].[CHITIET_HDAU]
(
	[MA_MH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CHITIET_HDDC_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CHITIET_HDDC_FK] ON [dbo].[CHITIET_HDDC]
(
	[MA_HDDC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CHITIET_HDDC2_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CHITIET_HDDC2_FK] ON [dbo].[CHITIET_HDDC]
(
	[MA_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CHITIET_HDGU_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CHITIET_HDGU_FK] ON [dbo].[CHITIET_HDGU]
(
	[MA_HDGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CHITIET_HDGU2_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CHITIET_HDGU2_FK] ON [dbo].[CHITIET_HDGU]
(
	[MA_LUOTGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CHITIET_HDLT_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CHITIET_HDLT_FK] ON [dbo].[CHITIET_HDLT]
(
	[MA_HDLT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CHITIET_HDLT2_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CHITIET_HDLT2_FK] ON [dbo].[CHITIET_HDLT]
(
	[MA_PHONG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_CHUYENDI]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[CHUYENDI] ADD  CONSTRAINT [PK_CHUYENDI] PRIMARY KEY NONCLUSTERED 
(
	[MA_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_HOADON]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [PK_HOADON] PRIMARY KEY NONCLUSTERED 
(
	[MA_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CO_HD_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CO_HD_FK] ON [dbo].[HOADON]
(
	[MA_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CO_HDAU_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CO_HDAU_FK] ON [dbo].[HOADON]
(
	[MA_HDAU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CO_HDDC2_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CO_HDDC2_FK] ON [dbo].[HOADON]
(
	[MA_HDDC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CO_HDGU2_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CO_HDGU2_FK] ON [dbo].[HOADON]
(
	[MA_HDGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CO_HDLT_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CO_HDLT_FK] ON [dbo].[HOADON]
(
	[MA_HDLT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [LAP_HD_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [LAP_HD_FK] ON [dbo].[HOADON]
(
	[MA_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_HOADONANUONG]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[HOADONANUONG] ADD  CONSTRAINT [PK_HOADONANUONG] PRIMARY KEY NONCLUSTERED 
(
	[MA_HDAU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_HOADONDICHUYEN]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[HOADONDICHUYEN] ADD  CONSTRAINT [PK_HOADONDICHUYEN] PRIMARY KEY NONCLUSTERED 
(
	[MA_HDDC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_HOADONGIATUI]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[HOADONGIATUI] ADD  CONSTRAINT [PK_HOADONGIATUI] PRIMARY KEY NONCLUSTERED 
(
	[MA_HDGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_HOADONLUUTRU]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[HOADONLUUTRU] ADD  CONSTRAINT [PK_HOADONLUUTRU] PRIMARY KEY NONCLUSTERED 
(
	[MA_HDLT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_KHACHHANG]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [PK_KHACHHANG] PRIMARY KEY NONCLUSTERED 
(
	[MA_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_LOAIGIATUI]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[LOAIGIATUI] ADD  CONSTRAINT [PK_LOAIGIATUI] PRIMARY KEY NONCLUSTERED 
(
	[MA_LOAIGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_LOAIPHONG]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[LOAIPHONG] ADD  CONSTRAINT [PK_LOAIPHONG] PRIMARY KEY NONCLUSTERED 
(
	[MA_LP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_LUOTGIATUI]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[LUOTGIATUI] ADD  CONSTRAINT [PK_LUOTGIATUI] PRIMARY KEY NONCLUSTERED 
(
	[MA_LUOTGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CO_LOAIGU_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CO_LOAIGU_FK] ON [dbo].[LUOTGIATUI]
(
	[MA_LOAIGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_MATHANG]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[MATHANG] ADD  CONSTRAINT [PK_MATHANG] PRIMARY KEY NONCLUSTERED 
(
	[MA_MH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_NHANVIEN]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [PK_NHANVIEN] PRIMARY KEY NONCLUSTERED 
(
	[MA_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CO_TK2_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CO_TK2_FK] ON [dbo].[NHANVIEN]
(
	[MA_TK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_PHONG]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[PHONG] ADD  CONSTRAINT [PK_PHONG] PRIMARY KEY NONCLUSTERED 
(
	[MA_PHONG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CO_LP_FK]    Script Date: 23/05/2018 4:22:56 PM ******/
CREATE NONCLUSTERED INDEX [CO_LP_FK] ON [dbo].[PHONG]
(
	[MA_LP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_TAIKHOAN]    Script Date: 23/05/2018 4:22:56 PM ******/
ALTER TABLE [dbo].[TAIKHOAN] ADD  CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY NONCLUSTERED 
(
	[MA_TK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIET_HDAU]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET__CHITIET_H_HOADONAN] FOREIGN KEY([MA_HDAU])
REFERENCES [dbo].[HOADONANUONG] ([MA_HDAU])
GO
ALTER TABLE [dbo].[CHITIET_HDAU] CHECK CONSTRAINT [FK_CHITIET__CHITIET_H_HOADONAN]
GO
ALTER TABLE [dbo].[CHITIET_HDAU]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET__CHITIET_H_MATHANG] FOREIGN KEY([MA_MH])
REFERENCES [dbo].[MATHANG] ([MA_MH])
GO
ALTER TABLE [dbo].[CHITIET_HDAU] CHECK CONSTRAINT [FK_CHITIET__CHITIET_H_MATHANG]
GO
ALTER TABLE [dbo].[CHITIET_HDDC]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET__CHITIET_H_CHUYENDI] FOREIGN KEY([MA_CD])
REFERENCES [dbo].[CHUYENDI] ([MA_CD])
GO
ALTER TABLE [dbo].[CHITIET_HDDC] CHECK CONSTRAINT [FK_CHITIET__CHITIET_H_CHUYENDI]
GO
ALTER TABLE [dbo].[CHITIET_HDDC]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET__CHITIET_H_HOADONDI] FOREIGN KEY([MA_HDDC])
REFERENCES [dbo].[HOADONDICHUYEN] ([MA_HDDC])
GO
ALTER TABLE [dbo].[CHITIET_HDDC] CHECK CONSTRAINT [FK_CHITIET__CHITIET_H_HOADONDI]
GO
ALTER TABLE [dbo].[CHITIET_HDGU]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET__CHITIET_H_HOADONGI] FOREIGN KEY([MA_HDGU])
REFERENCES [dbo].[HOADONGIATUI] ([MA_HDGU])
GO
ALTER TABLE [dbo].[CHITIET_HDGU] CHECK CONSTRAINT [FK_CHITIET__CHITIET_H_HOADONGI]
GO
ALTER TABLE [dbo].[CHITIET_HDGU]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET__CHITIET_H_LUOTGIAT] FOREIGN KEY([MA_LUOTGU])
REFERENCES [dbo].[LUOTGIATUI] ([MA_LUOTGU])
GO
ALTER TABLE [dbo].[CHITIET_HDGU] CHECK CONSTRAINT [FK_CHITIET__CHITIET_H_LUOTGIAT]
GO
ALTER TABLE [dbo].[CHITIET_HDLT]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET__CHITIET_H_HOADONLU] FOREIGN KEY([MA_HDLT])
REFERENCES [dbo].[HOADONLUUTRU] ([MA_HDLT])
GO
ALTER TABLE [dbo].[CHITIET_HDLT] CHECK CONSTRAINT [FK_CHITIET__CHITIET_H_HOADONLU]
GO
ALTER TABLE [dbo].[CHITIET_HDLT]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET__CHITIET_H_PHONG] FOREIGN KEY([MA_PHONG])
REFERENCES [dbo].[PHONG] ([MA_PHONG])
GO
ALTER TABLE [dbo].[CHITIET_HDLT] CHECK CONSTRAINT [FK_CHITIET__CHITIET_H_PHONG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_CO_HD_KHACHHAN] FOREIGN KEY([MA_KH])
REFERENCES [dbo].[KHACHHANG] ([MA_KH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_CO_HD_KHACHHAN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_CO_HDAU_HOADONAN] FOREIGN KEY([MA_HDAU])
REFERENCES [dbo].[HOADONANUONG] ([MA_HDAU])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_CO_HDAU_HOADONAN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_CO_HDDC_HOADONDI] FOREIGN KEY([MA_HDDC])
REFERENCES [dbo].[HOADONDICHUYEN] ([MA_HDDC])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_CO_HDDC_HOADONDI]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_CO_HDGU_HOADONGI] FOREIGN KEY([MA_HDGU])
REFERENCES [dbo].[HOADONGIATUI] ([MA_HDGU])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_CO_HDGU_HOADONGI]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_CO_HDLT_HOADONLU] FOREIGN KEY([MA_HDLT])
REFERENCES [dbo].[HOADONLUUTRU] ([MA_HDLT])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_CO_HDLT_HOADONLU]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_LAP_HD_NHANVIEN] FOREIGN KEY([MA_NV])
REFERENCES [dbo].[NHANVIEN] ([MA_NV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_LAP_HD_NHANVIEN]
GO
ALTER TABLE [dbo].[LUOTGIATUI]  WITH CHECK ADD  CONSTRAINT [FK_LUOTGIAT_CO_LOAIGU_LOAIGIAT] FOREIGN KEY([MA_LOAIGU])
REFERENCES [dbo].[LOAIGIATUI] ([MA_LOAIGU])
GO
ALTER TABLE [dbo].[LUOTGIATUI] CHECK CONSTRAINT [FK_LUOTGIAT_CO_LOAIGU_LOAIGIAT]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_CO_TK_TAIKHOAN] FOREIGN KEY([MA_TK])
REFERENCES [dbo].[TAIKHOAN] ([MA_TK])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_CO_TK_TAIKHOAN]
GO
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_CO_LP_LOAIPHON] FOREIGN KEY([MA_LP])
REFERENCES [dbo].[LOAIPHONG] ([MA_LP])
GO
ALTER TABLE [dbo].[PHONG] CHECK CONSTRAINT [FK_PHONG_CO_LP_LOAIPHON]
GO
USE [master]
GO
ALTER DATABASE [QLKS_IS201] SET  READ_WRITE 
GO
