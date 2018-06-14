USE [QLKS_IS201]
GO
/****** Object:  Table [BAOCAODICHVU]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BAOCAODICHVU](
	[MA_BCDV] [int] IDENTITY(1,1) NOT NULL,
	[THOIGIANLAP_BCDV] [smalldatetime] NULL,
	[TONGDOANHTHU_BCDV] [money] NULL,
	[DOANHTHULUUTRU_BCDV] [money] NULL,
	[DOANHTHUANUONG_BCDV] [money] NULL,
	[DOANHTHUGIATUI_BCDV] [money] NULL,
	[DOANHTHUDICHUYEN_BCDV] [money] NULL,
	[NGAYBATDAU_BCDV] [date] NULL,
	[NGAYKETTHUC_BCDV] [date] NULL,
 CONSTRAINT [PK_BAOCAODICHVU] PRIMARY KEY CLUSTERED 
(
	[MA_BCDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [BAOCAONAM]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BAOCAONAM](
	[MA_BCN] [int] IDENTITY(1,1) NOT NULL,
	[THOIGIANLAP_BCN] [smalldatetime] NULL,
	[NAM_BCN] [int] NULL,
	[TONGDOANHTHU_BCN] [money] NULL,
	[DOANHTHUTHANG1_BCN] [money] NULL,
	[DOANHTHUTHANG2_BCN] [money] NULL,
	[DOANHTHUTHANG3_BCN] [money] NULL,
	[DOANHTHUTHANG4_BCN] [money] NULL,
	[DOANHTHUTHANG5_BCN] [money] NULL,
	[DOANHTHUTHANG6_BCN] [money] NULL,
	[DOANHTHUTHANG7_BCN] [money] NULL,
	[DOANHTHUTHANG8_BCN] [money] NULL,
	[DOANHTHUTHANG9_BCN] [money] NULL,
	[DOANHTHUTHANG10_BCN] [money] NULL,
	[DOANHTHUTHANG11_BCN] [money] NULL,
	[DOANHTHUTHANG12_BCN] [money] NULL,
 CONSTRAINT [PK_BAOCAONAM] PRIMARY KEY CLUSTERED 
(
	[MA_BCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CHITIET_HDAU]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHITIET_HDAU](
	[MA_CTHDAU] [int] IDENTITY(1,1) NOT NULL,
	[MA_HD] [int] NOT NULL,
	[MA_MH] [int] NOT NULL,
	[SOLUONG_MH] [int] NULL,
	[TRIGIA_CTHDAU] [money] NULL,
	[THOIGIANLAP_CTHDAU] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CHITIET_HDDC]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHITIET_HDDC](
	[MA_CTHDDC] [int] IDENTITY(1,1) NOT NULL,
	[MA_HD] [int] NOT NULL,
	[MA_CD] [int] NOT NULL,
	[TRIGIA_CTHDDC] [money] NULL,
	[THOIGIANLAP_CTHDDC] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CHITIET_HDGU]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHITIET_HDGU](
	[MA_CTHDGU] [int] IDENTITY(1,1) NOT NULL,
	[MA_HD] [int] NOT NULL,
	[MA_LUOTGU] [int] NOT NULL,
	[TRIGIA_CTHDGU] [money] NULL,
	[THOIGIANLAP_CTHDGU] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CHITIET_HDLT]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHITIET_HDLT](
	[MA_CTHDLT] [int] IDENTITY(1,1) NOT NULL,
	[MA_HD] [int] NOT NULL,
	[MA_PHONG] [int] NOT NULL,
	[THOIGIANNHAN_PHONG] [smalldatetime] NULL,
	[THOIGIANTRA_PHONG] [smalldatetime] NULL,
	[TRIGIA_CTHDLT] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CHUYENDI]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHUYENDI](
	[MA_CD] [int] IDENTITY(1,1) NOT NULL,
	[DIEMDEN_CD] [nvarchar](255) NULL,
	[DONGIA_CD] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HOADON]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HOADON](
	[MA_HD] [int] IDENTITY(1,1) NOT NULL,
	[MA_NV] [int] NOT NULL,
	[MA_KH] [int] NOT NULL,
	[THOIGIANLAP_HD] [smalldatetime] NULL,
	[TINHTRANG_HD] [bit] NULL,
	[TRIGIA_HD] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [KHACHHANG]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KHACHHANG](
	[MA_KH] [int] IDENTITY(1,1) NOT NULL,
	[HOTEN_KH] [nvarchar](255) NULL,
	[SODIENTHOAI_KH] [nvarchar](15) NULL,
	[CMND_KH] [nvarchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LOAIGIATUI]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LOAIGIATUI](
	[MA_LOAIGU] [int] IDENTITY(1,1) NOT NULL,
	[TEN_LOAIGU] [nvarchar](255) NULL,
	[DONGIA_LOAIGU] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LOAIPHONG]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LOAIPHONG](
	[MA_LP] [int] IDENTITY(1,1) NOT NULL,
	[TEN_LP] [nvarchar](255) NULL,
	[DONGIA_LP] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LUOTGIATUI]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LUOTGIATUI](
	[MA_LUOTGU] [int] IDENTITY(1,1) NOT NULL,
	[MA_LOAIGU] [int] NOT NULL,
	[SOKILOGRAM_LUOTGU] [int] NULL,
	[NGAYBATDAU_LUOTGU] [date] NULL,
	[NGAYKETTHUC_LUOTGU] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [MATHANG]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MATHANG](
	[MA_MH] [int] IDENTITY(1,1) NOT NULL,
	[TEN_MH] [nvarchar](255) NULL,
	[DONGIA_MH] [money] NULL,
	[NGAYNHAP_MH] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [NHANVIEN]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NHANVIEN](
	[MA_NV] [int] IDENTITY(1,1) NOT NULL,
	[MA_TK] [int] NOT NULL,
	[HOTEN_NV] [nvarchar](255) NULL,
	[GIOITINH_NV] [bit] NULL,
	[NGAYSINH_NV] [date] NULL,
	[SODIENTHOAI_NV] [nvarchar](15) NULL,
	[CHUCVU_NV] [nvarchar](30) NULL,
	[DIACHI_NV] [nvarchar](255) NULL,
	[NGAYVAOLAM_NV] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PHONG]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PHONG](
	[MA_PHONG] [int] NOT NULL,
	[MA_LP] [int] NOT NULL,
	[TINHTRANG_PHONG] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TAIKHOAN]    Script Date: 14/06/2018 22:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TAIKHOAN](
	[MA_TK] [int] IDENTITY(1,1) NOT NULL,
	[TENDANGNHAP_TK] [nvarchar](32) NULL,
	[MATKHAU_TK] [nvarchar](255) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [CHUYENDI] ON 

INSERT [CHUYENDI] ([MA_CD], [DIEMDEN_CD], [DONGIA_CD]) VALUES (1, N'Sân bay Tân Sơn Nhất', 200000.0000)
INSERT [CHUYENDI] ([MA_CD], [DIEMDEN_CD], [DONGIA_CD]) VALUES (2, N'Bến xe Miền Đông', 270000.0000)
INSERT [CHUYENDI] ([MA_CD], [DIEMDEN_CD], [DONGIA_CD]) VALUES (3, N'Bến xe Miền Tây', 140000.0000)
INSERT [CHUYENDI] ([MA_CD], [DIEMDEN_CD], [DONGIA_CD]) VALUES (4, N'Ga Sài Gòn', 200000.0000)
INSERT [CHUYENDI] ([MA_CD], [DIEMDEN_CD], [DONGIA_CD]) VALUES (5, N'Bến xe An Sương', 120000.0000)
INSERT [CHUYENDI] ([MA_CD], [DIEMDEN_CD], [DONGIA_CD]) VALUES (6, N'Bến xe Ngã Tư Ga', 230000.0000)
INSERT [CHUYENDI] ([MA_CD], [DIEMDEN_CD], [DONGIA_CD]) VALUES (7, N'Bến xe Quận 8', 220000.0000)
INSERT [CHUYENDI] ([MA_CD], [DIEMDEN_CD], [DONGIA_CD]) VALUES (8, N'Nhà thờ Đức Bà', 220000.0000)
SET IDENTITY_INSERT [CHUYENDI] OFF
SET IDENTITY_INSERT [KHACHHANG] ON 

INSERT [KHACHHANG] ([MA_KH], [HOTEN_KH], [SODIENTHOAI_KH], [CMND_KH]) VALUES (21, NULL, NULL, NULL)
SET IDENTITY_INSERT [KHACHHANG] OFF
SET IDENTITY_INSERT [LOAIGIATUI] ON 

INSERT [LOAIGIATUI] ([MA_LOAIGU], [TEN_LOAIGU], [DONGIA_LOAIGU]) VALUES (1, N'Theo kilogram', 20000.0000)
INSERT [LOAIGIATUI] ([MA_LOAIGU], [TEN_LOAIGU], [DONGIA_LOAIGU]) VALUES (2, N'Theo ngày', 50000.0000)
SET IDENTITY_INSERT [LOAIGIATUI] OFF
SET IDENTITY_INSERT [LOAIPHONG] ON 

INSERT [LOAIPHONG] ([MA_LP], [TEN_LP], [DONGIA_LP]) VALUES (1, N'Tiêu chuẩn đơn', 80000.0000)
INSERT [LOAIPHONG] ([MA_LP], [TEN_LP], [DONGIA_LP]) VALUES (2, N'Tiêu chuẩn đôi', 120000.0000)
INSERT [LOAIPHONG] ([MA_LP], [TEN_LP], [DONGIA_LP]) VALUES (3, N'Cao cấp đơn', 120000.0000)
INSERT [LOAIPHONG] ([MA_LP], [TEN_LP], [DONGIA_LP]) VALUES (4, N'Cao cấp đôi', 150000.0000)
INSERT [LOAIPHONG] ([MA_LP], [TEN_LP], [DONGIA_LP]) VALUES (5, N'VIP đơn ', 150000.0000)
INSERT [LOAIPHONG] ([MA_LP], [TEN_LP], [DONGIA_LP]) VALUES (6, N'VIP đôi', 180000.0000)
SET IDENTITY_INSERT [LOAIPHONG] OFF
SET IDENTITY_INSERT [MATHANG] ON 

INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (1, N'Nước khoáng Aquafina 330ml', 8000.0000, CAST(N'2018-05-23' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (2, N'Nước khoáng Dasani 330ml ', 9000.0000, CAST(N'2018-06-01' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (3, N'Nước khoáng Aquafina 1.5l', 12000.0000, CAST(N'2018-06-01' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (4, N'Nước khoáng Dasani 1.5l', 13000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (5, N'Pepsi chai 330ml', 10000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (6, N'CocaCola chai 330ml', 9000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (7, N'Trà thảo mộc Dr. Thanh', 12000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (8, N'Trà Ô long Tea Plus', 12000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (9, N'Nước cam ép Twister', 12000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (10, N'Nước tăng lực Sting dâu', 12000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (11, N'Nước tăng lực Number One', 12000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (12, N'Trà xanh 0 độ', 12000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (13, N'Trà xanh C2', 8000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (14, N'Sandwich gà', 24000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (15, N'Sandwich thịt xông khói', 20000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (16, N'Sandwich tôm chiên', 24000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (17, N'Cơm nắm gà cay', 14000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (18, N'Cơm nắm tôm chiên', 16000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (19, N'Cơm nắm chà bông', 12000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (20, N'Cơm nắm trứng cuộn xúc xích', 16000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (21, N'Sandwich trứng hấp xúc xích', 18000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (22, N'Cơm chiên dương châu', 30000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (23, N'Cơm thịt kho trứng', 28000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (24, N'Cơm cá lóc kho tộ', 30000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (25, N'Cơm chay  ', 20000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (26, N'Cơm tôm kho', 28000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (27, N'Cơm bò xào ', 32000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (28, N'Cơm gà xối mỡ', 35000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (29, N'Canh khổ qua dồn thịt', 15000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (30, N'Canh rong biển ', 15000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (31, N'Canh chua cá lóc', 20000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (32, N'Canh rau củ quả hầm xương', 20000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (33, N'Cà phê đen đá', 15000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (34, N'Cà phê sữa đá', 18000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (35, N'Cam tươi ép', 18000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (36, N'Sinh tố bơ ', 25000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (37, N'Sinh tố dâu', 25000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (38, N'Sinh tố đu đủ ', 20000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (39, N'Sinh tố sapoche', 20000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (40, N'Sinh tố dưa gang', 20000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (41, N'Sinh tố mãng cầu', 20000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (42, N'Bún bò Huế', 30000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (43, N'Mì quảng ', 30000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (44, N'Cơm tấm sườn', 25000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (50, N'Thêm phần bì', 5000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (51, N'Thêm phần chả', 5000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (52, N'Thêm phần trứng ốp la', 5000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (53, N'Bún riêu cua', 25000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (54, N'Hủ tiếu Nam Vang', 35000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (55, N'Pepsi lon 330ml', 12000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (56, N'CocaCola lon 330ml', 12000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (61, N'String ln 330ml', 12000.0000, CAST(N'2018-06-05' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (58, N'Mirinda xá sị lon 330ml', 12000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (59, N'Mirinda cam lon 330ml', 12000.0000, CAST(N'2018-06-03' AS Date))
INSERT [MATHANG] ([MA_MH], [TEN_MH], [DONGIA_MH], [NGAYNHAP_MH]) VALUES (60, N'Bún đậu mắm tôm', 40000.0000, CAST(N'2018-06-07' AS Date))
SET IDENTITY_INSERT [MATHANG] OFF
SET IDENTITY_INSERT [NHANVIEN] ON 

INSERT [NHANVIEN] ([MA_NV], [MA_TK], [HOTEN_NV], [GIOITINH_NV], [NGAYSINH_NV], [SODIENTHOAI_NV], [CHUCVU_NV], [DIACHI_NV], [NGAYVAOLAM_NV]) VALUES (1, 1, N'Bùi Huy Phúc', 1, CAST(N'1997-07-17' AS Date), N'0914659369', N'Quản lí', N'87B Hoàng Hoa Thám, Tp. Biên Hòa, Đồng Nai', CAST(N'2010-02-11' AS Date))
INSERT [NHANVIEN] ([MA_NV], [MA_TK], [HOTEN_NV], [GIOITINH_NV], [NGAYSINH_NV], [SODIENTHOAI_NV], [CHUCVU_NV], [DIACHI_NV], [NGAYVAOLAM_NV]) VALUES (2, 2, N'Phạm Phong Phú', 1, CAST(N'1997-08-20' AS Date), N'01208989089', N'Nhân viên', N'901 Trường Chinh, Q. Tân Bình, Tp. Hồ Chí Minh', CAST(N'2010-03-24' AS Date))
INSERT [NHANVIEN] ([MA_NV], [MA_TK], [HOTEN_NV], [GIOITINH_NV], [NGAYSINH_NV], [SODIENTHOAI_NV], [CHUCVU_NV], [DIACHI_NV], [NGAYVAOLAM_NV]) VALUES (3, 3, N'Bùi Thanh Tùng', 1, CAST(N'1997-09-23' AS Date), N'01665544337', N'Nhân viên', N'78/34 Phạm Hùng, Q.8 Tp. Hồ Chí Minh', CAST(N'2010-06-17' AS Date))
INSERT [NHANVIEN] ([MA_NV], [MA_TK], [HOTEN_NV], [GIOITINH_NV], [NGAYSINH_NV], [SODIENTHOAI_NV], [CHUCVU_NV], [DIACHI_NV], [NGAYVAOLAM_NV]) VALUES (4, 4, N'Nguyễn Trọng Văn Khoa', 1, CAST(N'1997-09-10' AS Date), N'01234345345', N'Nhân viên', N'12/5/6 Hoàng Văn Thụ, Q. Tân Bình, Tp. Hồ Chí Minh', CAST(N'2010-07-14' AS Date))
SET IDENTITY_INSERT [NHANVIEN] OFF
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (101, 5, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (102, 1, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (103, 1, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (104, 1, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (105, 1, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (106, 2, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (107, 2, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (108, 3, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (109, 4, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (201, 5, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (202, 1, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (203, 1, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (204, 1, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (205, 1, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (206, 2, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (207, 2, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (208, 3, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (209, 3, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (301, 5, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (302, 5, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (303, 5, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (304, 5, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (305, 5, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (306, 6, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (307, 6, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (308, 6, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (309, 6, N'Trống')
INSERT [PHONG] ([MA_PHONG], [MA_LP], [TINHTRANG_PHONG]) VALUES (401, 4, N'Trống')
SET IDENTITY_INSERT [TAIKHOAN] ON 

INSERT [TAIKHOAN] ([MA_TK], [TENDANGNHAP_TK], [MATKHAU_TK]) VALUES (1, N'phuc', N'c4aa9e36697271fbd4922f13d68a94f9')
INSERT [TAIKHOAN] ([MA_TK], [TENDANGNHAP_TK], [MATKHAU_TK]) VALUES (2, N'phu', N'9b0550b1bb8c4323f4f5f2f8e386302b')
INSERT [TAIKHOAN] ([MA_TK], [TENDANGNHAP_TK], [MATKHAU_TK]) VALUES (3, N'tung', N'26b3fbb2ce1354a7a8dcc2abb458e96b')
INSERT [TAIKHOAN] ([MA_TK], [TENDANGNHAP_TK], [MATKHAU_TK]) VALUES (4, N'khoa', N'32035964ea350cc45ca333216c4a59ff')
SET IDENTITY_INSERT [TAIKHOAN] OFF
/****** Object:  Index [PK_CHITIET_HDAU]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [CHITIET_HDAU] ADD  CONSTRAINT [PK_CHITIET_HDAU] PRIMARY KEY NONCLUSTERED 
(
	[MA_CTHDAU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_CHITIET_HDDC]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [CHITIET_HDDC] ADD  CONSTRAINT [PK_CHITIET_HDDC] PRIMARY KEY NONCLUSTERED 
(
	[MA_CTHDDC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_CHITIET_HDGU]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [CHITIET_HDGU] ADD  CONSTRAINT [PK_CHITIET_HDGU] PRIMARY KEY NONCLUSTERED 
(
	[MA_CTHDGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_CHITIET_HDLT]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [CHITIET_HDLT] ADD  CONSTRAINT [PK_CHITIET_HDLT] PRIMARY KEY NONCLUSTERED 
(
	[MA_CTHDLT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_CHUYENDI]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [CHUYENDI] ADD  CONSTRAINT [PK_CHUYENDI] PRIMARY KEY NONCLUSTERED 
(
	[MA_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_HOADON]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [HOADON] ADD  CONSTRAINT [PK_HOADON] PRIMARY KEY NONCLUSTERED 
(
	[MA_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_KHACHHANG]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [KHACHHANG] ADD  CONSTRAINT [PK_KHACHHANG] PRIMARY KEY NONCLUSTERED 
(
	[MA_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_LOAIGIATUI]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [LOAIGIATUI] ADD  CONSTRAINT [PK_LOAIGIATUI] PRIMARY KEY NONCLUSTERED 
(
	[MA_LOAIGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_LOAIPHONG]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [LOAIPHONG] ADD  CONSTRAINT [PK_LOAIPHONG] PRIMARY KEY NONCLUSTERED 
(
	[MA_LP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_LUOTGIATUI]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [LUOTGIATUI] ADD  CONSTRAINT [PK_LUOTGIATUI] PRIMARY KEY NONCLUSTERED 
(
	[MA_LUOTGU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_MATHANG]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [MATHANG] ADD  CONSTRAINT [PK_MATHANG] PRIMARY KEY NONCLUSTERED 
(
	[MA_MH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_NHANVIEN]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [NHANVIEN] ADD  CONSTRAINT [PK_NHANVIEN] PRIMARY KEY NONCLUSTERED 
(
	[MA_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_PHONG]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [PHONG] ADD  CONSTRAINT [PK_PHONG] PRIMARY KEY NONCLUSTERED 
(
	[MA_PHONG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_TAIKHOAN]    Script Date: 14/06/2018 22:09:52 ******/
