USE [master]
GO
/****** Object:  Database [Comida Rapida]    Script Date: 14/05/2021 12:14:50 ******/
CREATE DATABASE [Comida Rapida]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Comida Rapida', FILENAME = N'/var/opt/mssql/data/Comida Rapida.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Comida Rapida_log', FILENAME = N'/var/opt/mssql/data/Comida Rapida_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Comida Rapida] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Comida Rapida].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Comida Rapida] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Comida Rapida] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Comida Rapida] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Comida Rapida] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Comida Rapida] SET ARITHABORT OFF 
GO
ALTER DATABASE [Comida Rapida] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Comida Rapida] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Comida Rapida] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Comida Rapida] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Comida Rapida] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Comida Rapida] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Comida Rapida] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Comida Rapida] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Comida Rapida] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Comida Rapida] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Comida Rapida] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Comida Rapida] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Comida Rapida] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Comida Rapida] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Comida Rapida] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Comida Rapida] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Comida Rapida] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Comida Rapida] SET RECOVERY FULL 
GO
ALTER DATABASE [Comida Rapida] SET  MULTI_USER 
GO
ALTER DATABASE [Comida Rapida] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Comida Rapida] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Comida Rapida] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Comida Rapida] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Comida Rapida] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Comida Rapida] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Comida Rapida] SET QUERY_STORE = OFF
GO
USE [Comida Rapida]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 14/05/2021 12:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombreEmpleado] [varchar](50) NULL,
	[apellidosEmpleado] [varchar](50) NULL,
	[dniEmpleado] [varchar](9) NULL,
	[tlfEmpleado] [int] NULL,
	[dirrecionEmpleado] [varchar](50) NULL,
	[correoEmpleado] [varchar](50) NULL,
	[dirigeEmpleado] [int] NULL,
	[idLocalFK] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indoor]    Script Date: 14/05/2021 12:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indoor](
	[idIndoor] [int] NULL,
	[nrepartidoresIndoor] [int] NULL,
	[idLocalFK] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locales]    Script Date: 14/05/2021 12:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locales](
	[idLocal] [int] IDENTITY(1,1) NOT NULL,
	[dirrecionLocal] [varchar](100) NULL,
	[mcuadradosLocal] [decimal](6, 2) NULL,
	[mcuadradococinaLocal] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Locales] PRIMARY KEY CLUSTERED 
