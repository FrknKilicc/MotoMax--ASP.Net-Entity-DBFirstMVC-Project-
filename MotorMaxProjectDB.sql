USE [master]
GO
/****** Object:  Database [MotorMax]    Script Date: 13.10.2023 02:36:28 ******/
CREATE DATABASE [MotorMax]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MotorMax', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.FURKANKILIC\MSSQL\DATA\MotorMax.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MotorMax_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.FURKANKILIC\MSSQL\DATA\MotorMax_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MotorMax] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MotorMax].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MotorMax] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MotorMax] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MotorMax] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MotorMax] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MotorMax] SET ARITHABORT OFF 
GO
ALTER DATABASE [MotorMax] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MotorMax] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MotorMax] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MotorMax] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MotorMax] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MotorMax] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MotorMax] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MotorMax] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MotorMax] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MotorMax] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MotorMax] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MotorMax] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MotorMax] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MotorMax] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MotorMax] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MotorMax] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MotorMax] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MotorMax] SET RECOVERY FULL 
GO
ALTER DATABASE [MotorMax] SET  MULTI_USER 
GO
ALTER DATABASE [MotorMax] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MotorMax] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MotorMax] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MotorMax] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MotorMax] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MotorMax] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MotorMax', N'ON'
GO
ALTER DATABASE [MotorMax] SET QUERY_STORE = ON
GO
ALTER DATABASE [MotorMax] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MotorMax]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 13.10.2023 02:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminID] [int] IDENTITY(1000,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Passwordd] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 13.10.2023 02:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdı] [varchar](50) NULL,
	[KategoriAciklamasi] [varchar](50) NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lojistik]    Script Date: 13.10.2023 02:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lojistik](
	[LojistikID] [int] IDENTITY(1,1) NOT NULL,
	[LojistikFirmaAdi] [varchar](50) NULL,
	[FirmaTel] [varchar](12) NULL,
 CONSTRAINT [PK_Lojistik] PRIMARY KEY CLUSTERED 
(
	[LojistikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Müsteriler]    Script Date: 13.10.2023 02:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Müsteriler](
	[MüsteriID] [int] IDENTITY(1,1) NOT NULL,
	[MüsteriAdi] [varchar](50) NULL,
	[MüsteriSifre] [varchar](50) NULL,
	[MüsteriTel] [varchar](12) NULL,
	[MüsteriAdresi] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_Müsteriler] PRIMARY KEY CLUSTERED 
(
	[MüsteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiparisDetay]    Script Date: 13.10.2023 02:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparisDetay](
	[SiparisDetayNo] [int] IDENTITY(1,1) NOT NULL,
	[ÜrünNo] [int] NULL,
	[SiparisMiktari] [int] NULL,
	[SiparisNo] [int] NULL,
	[UnitePrice] [money] NULL,
	[TotalAmount] [money] NULL,
 CONSTRAINT [PK_SiparisDetay] PRIMARY KEY CLUSTERED 
(
	[SiparisDetayNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparisler]    Script Date: 13.10.2023 02:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparisler](
	[SiparisNo] [int] IDENTITY(1,1) NOT NULL,
	[MüsteriID] [int] NULL,
	[SiparisTarihi] [datetime] NULL,
	[LojistikID] [int] NULL,
 CONSTRAINT [PK_Siparisler] PRIMARY KEY CLUSTERED 
(
	[SiparisNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedarikciler]    Script Date: 13.10.2023 02:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikciler](
	[TedarikciID] [int] IDENTITY(1,1) NOT NULL,
	[TedarikciAdı] [varchar](50) NULL,
	[TedarikciAdresi] [varchar](50) NULL,
	[TedarikciÜlke] [varchar](50) NULL,
	[Telefon] [varchar](12) NULL,
 CONSTRAINT [PK_Tedarikciler] PRIMARY KEY CLUSTERED 
(
	[TedarikciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 13.10.2023 02:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[ÜrünNo] [int] IDENTITY(1,1) NOT NULL,
	[KategoriID] [int] NULL,
	[TedarikciID] [int] NULL,
	[ÜrünAdi] [varchar](50) NULL,
	[ÜrünMarkasi] [varchar](50) NULL,
	[ÜrünStokKodu] [varchar](50) NULL,
	[ÜrünAdedi] [int] NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[ÜrünNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminID], [Name], [Passwordd], [Role]) VALUES (1000, N'furkan', N'123', N'A')
INSERT [dbo].[Admins] ([AdminID], [Name], [Passwordd], [Role]) VALUES (1001, N'Cihat Kaya', N'123', N'B')
INSERT [dbo].[Admins] ([AdminID], [Name], [Passwordd], [Role]) VALUES (1002, N'deneme', N'deneme', N'B')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAciklamasi]) VALUES (1, N'Kasklar', N'Kasklar ve interkomlar')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAciklamasi]) VALUES (2, N'Kıyafetler', N'Kıyafetler ve Koruyucular')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAciklamasi]) VALUES (3, N'Yağ ve Yedek Parça', N'Yağ ve Yedek Parça')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAciklamasi]) VALUES (4, N'Motosikletler', N'Motosikletler')
INSERT [dbo].[Kategoriler] ([KategoriID], [KategoriAdı], [KategoriAciklamasi]) VALUES (6, N'asd', N'asdas')
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Lojistik] ON 

