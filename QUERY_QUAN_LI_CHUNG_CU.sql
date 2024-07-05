USE [demo]
GO
/****** Object:  Table [dbo].[CAN_HO]    Script Date: 7/5/2024 8:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAN_HO](
	[ma_can_ho] [nvarchar](10) NOT NULL,
	[khu] [nvarchar](10) NOT NULL,
	[tang] [nvarchar](10) NOT NULL,
	[dien_tich] [int] NOT NULL,
	[ma_chu_so_huu] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_can_ho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHU_SO_HUU]    Script Date: 7/5/2024 8:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHU_SO_HUU](
	[ma_chu_so_huu] [nvarchar](10) NOT NULL,
	[ho_ten] [nvarchar](50) NOT NULL,
	[sdt] [int] NOT NULL,
	[phai] [nvarchar](3) NULL,
	[ngay_sinh] [date] NULL,
	[cccd] [int] NOT NULL,
	[ten_dang_nhap] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_chu_so_huu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANG_NHAP]    Script Date: 7/5/2024 8:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANG_NHAP](
	[ten_dang_nhap] [nvarchar](50) NOT NULL,
	[mat_khau] [nvarchar](50) NOT NULL,
	[ma_quyen] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ten_dang_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICH_VU]    Script Date: 7/5/2024 8:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICH_VU](
	[ma_dich_vu] [nvarchar](10) NOT NULL,
	[ten_dich_vu] [nvarchar](50) NOT NULL,
	[vat] [float] NULL,
	[don_gia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_dich_vu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICH_VU_CUA_CAN_HO]    Script Date: 7/5/2024 8:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICH_VU_CUA_CAN_HO](
	[id_dich_vu_cua_can_ho] [int] IDENTITY(1,1) NOT NULL,
	[ma_dich_vu] [nvarchar](10) NOT NULL,
	[ma_can_ho] [nvarchar](10) NOT NULL,
	[ngay_bat_dau] [date] NOT NULL,
	[ngay_ket_thuc] [date] NULL,
	[so_luong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dich_vu_cua_can_ho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOA_DON]    Script Date: 7/5/2024 8:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA_DON](
	[ma_hoa_don] [nvarchar](10) NOT NULL,
	[ten_hoa_don] [nvarchar](50) NULL,
	[ma_can_ho] [nvarchar](10) NOT NULL,
	[ma_nhan_vien] [nvarchar](10) NOT NULL,
	[ngay_lap] [date] NOT NULL,
	[ngay_dong_tien] [date] NULL,
	[tien_dong] [int] NULL,
	[tien_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_hoa_don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAN_VIEN]    Script Date: 7/5/2024 8:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAN_VIEN](
	[ma_nhan_vien] [nvarchar](10) NOT NULL,
	[ho_ten] [nvarchar](50) NOT NULL,
	[sdt] [int] NOT NULL,
	[ma_phong_ban] [nvarchar](10) NOT NULL,
	[phai] [nvarchar](3) NULL,
	[ngay_sinh] [date] NULL,
	[cccd] [int] NULL,
	[ten_dang_nhap] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhan_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONG_BAN]    Script Date: 7/5/2024 8:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG_BAN](
	[ma_phong_ban] [nvarchar](10) NOT NULL,
	[ten_phong_ban] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_phong_ban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYEN]    Script Date: 7/5/2024 8:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYEN](
	[ma_quyen] [nvarchar](50) NOT NULL,
	[ten_quyen] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_quyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANH_TOAN]    Script Date: 7/5/2024 8:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANH_TOAN](
	[ma_thanh_toan] [nvarchar](10) NOT NULL,
	[so_tai_khoan] [int] NOT NULL,
	[ten_ngan_hang] [nvarchar](50) NOT NULL,
	[ten_nguoi_nhan] [nvarchar](50) NOT NULL,
	[ngay_ap_dung] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_thanh_toan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CAN_HO] ([ma_can_ho], [khu], [tang], [dien_tich], [ma_chu_so_huu]) VALUES (N'CH1', N'A', N'1', 0, N'CSH1')
INSERT [dbo].[CAN_HO] ([ma_can_ho], [khu], [tang], [dien_tich], [ma_chu_so_huu]) VALUES (N'CH2', N'A', N'2', 0, N'CSH2')
INSERT [dbo].[CAN_HO] ([ma_can_ho], [khu], [tang], [dien_tich], [ma_chu_so_huu]) VALUES (N'CH3', N'A', N'3', 0, N'CSH3')
INSERT [dbo].[CAN_HO] ([ma_can_ho], [khu], [tang], [dien_tich], [ma_chu_so_huu]) VALUES (N'CH4', N'B', N'1', 0, N'CSH2')
INSERT [dbo].[CAN_HO] ([ma_can_ho], [khu], [tang], [dien_tich], [ma_chu_so_huu]) VALUES (N'CH5', N'B', N'2', 0, N'CSH4')
GO
INSERT [dbo].[CHU_SO_HUU] ([ma_chu_so_huu], [ho_ten], [sdt], [phai], [ngay_sinh], [cccd], [ten_dang_nhap]) VALUES (N'CSH1', N'truong van a', 123, N'NAM', CAST(N'1999-01-01' AS Date), 1234567891, N'user1')
INSERT [dbo].[CHU_SO_HUU] ([ma_chu_so_huu], [ho_ten], [sdt], [phai], [ngay_sinh], [cccd], [ten_dang_nhap]) VALUES (N'CSH2', N'nguyen van b', 123, N'NAM', CAST(N'1999-01-02' AS Date), 1234567891, N'user12')
INSERT [dbo].[CHU_SO_HUU] ([ma_chu_so_huu], [ho_ten], [sdt], [phai], [ngay_sinh], [cccd], [ten_dang_nhap]) VALUES (N'CSH3', N'nguyen thi c', 123, N'NU', CAST(N'1999-01-03' AS Date), 1234567891, N'user3')
INSERT [dbo].[CHU_SO_HUU] ([ma_chu_so_huu], [ho_ten], [sdt], [phai], [ngay_sinh], [cccd], [ten_dang_nhap]) VALUES (N'CSH4', N'truong thi a', 123, N'NU', CAST(N'1999-01-04' AS Date), 1234567891, N'user4')
INSERT [dbo].[CHU_SO_HUU] ([ma_chu_so_huu], [ho_ten], [sdt], [phai], [ngay_sinh], [cccd], [ten_dang_nhap]) VALUES (N'CSH5', N'le thi c', 123, N'NU', CAST(N'1999-01-05' AS Date), 1234567891, N'user5')
GO
INSERT [dbo].[DANG_NHAP] ([ten_dang_nhap], [mat_khau], [ma_quyen]) VALUES (N'User1', N'123', N'CSH')
INSERT [dbo].[DANG_NHAP] ([ten_dang_nhap], [mat_khau], [ma_quyen]) VALUES (N'User10', N'123', N'NV')
INSERT [dbo].[DANG_NHAP] ([ten_dang_nhap], [mat_khau], [ma_quyen]) VALUES (N'User2', N'123', N'CSH')
INSERT [dbo].[DANG_NHAP] ([ten_dang_nhap], [mat_khau], [ma_quyen]) VALUES (N'User3', N'123', N'CSH')
INSERT [dbo].[DANG_NHAP] ([ten_dang_nhap], [mat_khau], [ma_quyen]) VALUES (N'User4', N'123', N'CSH')
INSERT [dbo].[DANG_NHAP] ([ten_dang_nhap], [mat_khau], [ma_quyen]) VALUES (N'User5', N'123', N'CSH')
INSERT [dbo].[DANG_NHAP] ([ten_dang_nhap], [mat_khau], [ma_quyen]) VALUES (N'User6', N'123', N'NV')
INSERT [dbo].[DANG_NHAP] ([ten_dang_nhap], [mat_khau], [ma_quyen]) VALUES (N'User7', N'123', N'NV')
INSERT [dbo].[DANG_NHAP] ([ten_dang_nhap], [mat_khau], [ma_quyen]) VALUES (N'User8', N'123', N'NV')
INSERT [dbo].[DANG_NHAP] ([ten_dang_nhap], [mat_khau], [ma_quyen]) VALUES (N'User9', N'123', N'NV')
GO
INSERT [dbo].[DICH_VU] ([ma_dich_vu], [ten_dich_vu], [vat], [don_gia]) VALUES (N'DV1', N'dich vu 1', 0.03, 10000)
INSERT [dbo].[DICH_VU] ([ma_dich_vu], [ten_dich_vu], [vat], [don_gia]) VALUES (N'DV2', N'dich vu 2', 0.03, 10000)
INSERT [dbo].[DICH_VU] ([ma_dich_vu], [ten_dich_vu], [vat], [don_gia]) VALUES (N'DV3', N'dich vu 3', 0.03, 10000)
GO
SET IDENTITY_INSERT [dbo].[DICH_VU_CUA_CAN_HO] ON 

INSERT [dbo].[DICH_VU_CUA_CAN_HO] ([id_dich_vu_cua_can_ho], [ma_dich_vu], [ma_can_ho], [ngay_bat_dau], [ngay_ket_thuc], [so_luong]) VALUES (1, N'DV1', N'CH1', CAST(N'2024-01-01' AS Date), NULL, 1)
INSERT [dbo].[DICH_VU_CUA_CAN_HO] ([id_dich_vu_cua_can_ho], [ma_dich_vu], [ma_can_ho], [ngay_bat_dau], [ngay_ket_thuc], [so_luong]) VALUES (2, N'DV1', N'CH2', CAST(N'2024-01-02' AS Date), NULL, 1)
INSERT [dbo].[DICH_VU_CUA_CAN_HO] ([id_dich_vu_cua_can_ho], [ma_dich_vu], [ma_can_ho], [ngay_bat_dau], [ngay_ket_thuc], [so_luong]) VALUES (3, N'DV2', N'CH2', CAST(N'2024-01-03' AS Date), NULL, 1)
INSERT [dbo].[DICH_VU_CUA_CAN_HO] ([id_dich_vu_cua_can_ho], [ma_dich_vu], [ma_can_ho], [ngay_bat_dau], [ngay_ket_thuc], [so_luong]) VALUES (4, N'DV3', N'CH1', CAST(N'2024-01-04' AS Date), NULL, 1)
INSERT [dbo].[DICH_VU_CUA_CAN_HO] ([id_dich_vu_cua_can_ho], [ma_dich_vu], [ma_can_ho], [ngay_bat_dau], [ngay_ket_thuc], [so_luong]) VALUES (5, N'DV1', N'CH4', CAST(N'2024-01-05' AS Date), NULL, 1)
INSERT [dbo].[DICH_VU_CUA_CAN_HO] ([id_dich_vu_cua_can_ho], [ma_dich_vu], [ma_can_ho], [ngay_bat_dau], [ngay_ket_thuc], [so_luong]) VALUES (6, N'DV3', N'CH5', CAST(N'2024-01-06' AS Date), NULL, 1)
INSERT [dbo].[DICH_VU_CUA_CAN_HO] ([id_dich_vu_cua_can_ho], [ma_dich_vu], [ma_can_ho], [ngay_bat_dau], [ngay_ket_thuc], [so_luong]) VALUES (7, N'DV2', N'CH1', CAST(N'2024-01-07' AS Date), NULL, 1)
SET IDENTITY_INSERT [dbo].[DICH_VU_CUA_CAN_HO] OFF
GO
INSERT [dbo].[HOA_DON] ([ma_hoa_don], [ten_hoa_don], [ma_can_ho], [ma_nhan_vien], [ngay_lap], [ngay_dong_tien], [tien_dong], [tien_no]) VALUES (N'HD1', N'1 - 2024', N'CH1', N'NV1', CAST(N'2024-02-01' AS Date), CAST(N'2024-08-01' AS Date), 1000000, 0)
INSERT [dbo].[HOA_DON] ([ma_hoa_don], [ten_hoa_don], [ma_can_ho], [ma_nhan_vien], [ngay_lap], [ngay_dong_tien], [tien_dong], [tien_no]) VALUES (N'HD2', N'1 - 2024', N'CH2', N'NV1', CAST(N'2024-02-01' AS Date), CAST(N'2024-08-01' AS Date), 1000000, 0)
INSERT [dbo].[HOA_DON] ([ma_hoa_don], [ten_hoa_don], [ma_can_ho], [ma_nhan_vien], [ngay_lap], [ngay_dong_tien], [tien_dong], [tien_no]) VALUES (N'HD3', N'1 - 2024', N'CH3', N'NV1', CAST(N'2024-02-01' AS Date), CAST(N'2024-08-01' AS Date), 1000000, 0)
INSERT [dbo].[HOA_DON] ([ma_hoa_don], [ten_hoa_don], [ma_can_ho], [ma_nhan_vien], [ngay_lap], [ngay_dong_tien], [tien_dong], [tien_no]) VALUES (N'HD4', N'2 - 2024', N'CH1', N'NV1', CAST(N'2024-02-02' AS Date), NULL, 1000000, 0)
INSERT [dbo].[HOA_DON] ([ma_hoa_don], [ten_hoa_don], [ma_can_ho], [ma_nhan_vien], [ngay_lap], [ngay_dong_tien], [tien_dong], [tien_no]) VALUES (N'HD5', N'2 - 2024', N'CH2', N'NV1', CAST(N'2024-02-02' AS Date), NULL, 1000000, 0)
GO
INSERT [dbo].[NHAN_VIEN] ([ma_nhan_vien], [ho_ten], [sdt], [ma_phong_ban], [phai], [ngay_sinh], [cccd], [ten_dang_nhap]) VALUES (N'NV1', N'truong van a', 1234567891, N'pb1', N'NAM', CAST(N'1999-01-01' AS Date), 123, N'user6')
INSERT [dbo].[NHAN_VIEN] ([ma_nhan_vien], [ho_ten], [sdt], [ma_phong_ban], [phai], [ngay_sinh], [cccd], [ten_dang_nhap]) VALUES (N'NV2', N'nguyen van b', 1234567891, N'pb2', N'NAM', CAST(N'1999-01-02' AS Date), 123, N'user7')
INSERT [dbo].[NHAN_VIEN] ([ma_nhan_vien], [ho_ten], [sdt], [ma_phong_ban], [phai], [ngay_sinh], [cccd], [ten_dang_nhap]) VALUES (N'NV3', N'nguyen thi c', 1234567891, N'pb1', N'NU', CAST(N'1999-01-03' AS Date), 123, N'user8')
INSERT [dbo].[NHAN_VIEN] ([ma_nhan_vien], [ho_ten], [sdt], [ma_phong_ban], [phai], [ngay_sinh], [cccd], [ten_dang_nhap]) VALUES (N'NV4', N'truong thi a', 1234567891, N'pb3', N'NU', CAST(N'1999-01-04' AS Date), 123, N'user9')
INSERT [dbo].[NHAN_VIEN] ([ma_nhan_vien], [ho_ten], [sdt], [ma_phong_ban], [phai], [ngay_sinh], [cccd], [ten_dang_nhap]) VALUES (N'NV5', N'le thi c', 1234567891, N'pb1', N'NU', CAST(N'1999-01-05' AS Date), 123, N'user10')
GO
INSERT [dbo].[PHONG_BAN] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'pb1', N'phong ban 1')
INSERT [dbo].[PHONG_BAN] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'pb2', N'phong ban 1')
INSERT [dbo].[PHONG_BAN] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'pb3', N'phong ban 1')
GO
INSERT [dbo].[QUYEN] ([ma_quyen], [ten_quyen]) VALUES (N'CSH', N'CHU SO HUU')
INSERT [dbo].[QUYEN] ([ma_quyen], [ten_quyen]) VALUES (N'NV', N'NHAN VIEN')
GO
INSERT [dbo].[THANH_TOAN] ([ma_thanh_toan], [so_tai_khoan], [ten_ngan_hang], [ten_nguoi_nhan], [ngay_ap_dung]) VALUES (N'TT1', 12345678, N'SHB', N'NGO QUANG MINH', CAST(N'2024-01-01' AS Date))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_key]    Script Date: 7/5/2024 8:56:17 PM ******/
ALTER TABLE [dbo].[CAN_HO] ADD  CONSTRAINT [unique_key] UNIQUE NONCLUSTERED 
(
	[ma_can_ho] ASC,
	[khu] ASC,
	[tang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CHU_SO_H__363698B33DF01211]    Script Date: 7/5/2024 8:56:17 PM ******/
ALTER TABLE [dbo].[CHU_SO_HUU] ADD UNIQUE NONCLUSTERED 
(
	[ten_dang_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UNIQUE_CTDV]    Script Date: 7/5/2024 8:56:17 PM ******/
ALTER TABLE [dbo].[DICH_VU_CUA_CAN_HO] ADD  CONSTRAINT [UNIQUE_CTDV] UNIQUE NONCLUSTERED 
(
	[ma_dich_vu] ASC,
	[ma_can_ho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_hoadon]    Script Date: 7/5/2024 8:56:17 PM ******/
ALTER TABLE [dbo].[HOA_DON] ADD  CONSTRAINT [unique_hoadon] UNIQUE NONCLUSTERED 
(
	[ten_hoa_don] ASC,
	[ma_can_ho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NHAN_VIE__363698B396DC02B4]    Script Date: 7/5/2024 8:56:17 PM ******/
ALTER TABLE [dbo].[NHAN_VIEN] ADD UNIQUE NONCLUSTERED 
(
	[ten_dang_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__QUYEN__FCC1082B7D19053C]    Script Date: 7/5/2024 8:56:17 PM ******/
ALTER TABLE [dbo].[QUYEN] ADD UNIQUE NONCLUSTERED 
(
	[ten_quyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHU_SO_HUU] ADD  DEFAULT ('NAM') FOR [phai]
GO
ALTER TABLE [dbo].[DICH_VU] ADD  DEFAULT ((0)) FOR [vat]
GO
ALTER TABLE [dbo].[HOA_DON] ADD  DEFAULT ((0)) FOR [tien_no]
GO
ALTER TABLE [dbo].[NHAN_VIEN] ADD  DEFAULT ('NAM') FOR [phai]
GO
ALTER TABLE [dbo].[CAN_HO]  WITH CHECK ADD FOREIGN KEY([ma_chu_so_huu])
REFERENCES [dbo].[CHU_SO_HUU] ([ma_chu_so_huu])
GO
ALTER TABLE [dbo].[DANG_NHAP]  WITH CHECK ADD  CONSTRAINT [FK_ma_quyen] FOREIGN KEY([ma_quyen])
REFERENCES [dbo].[QUYEN] ([ma_quyen])
GO
ALTER TABLE [dbo].[DANG_NHAP] CHECK CONSTRAINT [FK_ma_quyen]
GO
ALTER TABLE [dbo].[DICH_VU_CUA_CAN_HO]  WITH CHECK ADD FOREIGN KEY([ma_can_ho])
REFERENCES [dbo].[CAN_HO] ([ma_can_ho])
GO
ALTER TABLE [dbo].[DICH_VU_CUA_CAN_HO]  WITH CHECK ADD FOREIGN KEY([ma_dich_vu])
REFERENCES [dbo].[DICH_VU] ([ma_dich_vu])
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD FOREIGN KEY([ma_can_ho])
REFERENCES [dbo].[CAN_HO] ([ma_can_ho])
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD FOREIGN KEY([ma_nhan_vien])
REFERENCES [dbo].[NHAN_VIEN] ([ma_nhan_vien])
GO
ALTER TABLE [dbo].[NHAN_VIEN]  WITH CHECK ADD FOREIGN KEY([ma_phong_ban])
REFERENCES [dbo].[PHONG_BAN] ([ma_phong_ban])
GO
ALTER TABLE [dbo].[CHU_SO_HUU]  WITH CHECK ADD CHECK  (([phai]='NAM' OR [phai]='NU'))
GO
ALTER TABLE [dbo].[NHAN_VIEN]  WITH CHECK ADD CHECK  (([phai]='NAM' OR [phai]='NU'))
GO
