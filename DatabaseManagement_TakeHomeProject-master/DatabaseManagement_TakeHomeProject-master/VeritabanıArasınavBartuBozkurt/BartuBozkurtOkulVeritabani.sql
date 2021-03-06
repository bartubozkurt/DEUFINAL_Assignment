USE [master]
GO
/****** Object:  Database [OKUL]    Script Date: 1.05.2020 16:57:44 ******/
CREATE DATABASE [OKUL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OKUL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\OKUL.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OKUL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\OKUL_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OKUL] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OKUL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OKUL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OKUL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OKUL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OKUL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OKUL] SET ARITHABORT OFF 
GO
ALTER DATABASE [OKUL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OKUL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OKUL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OKUL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OKUL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OKUL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OKUL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OKUL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OKUL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OKUL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OKUL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OKUL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OKUL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OKUL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OKUL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OKUL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OKUL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OKUL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OKUL] SET  MULTI_USER 
GO
ALTER DATABASE [OKUL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OKUL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OKUL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OKUL] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [OKUL] SET DELAYED_DURABILITY = DISABLED 
GO
USE [OKUL]
GO
/****** Object:  Table [dbo].[Bolum]    Script Date: 1.05.2020 16:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bolum](
	[bolumİd] [int] IDENTITY(1,1) NOT NULL,
	[bolumAdi] [varchar](50) NULL,
	[bolumAciklama] [varchar](50) NULL,
	[bolumEposta] [varchar](50) NULL,
 CONSTRAINT [PK_Bolum] PRIMARY KEY CLUSTERED 
(
	[bolumİd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ders]    Script Date: 1.05.2020 16:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ders](
	[dersİd] [int] IDENTITY(1,1) NOT NULL,
	[dersAdi] [varchar](50) NULL,
	[dersKodu] [varchar](50) NULL,
	[dersKredisi] [int] NULL,
	[bolumİd] [int] NULL,
 CONSTRAINT [PK_Ders] PRIMARY KEY CLUSTERED 
(
	[dersİd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ogrenci]    Script Date: 1.05.2020 16:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ogrenci](
	[ogrenciİd] [int] NOT NULL,
	[ogrenciAdi] [varchar](50) NULL,
	[ogrenciSoyadi] [varchar](50) NULL,
	[dogumYeri] [varchar](50) NULL,
	[bolumİd] [int] NULL,
 CONSTRAINT [PK_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[ogrenciİd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ogretmen]    Script Date: 1.05.2020 16:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ogretmen](
	[ogretmenİd] [int] IDENTITY(1,1) NOT NULL,
	[ogretmenAdi] [varchar](50) NULL,
	[ogretmenSoyadi] [varchar](50) NULL,
	[pozisyon] [varchar](50) NULL,
	[dogumYeri] [varchar](50) NULL,
	[bolumİd] [int] NULL,
	[maas] [float] NULL,
 CONSTRAINT [PK_Ogretmen] PRIMARY KEY CLUSTERED 
(
	[ogretmenİd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Bolum] ON 

INSERT [dbo].[Bolum] ([bolumİd], [bolumAdi], [bolumAciklama], [bolumEposta]) VALUES (1, N'Bilgisayar Bilimleri', N'Bilgisayar Bilimleri', N'bilgisayarbilimleri@deu.edu.tr')
INSERT [dbo].[Bolum] ([bolumİd], [bolumAdi], [bolumAciklama], [bolumEposta]) VALUES (2, N'Biyoloji', N'Biyoloji', N'biyoloji@deu.edu.tr')
INSERT [dbo].[Bolum] ([bolumİd], [bolumAdi], [bolumAciklama], [bolumEposta]) VALUES (3, N'Fizik', N'Fizik', N'fizik@deu.edu.tr')
INSERT [dbo].[Bolum] ([bolumİd], [bolumAdi], [bolumAciklama], [bolumEposta]) VALUES (4, N'Istatistik', N'Istatistik', N'istatistik@deuedutr')
INSERT [dbo].[Bolum] ([bolumİd], [bolumAdi], [bolumAciklama], [bolumEposta]) VALUES (5, N'Kimya', N'Kimya', N'kimya@deu.edu.tr')
INSERT [dbo].[Bolum] ([bolumİd], [bolumAdi], [bolumAciklama], [bolumEposta]) VALUES (6, N'Matematik', N'Matematik', N'matematik@deu.edu.tr')
SET IDENTITY_INSERT [dbo].[Bolum] OFF
SET IDENTITY_INSERT [dbo].[Ders] ON 

INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (1, N'Veritabani Yönetimi', N'BIL2004', 4, 1)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (2, N'Nesneye Yönelik Programlama', N'BIL2002', 4, 1)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (3, N'Matematiksel Programlama', N'BIL2010', 4, 1)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (4, N'Genel Biyoloji 1', N'BIY1001', 4, 2)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (5, N'Bitki Morfolojisi Ve Anatomisi', N'BIY2005', 4, 2)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (6, N'Anatomi', N'BIY2008', 6, 2)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (7, N'Fizik 1', N'FIZ1010', 4, 3)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (8, N'Fizikte Matematiksel Yöntemler', N'FIZ2055', 4, 3)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (9, N'Istatistik Için Hesaplama Araçlari', N'IST1051', 4, 4)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (10, N'Olasilik Ve Istatistik', N'IST1012', 4, 4)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (11, N'Probleme Dayali Ögrenme', N'IST2001', 4, 4)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (12, N'Regresyon Çözümlemesi', N'IST3031', 4, 4)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (13, N'Kimya Laboratuvari', N'KIM1010', 4, 5)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (14, N'Analitik Kimya Laboratuvari', N'KIM2019', 4, 5)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (15, N'Organik Kimya ', N'KIM2021', 4, 5)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (16, N'Fiziko Kimya', N'KIM2020', 4, 5)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (17, N'Kalkülüs', N'MAT1032', 4, 6)
INSERT [dbo].[Ders] ([dersİd], [dersAdi], [dersKodu], [dersKredisi], [bolumİd]) VALUES (18, N'Lineer Cebir', N'MAT2037', 4, 6)
SET IDENTITY_INSERT [dbo].[Ders] OFF
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (1, N'Bartu ', N'Bozkurt', N'Bursa', 1)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (2, N'Mehmet Nuri ', N'Yilmaz', N'Aydin', 1)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (3, N'Fatih ', N'Sevencan', N'Trabzon', 1)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (4, N'Baser', N'Kabadayi', N'Mugla', 1)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (5, N'Ipek', N'Soydemir', N'Izmir', 1)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (6, N'Kamuran', N'Kece', N'Izmir', 2)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (7, N'Aziz', N'Keskin', N'Istanbul', 2)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (8, N'Talat ', N'Sanli', N'Istanbul', 2)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (9, N'Turgut ', N'Cemal', N'Bursa', 3)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (10, N'Leyla', N'Sahin', N'Ankara', 3)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (11, N'Ahmet ', N'Büyük', N'Adana', 3)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (12, N'Bora', N'Keskin', N'Ankara', 3)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (13, N'Ecenur', N'Çavli', N'Izmir', 4)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (14, N'Esra', N'Altun', N'Izmir', 4)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (15, N'Kutay ', N'Türkoglu', N'Manisa', 4)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (16, N'Mertcan ', N'Arikan', N'Istanbul', 5)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (17, N'Melih ', N'Atici', N'Sivas', 5)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (18, N'Tuncay', N'Sanli', N'Diyarbakir', 5)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (19, N'Adem', N'Piskin', N'Balikesir', 5)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (20, N'Zeynep ', N'Yapici', N'Izmir', 6)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (21, N'Dogukan', N'Arslan', N'Ankara', 6)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (22, N'Onur', N'Sahin', N'Tekirdag', 6)
INSERT [dbo].[Ogrenci] ([ogrenciİd], [ogrenciAdi], [ogrenciSoyadi], [dogumYeri], [bolumİd]) VALUES (23, N'Gizem', N'Arslan', N'Kütahya', 6)
SET IDENTITY_INSERT [dbo].[Ogretmen] ON 

INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (1, N'EMEL ', N'KURUOGLU KANDEMIR', N'PROF.DR', N'Izmir', 1, 10500)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (2, N'METE', N'EMINAGAOGLU', N'Dr. Ögr. Üyesi ', N'Izmir', 1, 6400)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (3, N'AYSE OVGU', N'KINAY', N'Dr. Ögr. Üyesi ', N'Antalya', 1, 6300)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (4, N'ISA', N'GÖKLER', N'PROF.DR', N'Istanbul', 2, 9500)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (5, N'YUSUF', N'KUMLUTAS', N'PROF.DR ', N'Manisa', 2, 9500)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (6, N'SAMI', N'YILDIZ', N'Doç.Dr', N'Istanbul', 2, 7000)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (7, N'HAMZA ', N'POLAT

', N'PROF', N'Balikesir', 3, 9000)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (8, N'ISMAIL', N'SÖKMEN', N'PROF ', N'Istanbul', 3, 8500)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (9, N'Ogr.G. SEDAT', N'CAPAR', N'Ogr.G', N'Kars', 4, 5793)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (10, N'SELMA', N'GÜRLER', N'Doç', N'Bursa', 4, 6551)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (11, N'ÖZLEM EGE', N'ORUÇ', N'Doç', N'Samsun', 4, 6500)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (12, N'ABDULLAH FIRAT', N'ÖZDEMIR', N'Doç', N'Bolu', 4, 6600)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (13, N'LEVENT', N'ÇAVAS', N'Doç', N'Rize', 5, 6400)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (14, N'KADRIYE ', N'ERTEKIN', N'PROF', N'Adana', 5, 10000)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (15, N'MUSTAFA YAVUZ ', N'ERGÜN', N'PROF', N'Çanakkale', 5, 9200)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (16, N'YOLDAS', N'SEKI', N'Doç', N'Mersin', 5, 6650)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (17, N'HALIL', N'ORUÇ', N'PROF', N'Kayseri', 6, 10010)
INSERT [dbo].[Ogretmen] ([ogretmenİd], [ogretmenAdi], [ogretmenSoyadi], [pozisyon], [dogumYeri], [bolumİd], [maas]) VALUES (18, N'ENGIN', N'MERMUT', N'Doç', N'Istanbul', 6, 6660)
SET IDENTITY_INSERT [dbo].[Ogretmen] OFF
ALTER TABLE [dbo].[Ders]  WITH CHECK ADD  CONSTRAINT [FK_Ders_Bolum] FOREIGN KEY([bolumİd])
REFERENCES [dbo].[Bolum] ([bolumİd])
GO
ALTER TABLE [dbo].[Ders] CHECK CONSTRAINT [FK_Ders_Bolum]
GO
ALTER TABLE [dbo].[Ogrenci]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenci_Bolum] FOREIGN KEY([bolumİd])
REFERENCES [dbo].[Bolum] ([bolumİd])
GO
ALTER TABLE [dbo].[Ogrenci] CHECK CONSTRAINT [FK_Ogrenci_Bolum]
GO
ALTER TABLE [dbo].[Ogretmen]  WITH CHECK ADD  CONSTRAINT [FK_Ogretmen_Bolum] FOREIGN KEY([bolumİd])
REFERENCES [dbo].[Bolum] ([bolumİd])
GO
ALTER TABLE [dbo].[Ogretmen] CHECK CONSTRAINT [FK_Ogretmen_Bolum]
GO
ALTER TABLE [dbo].[Ogretmen]  WITH CHECK ADD  CONSTRAINT [FK_Ogretmen_Ders] FOREIGN KEY([ogretmenİd])
REFERENCES [dbo].[Ders] ([dersİd])
GO
ALTER TABLE [dbo].[Ogretmen] CHECK CONSTRAINT [FK_Ogretmen_Ders]
GO
USE [master]
GO
ALTER DATABASE [OKUL] SET  READ_WRITE 
GO