INSERT [dbo].[Lojistik] ([LojistikID], [LojistikFirmaAdi], [FirmaTel]) VALUES (2, N'BORUSAN LOJİSTİK DAĞITIM DEPOLAMA TAŞ.VE TİC. A.Ş.', N'02126669979')
INSERT [dbo].[Lojistik] ([LojistikID], [LojistikFirmaAdi], [FirmaTel]) VALUES (3, N'FEVZİ GANDUR LOJİSTİK A.Ş', N'02126669979')
INSERT [dbo].[Lojistik] ([LojistikID], [LojistikFirmaAdi], [FirmaTel]) VALUES (4, N'YENİ ANTALYA TRANSPORT VE TİC.A.Ş.', N'02126669979')
INSERT [dbo].[Lojistik] ([LojistikID], [LojistikFirmaAdi], [FirmaTel]) VALUES (5, N'GENEL TRANSPORT Nakliyat ve Ticaret Ltd.', N'02126669979')
SET IDENTITY_INSERT [dbo].[Lojistik] OFF
GO
SET IDENTITY_INSERT [dbo].[Müsteriler] ON 

INSERT [dbo].[Müsteriler] ([MüsteriID], [MüsteriAdi], [MüsteriSifre], [MüsteriTel], [MüsteriAdresi], [Role]) VALUES (1, N'Seyid Hocam', N'123', N'05442603193', N'Bahçelievler', N'M')
INSERT [dbo].[Müsteriler] ([MüsteriID], [MüsteriAdi], [MüsteriSifre], [MüsteriTel], [MüsteriAdresi], [Role]) VALUES (3, N'deneme2', N'deneme2', N'05442603193', N'Zeytinburnu', N'M')
SET IDENTITY_INSERT [dbo].[Müsteriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tedarikciler] ON 

