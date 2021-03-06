USE [QuanLySinhVien]
GO
/****** Object:  Table [dbo].[DANGKY]    Script Date: 5/4/2019 3:36:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGKY](
	[MaHP] [int] NOT NULL,
	[MaSV] [int] NOT NULL,
	[NgayDK] [date] NULL,
	[DiemThi] [float] NULL,
	[DiemTP] [float] NULL,
 CONSTRAINT [PK_DANGKY] PRIMARY KEY CLUSTERED 
(
	[MaHP] ASC,
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOCPHAN]    Script Date: 5/4/2019 3:37:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCPHAN](
	[MaHP] [int] IDENTITY(1,1) NOT NULL,
	[TenHP] [nvarchar](255) NULL,
	[SoTC] [int] NULL,
	[HSDiemThi] [float] NULL,
 CONSTRAINT [PK_HOCPHAN] PRIMARY KEY CLUSTERED 
(
	[MaHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 5/4/2019 3:37:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MaSV] [int] IDENTITY(1,1) NOT NULL,
	[Ho] [nvarchar](20) NULL,
	[Ten] [nvarchar](20) NULL,
	[QueQuan] [nvarchar](255) NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[DANGKY] ([MaHP], [MaSV], [NgayDK], [DiemThi], [DiemTP]) VALUES (1, 1, CAST(N'2019-06-07' AS Date), 9, 9)
INSERT [dbo].[DANGKY] ([MaHP], [MaSV], [NgayDK], [DiemThi], [DiemTP]) VALUES (1, 2, CAST(N'2019-05-08' AS Date), 10, 6)
INSERT [dbo].[DANGKY] ([MaHP], [MaSV], [NgayDK], [DiemThi], [DiemTP]) VALUES (1, 4, CAST(N'2019-05-04' AS Date), 5, 9)
INSERT [dbo].[DANGKY] ([MaHP], [MaSV], [NgayDK], [DiemThi], [DiemTP]) VALUES (1, 5, CAST(N'2019-05-04' AS Date), 5, 9)
INSERT [dbo].[DANGKY] ([MaHP], [MaSV], [NgayDK], [DiemThi], [DiemTP]) VALUES (3, 3, CAST(N'2019-05-04' AS Date), 5, 9)
INSERT [dbo].[DANGKY] ([MaHP], [MaSV], [NgayDK], [DiemThi], [DiemTP]) VALUES (9, 2, CAST(N'2019-05-04' AS Date), 5, 9)
SET IDENTITY_INSERT [dbo].[HOCPHAN] ON 

INSERT [dbo].[HOCPHAN] ([MaHP], [TenHP], [SoTC], [HSDiemThi]) VALUES (1, N'C', 2, 0.7)
INSERT [dbo].[HOCPHAN] ([MaHP], [TenHP], [SoTC], [HSDiemThi]) VALUES (2, N'C++', 3, 0.6)
INSERT [dbo].[HOCPHAN] ([MaHP], [TenHP], [SoTC], [HSDiemThi]) VALUES (3, N'PHP', 2, 0.6)
INSERT [dbo].[HOCPHAN] ([MaHP], [TenHP], [SoTC], [HSDiemThi]) VALUES (4, N'Java', 4, 0.5)
INSERT [dbo].[HOCPHAN] ([MaHP], [TenHP], [SoTC], [HSDiemThi]) VALUES (5, N'C#', 2, 0.8)
INSERT [dbo].[HOCPHAN] ([MaHP], [TenHP], [SoTC], [HSDiemThi]) VALUES (6, N'HTML', 2, 0.8)
INSERT [dbo].[HOCPHAN] ([MaHP], [TenHP], [SoTC], [HSDiemThi]) VALUES (7, N'JS', 3, 0.9)
INSERT [dbo].[HOCPHAN] ([MaHP], [TenHP], [SoTC], [HSDiemThi]) VALUES (9, N'CSS', 3, 0.6)
SET IDENTITY_INSERT [dbo].[HOCPHAN] OFF
SET IDENTITY_INSERT [dbo].[SINHVIEN] ON 

INSERT [dbo].[SINHVIEN] ([MaSV], [Ho], [Ten], [QueQuan], [NgaySinh]) VALUES (1, N'Nguyễn Văn', N'A', N'Quảng Bình', CAST(N'1997-01-01' AS Date))
INSERT [dbo].[SINHVIEN] ([MaSV], [Ho], [Ten], [QueQuan], [NgaySinh]) VALUES (2, N'Trương Quốc', N'Huynh', N'Quảng Bình', CAST(N'1996-01-04' AS Date))
INSERT [dbo].[SINHVIEN] ([MaSV], [Ho], [Ten], [QueQuan], [NgaySinh]) VALUES (3, N'Trần Văn', N'B', N'Huế', CAST(N'1997-01-05' AS Date))
INSERT [dbo].[SINHVIEN] ([MaSV], [Ho], [Ten], [QueQuan], [NgaySinh]) VALUES (4, N'Lê Thị', N'C', N'Đà Nẵng', CAST(N'1996-05-02' AS Date))
INSERT [dbo].[SINHVIEN] ([MaSV], [Ho], [Ten], [QueQuan], [NgaySinh]) VALUES (5, N'Phan Văn', N'D', N'Hà Nội', CAST(N'1996-06-03' AS Date))
SET IDENTITY_INSERT [dbo].[SINHVIEN] OFF
ALTER TABLE [dbo].[DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_DANGKY_HOCPHAN] FOREIGN KEY([MaHP])
REFERENCES [dbo].[HOCPHAN] ([MaHP])
GO
ALTER TABLE [dbo].[DANGKY] CHECK CONSTRAINT [FK_DANGKY_HOCPHAN]
GO
ALTER TABLE [dbo].[DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_DANGKY_SINHVIEN] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SINHVIEN] ([MaSV])
GO
ALTER TABLE [dbo].[DANGKY] CHECK CONSTRAINT [FK_DANGKY_SINHVIEN]
GO