(
	[idLocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Outdoor]    Script Date: 14/05/2021 12:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outdoor](
	[idOutdoor] [int] IDENTITY(1,1) NOT NULL,
	[nmesasOutdoor] [int] NULL,
	[aforomaximoOutdoor] [int] NULL,
	[idLocalFK] [int] NULL,
 CONSTRAINT [PK_Outdoor] PRIMARY KEY CLUSTERED 
(
	[idOutdoor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provee]    Script Date: 14/05/2021 12:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provee](
	[idProvee] [int] IDENTITY(1,1) NOT NULL,
	[idLocalFK] [int] NULL,
	[idProveedorFK] [int] NULL,
 CONSTRAINT [PK_Provee] PRIMARY KEY CLUSTERED 
(
	[idProvee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 14/05/2021 12:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[idProveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombreProveedor] [varchar](50) NULL,
	[productosProveedor] [varchar](50) NULL,
	[dirrecionProveedor] [varchar](50) NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([idEmpleado], [nombreEmpleado], [apellidosEmpleado], [dniEmpleado], [tlfEmpleado], [dirrecionEmpleado], [correoEmpleado], [dirigeEmpleado], [idLocalFK]) VALUES (1, N'Alvaro', N'Poco', N'12345678L', 123456789, N'Avd fefe', N'alvaro@gmail.com', NULL, 1)
INSERT [dbo].[Empleado] ([idEmpleado], [nombreEmpleado], [apellidosEmpleado], [dniEmpleado], [tlfEmpleado], [dirrecionEmpleado], [correoEmpleado], [dirigeEmpleado], [idLocalFK]) VALUES (2, N'Paco', N'Pico', N'12345678L', 123456789, N'Avd fefe', N'paco@gmail.com', 1, 1)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
GO
INSERT [dbo].[Indoor] ([idIndoor], [nrepartidoresIndoor], [idLocalFK]) VALUES (NULL, 30, 1)
GO
SET IDENTITY_INSERT [dbo].[Locales] ON 

INSERT [dbo].[Locales] ([idLocal], [dirrecionLocal], [mcuadradosLocal], [mcuadradococinaLocal]) VALUES (1, N'Avd Kanssas City', CAST(50.60 AS Decimal(6, 2)), CAST(10.90 AS Decimal(6, 2)))
INSERT [dbo].[Locales] ([idLocal], [dirrecionLocal], [mcuadradosLocal], [mcuadradococinaLocal]) VALUES (2, N'Calle Fresas', CAST(54.60 AS Decimal(6, 2)), CAST(8.60 AS Decimal(6, 2)))
SET IDENTITY_INSERT [dbo].[Locales] OFF
GO
SET IDENTITY_INSERT [dbo].[Outdoor] ON 

INSERT [dbo].[Outdoor] ([idOutdoor], [nmesasOutdoor], [aforomaximoOutdoor], [idLocalFK]) VALUES (1, 30, 20, 2)
SET IDENTITY_INSERT [dbo].[Outdoor] OFF
GO
SET IDENTITY_INSERT [dbo].[Provee] ON 

INSERT [dbo].[Provee] ([idProvee], [idLocalFK], [idProveedorFK]) VALUES (1, 1, 2)
SET IDENTITY_INSERT [dbo].[Provee] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedores] ON 

INSERT [dbo].[Proveedores] ([idProveedor], [nombreProveedor], [productosProveedor], [dirrecionProveedor]) VALUES (1, N'Juan', N'Lechuga', N'Avd KOKO')
INSERT [dbo].[Proveedores] ([idProveedor], [nombreProveedor], [productosProveedor], [dirrecionProveedor]) VALUES (2, N'Paco', N'Totamte', N'Calle Fidelio')
INSERT [dbo].[Proveedores] ([idProveedor], [nombreProveedor], [productosProveedor], [dirrecionProveedor]) VALUES (3, N'Juan', N'Lechuga', N'Avd KOKO')
INSERT [dbo].[Proveedores] ([idProveedor], [nombreProveedor], [productosProveedor], [dirrecionProveedor]) VALUES (4, N'Paco', N'Totamte', N'Calle Fidelio')
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
GO
ALTER TABLE [dbo].[Indoor]  WITH CHECK ADD  CONSTRAINT [FK_Indoor_Locales] FOREIGN KEY([idLocalFK])
REFERENCES [dbo].[Locales] ([idLocal])
GO
ALTER TABLE [dbo].[Indoor] CHECK CONSTRAINT [FK_Indoor_Locales]
GO
ALTER TABLE [dbo].[Outdoor]  WITH CHECK ADD  CONSTRAINT [idLocalFK1] FOREIGN KEY([idLocalFK])
REFERENCES [dbo].[Locales] ([idLocal])
GO
ALTER TABLE [dbo].[Outdoor] CHECK CONSTRAINT [idLocalFK1]
GO
ALTER TABLE [dbo].[Provee]  WITH CHECK ADD  CONSTRAINT [FK_Provee_Locales] FOREIGN KEY([idLocalFK])
REFERENCES [dbo].[Locales] ([idLocal])
GO
ALTER TABLE [dbo].[Provee] CHECK CONSTRAINT [FK_Provee_Locales]
GO
ALTER TABLE [dbo].[Provee]  WITH CHECK ADD  CONSTRAINT [idProveedorFK2] FOREIGN KEY([idProveedorFK])
REFERENCES [dbo].[Proveedores] ([idProveedor])
GO
ALTER TABLE [dbo].[Provee] CHECK CONSTRAINT [idProveedorFK2]
GO
USE [master]
GO
ALTER DATABASE [Comida Rapida] SET  READ_WRITE 
GO
