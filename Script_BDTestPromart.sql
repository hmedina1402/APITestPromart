USE [master]
GO
/****** Object:  Database [BDTestPromart]    Script Date: 08/01/2020 11:52:49 ******/
CREATE DATABASE [BDTestPromart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDTestPromart', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\BDTestPromart.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDTestPromart_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\BDTestPromart_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BDTestPromart] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDTestPromart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDTestPromart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDTestPromart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDTestPromart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDTestPromart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDTestPromart] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDTestPromart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDTestPromart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDTestPromart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDTestPromart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDTestPromart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDTestPromart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDTestPromart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDTestPromart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDTestPromart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDTestPromart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDTestPromart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDTestPromart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDTestPromart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDTestPromart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDTestPromart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDTestPromart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDTestPromart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDTestPromart] SET RECOVERY FULL 
GO
ALTER DATABASE [BDTestPromart] SET  MULTI_USER 
GO
ALTER DATABASE [BDTestPromart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDTestPromart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDTestPromart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDTestPromart] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDTestPromart] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDTestPromart', N'ON'
GO
ALTER DATABASE [BDTestPromart] SET QUERY_STORE = OFF
GO
USE [BDTestPromart]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [BDTestPromart]
GO
/****** Object:  Table [dbo].[t_cliente]    Script Date: 08/01/2020 11:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_cliente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](50) NULL,
	[apellido_p] [varchar](50) NULL,
	[apellido_m] [varchar](50) NULL,
	[dni] [varchar](8) NULL,
	[fecha_nacimiento] [datetime] NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_t_cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [BDTestPromart] SET  READ_WRITE 
GO