INSERT [dbo].[Tedarikciler] ([TedarikciID], [TedarikciAdı], [TedarikciAdresi], [TedarikciÜlke], [Telefon]) VALUES (1, N'LS', N'Barcelona', N'İspanya', N'02126441284')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [TedarikciAdı], [TedarikciAdresi], [TedarikciÜlke], [Telefon]) VALUES (2, N'Shima', N'Wakayama ', N'Japonya', N'02126441284')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [TedarikciAdı], [TedarikciAdresi], [TedarikciÜlke], [Telefon]) VALUES (3, N'Dainese', N'Molvena ', N'İtalya ', N'02126441284')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [TedarikciAdı], [TedarikciAdresi], [TedarikciÜlke], [Telefon]) VALUES (4, N'Alpinestars ', N'Mazzarolo', N'İtalya ', N'02126441284')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [TedarikciAdı], [TedarikciAdresi], [TedarikciÜlke], [Telefon]) VALUES (5, N'4Riders', N'Pakistan ', N'Pakistan ', N'02126441284')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [TedarikciAdı], [TedarikciAdresi], [TedarikciÜlke], [Telefon]) VALUES (6, N'Motul', N'Fransa ', N'Fransa ', N'02126441284')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [TedarikciAdı], [TedarikciAdresi], [TedarikciÜlke], [Telefon]) VALUES (7, N'Castrol', N'İngiltere', N'İngiltere', N'02126441284')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [TedarikciAdı], [TedarikciAdresi], [TedarikciÜlke], [Telefon]) VALUES (8, N'Shark', N'Fransa', N'Fransa', N'02126441284')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [TedarikciAdı], [TedarikciAdresi], [TedarikciÜlke], [Telefon]) VALUES (9, N'Yamaha', N'Iwata ', N'Japonya', N'02126441284')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [TedarikciAdı], [TedarikciAdresi], [TedarikciÜlke], [Telefon]) VALUES (10, N'Honda', N'Japonya', N'Japonya', N'02126441284')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [TedarikciAdı], [TedarikciAdresi], [TedarikciÜlke], [Telefon]) VALUES (11, N'Regal Raptor', N'İspanya ', N'İspanya ', N'02126441284')
INSERT [dbo].[Tedarikciler] ([TedarikciID], [TedarikciAdı], [TedarikciAdresi], [TedarikciÜlke], [Telefon]) VALUES (14, N'DenemeDenemeDenemeDeneme', N'Deneme', N'Deneme', N'Deneme')
SET IDENTITY_INSERT [dbo].[Tedarikciler] OFF
GO
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([ÜrünNo], [KategoriID], [TedarikciID], [ÜrünAdi], [ÜrünMarkasi], [ÜrünStokKodu], [ÜrünAdedi]) VALUES (1, 4, 9, N'Yamaha R1 Super Sport', N'Yamaha', N'R1-YMH', 15)
INSERT [dbo].[Urunler] ([ÜrünNo], [KategoriID], [TedarikciID], [ÜrünAdi], [ÜrünMarkasi], [ÜrünStokKodu], [ÜrünAdedi]) VALUES (2, 2, 3, N'Dainese Valorosa 50TH LTD QDF Black Deri Mont', N'Dainese', N'Valaros-Dns', 10)
INSERT [dbo].[Urunler] ([ÜrünNo], [KategoriID], [TedarikciID], [ÜrünAdi], [ÜrünMarkasi], [ÜrünStokKodu], [ÜrünAdedi]) VALUES (3, 4, 10, N'HONDA-VFR1200 X CROSSTOURER', N'Honda', N'VFR12-HND', 5)
INSERT [dbo].[Urunler] ([ÜrünNo], [KategoriID], [TedarikciID], [ÜrünAdi], [ÜrünMarkasi], [ÜrünStokKodu], [ÜrünAdedi]) VALUES (4, 3, 6, N'Motul 7100 10W60 4T 1LT Motor Yağı', N'Motul', N'MTL-7100', 20)
INSERT [dbo].[Urunler] ([ÜrünNo], [KategoriID], [TedarikciID], [ÜrünAdi], [ÜrünMarkasi], [ÜrünStokKodu], [ÜrünAdedi]) VALUES (5, 1, 8, N'Shark D-Skwal 2 Cadıum Mat Kapalı Kask', N'Shark', N'Dskwal-Shrk', 30)
INSERT [dbo].[Urunler] ([ÜrünNo], [KategoriID], [TedarikciID], [ÜrünAdi], [ÜrünMarkasi], [ÜrünStokKodu], [ÜrünAdedi]) VALUES (7, 2, 2, N'Shima Solid Korumalı Motosiklet Montu (Beyaz)', N'Shima', N'MX005322', 10)
SET IDENTITY_INSERT [dbo].[Urunler] OFF
GO
ALTER TABLE [dbo].[SiparisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SiparisDetay_Siparisler] FOREIGN KEY([SiparisNo])
REFERENCES [dbo].[Siparisler] ([SiparisNo])
GO
ALTER TABLE [dbo].[SiparisDetay] CHECK CONSTRAINT [FK_SiparisDetay_Siparisler]
GO
ALTER TABLE [dbo].[SiparisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SiparisDetay_Urunler] FOREIGN KEY([ÜrünNo])
REFERENCES [dbo].[Urunler] ([ÜrünNo])
GO
ALTER TABLE [dbo].[SiparisDetay] CHECK CONSTRAINT [FK_SiparisDetay_Urunler]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_Siparisler_Lojistik] FOREIGN KEY([LojistikID])
REFERENCES [dbo].[Lojistik] ([LojistikID])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_Siparisler_Lojistik]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_Siparisler_Müsteriler] FOREIGN KEY([MüsteriID])
REFERENCES [dbo].[Müsteriler] ([MüsteriID])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_Siparisler_Müsteriler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Kategoriler] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategoriler] ([KategoriID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Kategoriler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Tedarikciler] FOREIGN KEY([TedarikciID])
REFERENCES [dbo].[Tedarikciler] ([TedarikciID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Tedarikciler]
GO
USE [master]
GO
ALTER DATABASE [MotorMax] SET  READ_WRITE 
GO
