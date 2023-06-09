USE [master]
GO
/****** Object:  Database [dbs_asistencia]    Script Date: 13/06/2023 7:14:20 a. m. ******/
CREATE DATABASE [dbs_asistencia] ON  PRIMARY 
( NAME = N'dbs_asistencia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\dbs_asistencia.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbs_asistencia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\dbs_asistencia_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbs_asistencia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbs_asistencia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbs_asistencia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbs_asistencia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbs_asistencia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbs_asistencia] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbs_asistencia] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbs_asistencia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbs_asistencia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbs_asistencia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbs_asistencia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbs_asistencia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbs_asistencia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbs_asistencia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbs_asistencia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbs_asistencia] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbs_asistencia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbs_asistencia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbs_asistencia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbs_asistencia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbs_asistencia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbs_asistencia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbs_asistencia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbs_asistencia] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbs_asistencia] SET  MULTI_USER 
GO
ALTER DATABASE [dbs_asistencia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbs_asistencia] SET DB_CHAINING OFF 
GO
USE [dbs_asistencia]
GO
/****** Object:  Table [dbo].[tbl_asistencia]    Script Date: 13/06/2023 7:14:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_asistencia](
	[PKConsecutivo] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](60) NOT NULL,
	[Edad] [int] NOT NULL,
	[FKCodigo_tbl_comidas] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PKConsecutivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_comidas]    Script Date: 13/06/2023 7:14:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_comidas](
	[PKCodigo] [char](1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Nomenclatura] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PKCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_asistencia] ON 

INSERT [dbo].[tbl_asistencia] ([PKConsecutivo], [Nombre], [Edad], [FKCodigo_tbl_comidas]) VALUES (1, N'Dulfran', 39, N'1')
INSERT [dbo].[tbl_asistencia] ([PKConsecutivo], [Nombre], [Edad], [FKCodigo_tbl_comidas]) VALUES (2, N'Yoyito', 20, N'2')
INSERT [dbo].[tbl_asistencia] ([PKConsecutivo], [Nombre], [Edad], [FKCodigo_tbl_comidas]) VALUES (3, N'Ramirito', 18, N'2')
INSERT [dbo].[tbl_asistencia] ([PKConsecutivo], [Nombre], [Edad], [FKCodigo_tbl_comidas]) VALUES (4, N'Yudis', 46, N'1')
INSERT [dbo].[tbl_asistencia] ([PKConsecutivo], [Nombre], [Edad], [FKCodigo_tbl_comidas]) VALUES (5, N'Plutarquito', 30, N'2')
INSERT [dbo].[tbl_asistencia] ([PKConsecutivo], [Nombre], [Edad], [FKCodigo_tbl_comidas]) VALUES (6, N'Matthew', 30, N'2')
INSERT [dbo].[tbl_asistencia] ([PKConsecutivo], [Nombre], [Edad], [FKCodigo_tbl_comidas]) VALUES (7, N'Pepito', 25, N'1')
INSERT [dbo].[tbl_asistencia] ([PKConsecutivo], [Nombre], [Edad], [FKCodigo_tbl_comidas]) VALUES (8, N'Pachito', 23, N'1')
INSERT [dbo].[tbl_asistencia] ([PKConsecutivo], [Nombre], [Edad], [FKCodigo_tbl_comidas]) VALUES (9, N'Pedrito', 18, N'1')
SET IDENTITY_INSERT [dbo].[tbl_asistencia] OFF
GO
INSERT [dbo].[tbl_comidas] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (N'1', N'Asiste con comida', N'SI')
INSERT [dbo].[tbl_comidas] ([PKCodigo], [Nombre], [Nomenclatura]) VALUES (N'2', N'Asiste sin comida', N'NO')
GO
ALTER TABLE [dbo].[tbl_asistencia]  WITH CHECK ADD  CONSTRAINT [FK_tbl_asistencia_tbl_comidas] FOREIGN KEY([FKCodigo_tbl_comidas])
REFERENCES [dbo].[tbl_comidas] ([PKCodigo])
GO
ALTER TABLE [dbo].[tbl_asistencia] CHECK CONSTRAINT [FK_tbl_asistencia_tbl_comidas]
GO
/****** Object:  StoredProcedure [dbo].[SP_AgregarAsistencia]    Script Date: 13/06/2023 7:14:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Dulfran Montaño>
-- Create date: <Create Date, 10 de junio del 2023>
-- Description:	<Description, Agregar asistencia>
-- =============================================
create procedure [dbo].[SP_AgregarAsistencia]
@nombre varchar(60), @edad int, @comida char
as begin
	insert into tbl_asistencia(Nombre,Edad,FKCodigo_tbl_comidas)
	values (@nombre,@edad,@comida)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ConsultarAsistencia]    Script Date: 13/06/2023 7:14:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Dulfran Montaño>
-- Create date: <Create Date, 10 de junio del 2023>
-- Description:	<Description, Consultar Asistencia>
-- =============================================
create procedure [dbo].[SP_ConsultarAsistencia]
as begin
	select count(*) from tbl_asistencia
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ReporteAsistencia]    Script Date: 13/06/2023 7:14:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Dulfran Montaño>
-- Create date: <Create Date, 10 de junio del 2023>
-- Description:	<Description, Reporte asistencia>
-- =============================================
create procedure [dbo].[SP_ReporteAsistencia]
as begin
	select tbl_asistencia.Nombre as 'ASISTENTE', Edad as 'EDAD', tbl_comidas.Nomenclatura as 'TRAJO ALIMENTO' 
	from tbl_asistencia,tbl_comidas
	where
	tbl_comidas.PKCodigo = tbl_asistencia.FKCodigo_tbl_comidas
end
GO
USE [master]
GO
ALTER DATABASE [dbs_asistencia] SET  READ_WRITE 
GO
