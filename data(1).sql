USE [INF205]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 04/20/2017 15:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](255) NOT NULL,
	[DanhMucCha] [int] NULL,
 CONSTRAINT [DanhMuc_pk] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [DanhMucCha]) VALUES (1, N'Áo sơ mi 2', NULL)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [DanhMucCha]) VALUES (2, N'Áo khoác', NULL)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [DanhMucCha]) VALUES (3, N'Áo phông', NULL)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [DanhMucCha]) VALUES (4, N'Áo len', NULL)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [DanhMucCha]) VALUES (5, N'Áo da', NULL)
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
/****** Object:  Table [dbo].[KhachHang]    Script Date: 04/20/2017 15:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[HoDem] [nvarchar](100) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [varchar](15) NULL,
 CONSTRAINT [KhachHang_pk] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoDem], [Email], [DiaChi], [SDT]) VALUES (1, N'Đức 2', N'Nguyễn Chung', N'duc@gmail.com', N'Hà Nội', N'01368989899')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoDem], [Email], [DiaChi], [SDT]) VALUES (2, N'Khánh', N'Phạm Hoàng', N'khanh@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoDem], [Email], [DiaChi], [SDT]) VALUES (3, N'Hùng', N'Vũ Văn', N'hunvv@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoDem], [Email], [DiaChi], [SDT]) VALUES (4, N'Hùng', N'Nguyễn Đắc', N'hungnd@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoDem], [Email], [DiaChi], [SDT]) VALUES (5, N'Mạnh', N'Đinh Công', N'manh@gmail.com', NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
/****** Object:  Table [dbo].[HoaDon]    Script Date: 04/20/2017 15:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayBan] [smalldatetime] NOT NULL,
	[NgayGiao] [smalldatetime] NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [HoaDon_pk] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai]) VALUES (1, 1, CAST(0xA7EF0000 AS SmallDateTime), CAST(0xA84A0000 AS SmallDateTime), N'Hà Nội', 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai]) VALUES (2, 1, CAST(0xA7EF0000 AS SmallDateTime), CAST(0xA84A0000 AS SmallDateTime), N'HCM', 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai]) VALUES (3, 1, CAST(0xA7EF0000 AS SmallDateTime), CAST(0xA84A0000 AS SmallDateTime), N'Đà Nẵng', 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai]) VALUES (4, 1, CAST(0xA7EF0000 AS SmallDateTime), CAST(0xA84A0000 AS SmallDateTime), N'Hà Nội', 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai]) VALUES (5, 1, CAST(0xA7EF0000 AS SmallDateTime), CAST(0xA84A0000 AS SmallDateTime), N'Hà Nội', 1)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
/****** Object:  Table [dbo].[SanPham]    Script Date: 04/20/2017 15:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMuc] [int] NOT NULL,
	[TenSP] [nvarchar](255) NOT NULL,
	[Gia] [money] NOT NULL,
	[MoTa] [nvarchar](1000) NULL,
	[HinhAnh] [varchar](100) NULL,
 CONSTRAINT [SanPham_pk] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [Gia], [MoTa], [HinhAnh]) VALUES (1, 1, N'Áo sơ mi x', 500.0000, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [Gia], [MoTa], [HinhAnh]) VALUES (2, 2, N'Áo khoác x', 500.0000, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [Gia], [MoTa], [HinhAnh]) VALUES (3, 3, N'Áo phông x', 500.0000, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [Gia], [MoTa], [HinhAnh]) VALUES (4, 4, N'Áo len x', 500.0000, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [Gia], [MoTa], [HinhAnh]) VALUES (5, 5, N'Áo da NF', 500.0000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 04/20/2017 15:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[Soluong] [smallint] NOT NULL,
	[DonGia] [money] NOT NULL,
 CONSTRAINT [ChiTietHoaDon_pk] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Soluong], [DonGia]) VALUES (1, 1, 3, 5000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Soluong], [DonGia]) VALUES (1, 2, 3, 5000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Soluong], [DonGia]) VALUES (1, 3, 3, 5000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Soluong], [DonGia]) VALUES (1, 4, 3, 5000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [Soluong], [DonGia]) VALUES (1, 5, 3, 5000.0000)
/****** Object:  ForeignKey [product_purchase_item]    Script Date: 04/20/2017 15:57:14 ******/
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [product_purchase_item] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [product_purchase_item]
GO
/****** Object:  ForeignKey [purchase_purchase_item]    Script Date: 04/20/2017 15:57:14 ******/
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [purchase_purchase_item] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [purchase_purchase_item]
GO
/****** Object:  ForeignKey [product_category_product_category]    Script Date: 04/20/2017 15:57:14 ******/
ALTER TABLE [dbo].[DanhMuc]  WITH CHECK ADD  CONSTRAINT [product_category_product_category] FOREIGN KEY([DanhMucCha])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[DanhMuc] CHECK CONSTRAINT [product_category_product_category]
GO
/****** Object:  ForeignKey [client_purchase]    Script Date: 04/20/2017 15:57:14 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [client_purchase] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [client_purchase]
GO
/****** Object:  ForeignKey [product_category_product]    Script Date: 04/20/2017 15:57:14 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [product_category_product] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [product_category_product]
GO
