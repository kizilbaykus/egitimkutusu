USE [master]
GO
/****** Object:  Database [summart]    Script Date: 11.09.2018 23:44:41 ******/
CREATE DATABASE [summart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'summart', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\summart.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'summart_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\summart_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [summart] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [summart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [summart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [summart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [summart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [summart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [summart] SET ARITHABORT OFF 
GO
ALTER DATABASE [summart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [summart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [summart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [summart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [summart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [summart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [summart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [summart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [summart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [summart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [summart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [summart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [summart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [summart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [summart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [summart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [summart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [summart] SET RECOVERY FULL 
GO
ALTER DATABASE [summart] SET  MULTI_USER 
GO
ALTER DATABASE [summart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [summart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [summart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [summart] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [summart] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'summart', N'ON'
GO
USE [summart]
GO
/****** Object:  Table [dbo].[ANASAYFA]    Script Date: 11.09.2018 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ANASAYFA](
	[Kimlik] [int] IDENTITY(1,1) NOT NULL,
	[Sergi1] [varchar](max) NULL,
	[Sergi3] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMAIL]    Script Date: 11.09.2018 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMAIL](
	[Kimlik] [int] IDENTITY(1,1) NOT NULL,
	[Mail] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIRIS]    Script Date: 11.09.2018 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIRIS](
	[KullaniciAdi] [varchar](50) NULL,
	[Sifre] [varchar](16) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ILETISIM]    Script Date: 11.09.2018 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ILETISIM](
	[KİMLİK] [int] IDENTITY(1,1) NOT NULL,
	[Adiniz] [varchar](max) NULL,
	[Soyadiniz] [varchar](max) NULL,
	[EPosta] [varchar](max) NULL,
	[Numaraniz] [varchar](max) NULL,
	[Baslik] [varchar](max) NULL,
	[Mesaj] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAHNE]    Script Date: 11.09.2018 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAHNE](
	[Kimlik] [int] IDENTITY(1,1) NOT NULL,
	[Resim] [varchar](max) NULL,
	[Yazı] [varchar](max) NULL,
	[TarihBaslangic] [date] NULL,
	[TarihBitis] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAHNEDETAY]    Script Date: 11.09.2018 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAHNEDETAY](
	[Kimlik] [int] NULL,
	[Resim] [varchar](max) NULL,
	[Yazı] [varchar](max) NULL,
	[Tarih] [date] NULL,
	[Acıklama] [varchar](max) NULL,
	[Gün] [varchar](max) NULL,
	[Saat] [varchar](max) NULL,
	[Acıklama2] [varchar](max) NULL,
	[Oyuncular] [varchar](max) NULL,
	[Konser1Foto] [varchar](max) NULL,
	[Konser2Foto] [varchar](max) NULL,
	[Konser3Foto] [varchar](max) NULL,
	[Konser4Foto] [varchar](max) NULL,
	[Konser5Foto] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEMPOZYUMDETAY]    Script Date: 11.09.2018 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEMPOZYUMDETAY](
	[Kimlik] [int] NULL,
	[Resim] [varchar](max) NULL,
	[Yazı] [varchar](max) NULL,
	[Tarih] [varchar](max) NULL,
	[Acıklama] [varchar](max) NULL,
	[Acıklama2] [varchar](max) NULL,
	[Oyuncular] [varchar](max) NULL,
	[Sempozres1] [varchar](max) NULL,
	[Sempozres2] [varchar](max) NULL,
	[Sempozres3] [varchar](max) NULL,
	[Sempozres4] [varchar](max) NULL,
	[Sempozres5] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEMPOZYUMLAR]    Script Date: 11.09.2018 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEMPOZYUMLAR](
	[KİMLİK] [int] IDENTITY(1,1) NOT NULL,
	[İsim] [varchar](max) NULL,
	[Tarih] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SERGILER]    Script Date: 11.09.2018 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SERGILER](
	[Kimlik] [int] IDENTITY(1,1) NOT NULL,
	[SergilerFoto] [varchar](max) NULL,
	[SergilerIsim] [varchar](max) NULL,
	[SergilerBaslangic] [date] NULL,
	[SergilerBitis] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SERGILERDETAY]    Script Date: 11.09.2018 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SERGILERDETAY](
	[Kimlik] [int] NULL,
	[Foto] [varchar](max) NULL,
	[Yazı1] [varchar](max) NULL,
	[Yazı2] [varchar](max) NULL,
	[Yazı3] [varchar](max) NULL,
	[Acıklama] [varchar](max) NULL,
	[Sergires1] [varchar](max) NULL,
	[Sergires2] [varchar](max) NULL,
	[Sergires3] [varchar](max) NULL,
	[Sergires4] [varchar](max) NULL,
	[Sergires5] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[yusuf]    Script Date: 11.09.2018 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yusuf](
	[SergilerFoto] [varchar](max) NULL,
	[SergilerIsim] [varchar](max) NULL,
	[SergilerTarih] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [summart] SET  READ_WRITE 
GO