ALTER TABLE [TAIKHOAN] ADD  CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY NONCLUSTERED 
(
	[MA_TK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [CHITIET_HDAU] ADD  DEFAULT ((1)) FOR [SOLUONG_MH]
GO
ALTER TABLE [CHITIET_HDAU] ADD  DEFAULT ((0)) FOR [TRIGIA_CTHDAU]
GO
ALTER TABLE [CHITIET_HDDC] ADD  DEFAULT ((0)) FOR [TRIGIA_CTHDDC]
GO
ALTER TABLE [CHITIET_HDGU] ADD  DEFAULT ((0)) FOR [TRIGIA_CTHDGU]
GO
ALTER TABLE [CHITIET_HDLT] ADD  DEFAULT (getdate()) FOR [THOIGIANNHAN_PHONG]
GO
ALTER TABLE [CHITIET_HDLT] ADD  DEFAULT ((0)) FOR [TRIGIA_CTHDLT]
GO
ALTER TABLE [CHUYENDI] ADD  DEFAULT ((0)) FOR [DONGIA_CD]
GO
ALTER TABLE [HOADON] ADD  DEFAULT (getdate()) FOR [THOIGIANLAP_HD]
GO
ALTER TABLE [HOADON] ADD  DEFAULT ((0)) FOR [TINHTRANG_HD]
GO
ALTER TABLE [HOADON] ADD  DEFAULT ((0)) FOR [TRIGIA_HD]
GO
ALTER TABLE [LOAIGIATUI] ADD  DEFAULT ((0)) FOR [DONGIA_LOAIGU]
GO
ALTER TABLE [LOAIPHONG] ADD  DEFAULT ((0)) FOR [DONGIA_LP]
GO
ALTER TABLE [LUOTGIATUI] ADD  DEFAULT ((1)) FOR [SOKILOGRAM_LUOTGU]
GO
ALTER TABLE [MATHANG] ADD  DEFAULT ((0)) FOR [DONGIA_MH]
GO
ALTER TABLE [MATHANG] ADD  CONSTRAINT [DF_MATHANG_NGAYNHAP_MH]  DEFAULT (getdate()) FOR [NGAYNHAP_MH]
GO
ALTER TABLE [NHANVIEN] ADD  DEFAULT (N'Nhân viên') FOR [CHUCVU_NV]
GO
ALTER TABLE [PHONG] ADD  DEFAULT (N'Trống') FOR [TINHTRANG_PHONG]
GO
ALTER TABLE [CHITIET_HDAU]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET__CHITIET_H_MATHANG] FOREIGN KEY([MA_MH])
REFERENCES [MATHANG] ([MA_MH])
GO
ALTER TABLE [CHITIET_HDAU] CHECK CONSTRAINT [FK_CHITIET__CHITIET_H_MATHANG]
GO
ALTER TABLE [CHITIET_HDAU]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_HDAU_HOADON] FOREIGN KEY([MA_HD])
REFERENCES [HOADON] ([MA_HD])
GO
ALTER TABLE [CHITIET_HDAU] CHECK CONSTRAINT [FK_CHITIET_HDAU_HOADON]
GO
ALTER TABLE [CHITIET_HDDC]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET__CHITIET_H_CHUYENDI] FOREIGN KEY([MA_CD])
REFERENCES [CHUYENDI] ([MA_CD])
GO
ALTER TABLE [CHITIET_HDDC] CHECK CONSTRAINT [FK_CHITIET__CHITIET_H_CHUYENDI]
GO
ALTER TABLE [CHITIET_HDDC]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_HDDC_HOADON] FOREIGN KEY([MA_HD])
REFERENCES [HOADON] ([MA_HD])
GO
ALTER TABLE [CHITIET_HDDC] CHECK CONSTRAINT [FK_CHITIET_HDDC_HOADON]
GO
ALTER TABLE [CHITIET_HDGU]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET__CHITIET_H_LUOTGIAT] FOREIGN KEY([MA_LUOTGU])
REFERENCES [LUOTGIATUI] ([MA_LUOTGU])
GO
ALTER TABLE [CHITIET_HDGU] CHECK CONSTRAINT [FK_CHITIET__CHITIET_H_LUOTGIAT]
GO
ALTER TABLE [CHITIET_HDGU]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_HDGU_HOADON] FOREIGN KEY([MA_HD])
REFERENCES [HOADON] ([MA_HD])
GO
ALTER TABLE [CHITIET_HDGU] CHECK CONSTRAINT [FK_CHITIET_HDGU_HOADON]
GO
ALTER TABLE [CHITIET_HDLT]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET__CHITIET_H_PHONG] FOREIGN KEY([MA_PHONG])
REFERENCES [PHONG] ([MA_PHONG])
GO
ALTER TABLE [CHITIET_HDLT] CHECK CONSTRAINT [FK_CHITIET__CHITIET_H_PHONG]
GO
ALTER TABLE [CHITIET_HDLT]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_HDLT_HOADON] FOREIGN KEY([MA_HD])
REFERENCES [HOADON] ([MA_HD])
GO
ALTER TABLE [CHITIET_HDLT] CHECK CONSTRAINT [FK_CHITIET_HDLT_HOADON]
GO
ALTER TABLE [HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_CO_HD_KHACHHAN] FOREIGN KEY([MA_KH])
REFERENCES [KHACHHANG] ([MA_KH])
GO
ALTER TABLE [HOADON] CHECK CONSTRAINT [FK_HOADON_CO_HD_KHACHHAN]
GO
ALTER TABLE [HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_LAP_HD_NHANVIEN] FOREIGN KEY([MA_NV])
REFERENCES [NHANVIEN] ([MA_NV])
GO
ALTER TABLE [HOADON] CHECK CONSTRAINT [FK_HOADON_LAP_HD_NHANVIEN]
GO
ALTER TABLE [LUOTGIATUI]  WITH CHECK ADD  CONSTRAINT [FK_LUOTGIAT_CO_LOAIGU_LOAIGIAT] FOREIGN KEY([MA_LOAIGU])
REFERENCES [LOAIGIATUI] ([MA_LOAIGU])
GO
ALTER TABLE [LUOTGIATUI] CHECK CONSTRAINT [FK_LUOTGIAT_CO_LOAIGU_LOAIGIAT]
GO
ALTER TABLE [NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_CO_TK_TAIKHOAN] FOREIGN KEY([MA_TK])
REFERENCES [TAIKHOAN] ([MA_TK])
GO
ALTER TABLE [NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_CO_TK_TAIKHOAN]
GO
ALTER TABLE [PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_CO_LP_LOAIPHON] FOREIGN KEY([MA_LP])
REFERENCES [LOAIPHONG] ([MA_LP])
GO
ALTER TABLE [PHONG] CHECK CONSTRAINT [FK_PHONG_CO_LP_LOAIPHON]
GO
