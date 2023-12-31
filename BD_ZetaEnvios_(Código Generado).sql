USE [master]
GO
/****** Object:  Database [ZetaEnvios]    Script Date: 28/7/2018 17:00:19 ******/
CREATE DATABASE [ZetaEnvios]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ZetaEnvios', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ZetaEnvios.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ZetaEnvios_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ZetaEnvios_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ZetaEnvios] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ZetaEnvios].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ZetaEnvios] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ZetaEnvios] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ZetaEnvios] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ZetaEnvios] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ZetaEnvios] SET ARITHABORT OFF 
GO
ALTER DATABASE [ZetaEnvios] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ZetaEnvios] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ZetaEnvios] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ZetaEnvios] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ZetaEnvios] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ZetaEnvios] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ZetaEnvios] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ZetaEnvios] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ZetaEnvios] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ZetaEnvios] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ZetaEnvios] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ZetaEnvios] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ZetaEnvios] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ZetaEnvios] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ZetaEnvios] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ZetaEnvios] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ZetaEnvios] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ZetaEnvios] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ZetaEnvios] SET  MULTI_USER 
GO
ALTER DATABASE [ZetaEnvios] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ZetaEnvios] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ZetaEnvios] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ZetaEnvios] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ZetaEnvios] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ZetaEnvios] SET QUERY_STORE = OFF
GO
USE [ZetaEnvios]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ZetaEnvios]
GO
/****** Object:  Table [dbo].[Administradores]    Script Date: 28/7/2018 17:00:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administradores](
	[Id_funcionario] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Nivel_de_estudios] [varchar](50) NULL,
 CONSTRAINT [PK_Administradores] PRIMARY KEY CLUSTERED 
(
	[Id_funcionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Camiones]    Script Date: 28/7/2018 17:00:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camiones](
	[Id_camion] [int] NOT NULL,
	[Placa] [int] NULL,
	[Marca] [varchar](50) NULL,
	[Tonelaje] [int] NULL,
 CONSTRAINT [PK_Camiones] PRIMARY KEY CLUSTERED 
(
	[Id_camion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 28/7/2018 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id_categoría] [int] NOT NULL,
	[Categoria_funcionario] [varchar](50) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id_categoría] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 28/7/2018 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id_cliente] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Teléfono] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fun_Cat]    Script Date: 28/7/2018 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fun_Cat](
	[Id_funcionario] [int] NULL,
	[Id_categoría] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fun_Suc]    Script Date: 28/7/2018 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fun_Suc](
	[Id_ciudad] [int] NULL,
	[Id_funcionario] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionarios]    Script Date: 28/7/2018 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionarios](
	[Id_funcionario] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Teléfono] [int] NULL,
	[Fecha_de_nacimiento] [date] NULL,
 CONSTRAINT [PK_Funcionarios] PRIMARY KEY CLUSTERED 
(
	[Id_funcionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paq_Cli]    Script Date: 28/7/2018 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paq_Cli](
	[Id_paquete] [int] NULL,
	[Id_cliente] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paq_Via_SucIn_SucFin]    Script Date: 28/7/2018 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paq_Via_SucIn_SucFin](
	[Id_paquete] [int] NULL,
	[Id_viaje] [int] NULL,
	[Id_ciudadin] [int] NULL,
	[Id_ciudadfin] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paquetes]    Script Date: 28/7/2018 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paquetes](
	[Id_paquete] [int] NOT NULL,
	[Ciudad_inicio] [varchar](100) NULL,
	[Ciudad_destino] [varchar](100) NULL,
 CONSTRAINT [PK_Paquetes] PRIMARY KEY CLUSTERED 
(
	[Id_paquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 28/7/2018 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursales](
	[Id_ciudad] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Ciudad] [varchar](100) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Sucursales] PRIMARY KEY CLUSTERED 
(
	[Id_ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transportistas]    Script Date: 28/7/2018 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transportistas](
	[Id_funcionario] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Experiencia] [int] NULL,
 CONSTRAINT [PK_Transportistas] PRIMARY KEY CLUSTERED 
(
	[Id_funcionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Via_Suc_Cam_Fun]    Script Date: 28/7/2018 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Via_Suc_Cam_Fun](
	[Id_viaje] [int] NULL,
	[Id_ciudad] [int] NULL,
	[Id_camion] [int] NULL,
	[Id_funcionario] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viajes]    Script Date: 28/7/2018 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viajes](
	[Id_viaje] [int] NOT NULL,
	[Monto_viaticos] [int] NULL,
	[Ciudad_inicio] [varchar](100) NULL,
	[Ciudad_destino] [varchar](100) NULL,
	[Fecha_inicio] [date] NULL,
	[Fecha_final] [date] NULL,
 CONSTRAINT [PK_Viajes] PRIMARY KEY CLUSTERED 
(
	[Id_viaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fun_Cat]  WITH CHECK ADD  CONSTRAINT [FK_F_C_A] FOREIGN KEY([Id_funcionario])
REFERENCES [dbo].[Administradores] ([Id_funcionario])
GO
ALTER TABLE [dbo].[Fun_Cat] CHECK CONSTRAINT [FK_F_C_A]
GO
ALTER TABLE [dbo].[Fun_Cat]  WITH CHECK ADD  CONSTRAINT [FK_F_C_C] FOREIGN KEY([Id_categoría])
REFERENCES [dbo].[Categorias] ([Id_categoría])
GO
ALTER TABLE [dbo].[Fun_Cat] CHECK CONSTRAINT [FK_F_C_C]
GO
ALTER TABLE [dbo].[Fun_Cat]  WITH CHECK ADD  CONSTRAINT [FK_F_C_F] FOREIGN KEY([Id_funcionario])
REFERENCES [dbo].[Funcionarios] ([Id_funcionario])
GO
ALTER TABLE [dbo].[Fun_Cat] CHECK CONSTRAINT [FK_F_C_F]
GO
ALTER TABLE [dbo].[Fun_Cat]  WITH CHECK ADD  CONSTRAINT [FK_F_C_T] FOREIGN KEY([Id_funcionario])
REFERENCES [dbo].[Transportistas] ([Id_funcionario])
GO
ALTER TABLE [dbo].[Fun_Cat] CHECK CONSTRAINT [FK_F_C_T]
GO
ALTER TABLE [dbo].[Fun_Suc]  WITH CHECK ADD  CONSTRAINT [FK_F_S_F] FOREIGN KEY([Id_funcionario])
REFERENCES [dbo].[Funcionarios] ([Id_funcionario])
GO
ALTER TABLE [dbo].[Fun_Suc] CHECK CONSTRAINT [FK_F_S_F]
GO
ALTER TABLE [dbo].[Fun_Suc]  WITH CHECK ADD  CONSTRAINT [FK_F_S_S] FOREIGN KEY([Id_ciudad])
REFERENCES [dbo].[Sucursales] ([Id_ciudad])
GO
ALTER TABLE [dbo].[Fun_Suc] CHECK CONSTRAINT [FK_F_S_S]
GO
ALTER TABLE [dbo].[Paq_Cli]  WITH CHECK ADD  CONSTRAINT [FK_P_C_C] FOREIGN KEY([Id_cliente])
REFERENCES [dbo].[Clientes] ([Id_cliente])
GO
ALTER TABLE [dbo].[Paq_Cli] CHECK CONSTRAINT [FK_P_C_C]
GO
ALTER TABLE [dbo].[Paq_Cli]  WITH CHECK ADD  CONSTRAINT [FK_P_C_P] FOREIGN KEY([Id_paquete])
REFERENCES [dbo].[Paquetes] ([Id_paquete])
GO
ALTER TABLE [dbo].[Paq_Cli] CHECK CONSTRAINT [FK_P_C_P]
GO
ALTER TABLE [dbo].[Paq_Via_SucIn_SucFin]  WITH CHECK ADD  CONSTRAINT [FK_P_V_SI_SF_P] FOREIGN KEY([Id_paquete])
REFERENCES [dbo].[Paquetes] ([Id_paquete])
GO
ALTER TABLE [dbo].[Paq_Via_SucIn_SucFin] CHECK CONSTRAINT [FK_P_V_SI_SF_P]
GO
ALTER TABLE [dbo].[Paq_Via_SucIn_SucFin]  WITH CHECK ADD  CONSTRAINT [FK_P_V_SI_SF_SF] FOREIGN KEY([Id_ciudadfin])
REFERENCES [dbo].[Sucursales] ([Id_ciudad])
GO
ALTER TABLE [dbo].[Paq_Via_SucIn_SucFin] CHECK CONSTRAINT [FK_P_V_SI_SF_SF]
GO
ALTER TABLE [dbo].[Paq_Via_SucIn_SucFin]  WITH CHECK ADD  CONSTRAINT [FK_P_V_SI_SF_SI] FOREIGN KEY([Id_ciudadin])
REFERENCES [dbo].[Sucursales] ([Id_ciudad])
GO
ALTER TABLE [dbo].[Paq_Via_SucIn_SucFin] CHECK CONSTRAINT [FK_P_V_SI_SF_SI]
GO
ALTER TABLE [dbo].[Paq_Via_SucIn_SucFin]  WITH CHECK ADD  CONSTRAINT [FK_P_V_SI_SF_V] FOREIGN KEY([Id_viaje])
REFERENCES [dbo].[Viajes] ([Id_viaje])
GO
ALTER TABLE [dbo].[Paq_Via_SucIn_SucFin] CHECK CONSTRAINT [FK_P_V_SI_SF_V]
GO
ALTER TABLE [dbo].[Via_Suc_Cam_Fun]  WITH CHECK ADD  CONSTRAINT [FK_V_S_C_F_C] FOREIGN KEY([Id_camion])
REFERENCES [dbo].[Camiones] ([Id_camion])
GO
ALTER TABLE [dbo].[Via_Suc_Cam_Fun] CHECK CONSTRAINT [FK_V_S_C_F_C]
GO
ALTER TABLE [dbo].[Via_Suc_Cam_Fun]  WITH CHECK ADD  CONSTRAINT [FK_V_S_C_F_F] FOREIGN KEY([Id_funcionario])
REFERENCES [dbo].[Transportistas] ([Id_funcionario])
GO
ALTER TABLE [dbo].[Via_Suc_Cam_Fun] CHECK CONSTRAINT [FK_V_S_C_F_F]
GO
ALTER TABLE [dbo].[Via_Suc_Cam_Fun]  WITH CHECK ADD  CONSTRAINT [FK_V_S_C_F_S] FOREIGN KEY([Id_ciudad])
REFERENCES [dbo].[Sucursales] ([Id_ciudad])
GO
ALTER TABLE [dbo].[Via_Suc_Cam_Fun] CHECK CONSTRAINT [FK_V_S_C_F_S]
GO
ALTER TABLE [dbo].[Via_Suc_Cam_Fun]  WITH CHECK ADD  CONSTRAINT [FK_V_S_C_F_V] FOREIGN KEY([Id_viaje])
REFERENCES [dbo].[Viajes] ([Id_viaje])
GO
ALTER TABLE [dbo].[Via_Suc_Cam_Fun] CHECK CONSTRAINT [FK_V_S_C_F_V]
GO
USE [master]
GO
ALTER DATABASE [ZetaEnvios] SET  READ_WRITE 
GO
