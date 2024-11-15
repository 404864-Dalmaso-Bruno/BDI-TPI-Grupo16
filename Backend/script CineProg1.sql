USE [master]
GO
/****** Object:  Database [CineProg1]    Script Date: 14/11/2024 12:17:13 p. m. ******/
CREATE DATABASE [CineProg1]
GO
Use CineProg1
GO
ALTER DATABASE [CineProg1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CineProg1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CineProg1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CineProg1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CineProg1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CineProg1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CineProg1] SET ARITHABORT OFF 
GO
ALTER DATABASE [CineProg1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CineProg1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CineProg1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CineProg1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CineProg1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CineProg1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CineProg1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CineProg1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CineProg1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CineProg1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CineProg1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CineProg1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CineProg1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CineProg1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CineProg1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CineProg1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CineProg1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CineProg1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CineProg1] SET  MULTI_USER 
GO
ALTER DATABASE [CineProg1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CineProg1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CineProg1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CineProg1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CineProg1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CineProg1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CineProg1] SET QUERY_STORE = ON
GO
ALTER DATABASE [CineProg1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CineProg1]
GO
/****** Object:  Table [dbo].[ACTORES]    Script Date: 14/11/2024 12:17:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACTORES](
	[id_actor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[fecha_nac] [date] NULL,
	[id_nacionalidad] [int] NULL,
 CONSTRAINT [PK_ACTORES] PRIMARY KEY CLUSTERED 
(
	[id_actor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BARRIOS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BARRIOS](
	[id_barrio] [int] IDENTITY(1,1) NOT NULL,
	[barrio] [varchar](50) NULL,
 CONSTRAINT [PK_BARRIOS] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BUTACAS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BUTACAS](
	[id_butaca] [int] IDENTITY(1,1) NOT NULL,
	[numero] [varchar](4) NULL,
 CONSTRAINT [PK_BUTACAS] PRIMARY KEY CLUSTERED 
(
	[id_butaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARGOS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARGOS](
	[id_cargo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_CARGOS] PRIMARY KEY CLUSTERED 
(
	[id_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLASIFICACIONES]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLASIFICACIONES](
	[id_clasificacion] [int] IDENTITY(1,1) NOT NULL,
	[clasificacion] [varchar](50) NULL,
 CONSTRAINT [PK_CLASIFICACIONES] PRIMARY KEY CLUSTERED 
(
	[id_clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[documento] [int] NULL,
	[fecha_nac] [date] NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLES_TICKET]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLES_TICKET](
	[id_detalle] [int] NOT NULL,
	[id_ticket] [int] NOT NULL,
	[id_funcion] [int] NULL,
	[id_butaca] [int] NULL,
	[precio_venta] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DETALLES_TICKET] PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC,
	[id_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIRECTORES]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIRECTORES](
	[id_director] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[fecha_nac] [date] NULL,
	[id_nacionalidad] [int] NULL,
 CONSTRAINT [PK_DIRECTORES] PRIMARY KEY CLUSTERED 
(
	[id_director] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADOS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADOS](
	[id_empleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[id_tipo_doc] [int] NULL,
	[documento] [int] NULL,
	[fecha_nac] [date] NULL,
	[id_barrio] [int] NULL,
	[id_cargo] [int] NULL,
	[fecha_alta] [date] NULL,
	[telefono] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_EMPLEADOS] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FORMAS_PAGO]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FORMAS_PAGO](
	[id_forma_pago] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[porcentaje_recargo] [int] NULL,
 CONSTRAINT [PK_FORMAS_PAGO] PRIMARY KEY CLUSTERED 
(
	[id_forma_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FORMATOS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FORMATOS](
	[id_formato] [int] IDENTITY(1,1) NOT NULL,
	[formato] [varchar](200) NULL,
 CONSTRAINT [pk_formato] PRIMARY KEY CLUSTERED 
(
	[id_formato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FUNCIONES]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUNCIONES](
	[id_funcion] [int] IDENTITY(1,1) NOT NULL,
	[id_sala] [int] NULL,
	[id_horario] [int] NULL,
	[id_formato] [int] NULL,
	[estado] [bit] NULL,
	[id_pelicula] [int] NULL,
	[precio] [decimal](18, 0) NULL,
	[fecha_desde] [datetime] NULL,
	[fecha_hasta] [datetime] NULL,
 CONSTRAINT [PK_FUNCIONES] PRIMARY KEY CLUSTERED 
(
	[id_funcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GENEROS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENEROS](
	[id_genero] [int] IDENTITY(1,1) NOT NULL,
	[genero] [varchar](50) NULL,
 CONSTRAINT [PK_GENEROS] PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HORARIOS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HORARIOS](
	[id_horario] [int] IDENTITY(1,1) NOT NULL,
	[horario] [datetime] NULL,
 CONSTRAINT [PK_HORARIOS] PRIMARY KEY CLUSTERED 
(
	[id_horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IDIOMAS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IDIOMAS](
	[id_idioma] [int] IDENTITY(1,1) NOT NULL,
	[idioma] [varchar](200) NULL,
 CONSTRAINT [pk_idioma] PRIMARY KEY CLUSTERED 
(
	[id_idioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGINS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGINS](
	[id_logins] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NULL,
	[contraseña] [varchar](50) NULL,
 CONSTRAINT [PK_LOGINS] PRIMARY KEY CLUSTERED 
(
	[id_logins] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEDIOS_PEDIDO]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEDIOS_PEDIDO](
	[id_medio_pedido] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_MEDIOS_PEDIDO] PRIMARY KEY CLUSTERED 
(
	[id_medio_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NACIONALIDADES]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NACIONALIDADES](
	[id_nacionalidad] [int] IDENTITY(1,1) NOT NULL,
	[nacionalidad] [varchar](50) NULL,
 CONSTRAINT [PK_NACIONALIDADES] PRIMARY KEY CLUSTERED 
(
	[id_nacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PELICULAS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PELICULAS](
	[id_pelicula] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](50) NULL,
	[duracion] [int] NULL,
	[sinopsis] [varchar](300) NULL,
	[id_clasificacion] [int] NULL,
	[id_genero] [int] NULL,
	[id_idioma] [int] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_PELICULAS] PRIMARY KEY CLUSTERED 
(
	[id_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PELICULAS_ACTORES]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PELICULAS_ACTORES](
	[id_pelicula_act] [int] IDENTITY(1,1) NOT NULL,
	[id_pelicula] [int] NULL,
	[id_actor] [int] NULL,
 CONSTRAINT [PK_PELICULAS_ACTORES] PRIMARY KEY CLUSTERED 
(
	[id_pelicula_act] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PELICULAS_DIRECTORES]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PELICULAS_DIRECTORES](
	[id_pelicula_direct] [int] IDENTITY(1,1) NOT NULL,
	[id_pelicula] [int] NULL,
	[id_director] [int] NULL,
 CONSTRAINT [PK_PELICULAS_DIRECTORES] PRIMARY KEY CLUSTERED 
(
	[id_pelicula_direct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROMOCIONES]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROMOCIONES](
	[id_promocion] [int] IDENTITY(1,1) NOT NULL,
	[fecha_desde] [datetime] NULL,
	[fecha_hasta] [datetime] NULL,
	[procentaje_descuento] [int] NULL,
 CONSTRAINT [PK_PROMOCIONES] PRIMARY KEY CLUSTERED 
(
	[id_promocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESERVADAS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESERVADAS](
	[id_reserva] [int] IDENTITY(1,1) NOT NULL,
	[id_butaca] [int] NULL,
	[id_funcion] [int] NULL,
 CONSTRAINT [pk_Reservadas] PRIMARY KEY CLUSTERED 
(
	[id_reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SALAS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALAS](
	[id_sala] [int] IDENTITY(1,1) NOT NULL,
	[nro_sala] [int] NULL,
	[id_tipo_sala] [int] NULL,
 CONSTRAINT [PK_SALAS] PRIMARY KEY CLUSTERED 
(
	[id_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TICKETS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TICKETS](
	[id_ticket] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[id_cliente] [int] NULL,
	[id_empleado] [int] NULL,
	[id_medio_pedido] [int] NULL,
	[id_promocion] [int] NULL,
	[id_forma_pago] [int] NULL,
	[total] [decimal](18, 0) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_TICKETS] PRIMARY KEY CLUSTERED 
(
	[id_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOS_DOC]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOS_DOC](
	[id_tipo_doc] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](50) NULL,
 CONSTRAINT [PK_TIPOS_DOC] PRIMARY KEY CLUSTERED 
(
	[id_tipo_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOS_SALAS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOS_SALAS](
	[id_tipo_sala] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](50) NULL,
 CONSTRAINT [PK_TIPOS_SALAS] PRIMARY KEY CLUSTERED 
(
	[id_tipo_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ACTORES]  WITH CHECK ADD  CONSTRAINT [FK_ACTORES_NACIONALIDADES] FOREIGN KEY([id_nacionalidad])
REFERENCES [dbo].[NACIONALIDADES] ([id_nacionalidad])
GO
ALTER TABLE [dbo].[ACTORES] CHECK CONSTRAINT [FK_ACTORES_NACIONALIDADES]
GO
ALTER TABLE [dbo].[DETALLES_TICKET]  WITH CHECK ADD  CONSTRAINT [fk_butacas] FOREIGN KEY([id_butaca])
REFERENCES [dbo].[BUTACAS] ([id_butaca])
GO
ALTER TABLE [dbo].[DETALLES_TICKET] CHECK CONSTRAINT [fk_butacas]
GO
ALTER TABLE [dbo].[DETALLES_TICKET]  WITH CHECK ADD  CONSTRAINT [FK_DETALLES_TICKET_FUNCIONES] FOREIGN KEY([id_funcion])
REFERENCES [dbo].[FUNCIONES] ([id_funcion])
GO
ALTER TABLE [dbo].[DETALLES_TICKET] CHECK CONSTRAINT [FK_DETALLES_TICKET_FUNCIONES]
GO
ALTER TABLE [dbo].[DETALLES_TICKET]  WITH CHECK ADD  CONSTRAINT [FK_DETALLES_TICKET_TICKETS] FOREIGN KEY([id_ticket])
REFERENCES [dbo].[TICKETS] ([id_ticket])
GO
ALTER TABLE [dbo].[DETALLES_TICKET] CHECK CONSTRAINT [FK_DETALLES_TICKET_TICKETS]
GO
ALTER TABLE [dbo].[DIRECTORES]  WITH CHECK ADD  CONSTRAINT [FK_DIRECTORES_NACIONALIDADES] FOREIGN KEY([id_nacionalidad])
REFERENCES [dbo].[NACIONALIDADES] ([id_nacionalidad])
GO
ALTER TABLE [dbo].[DIRECTORES] CHECK CONSTRAINT [FK_DIRECTORES_NACIONALIDADES]
GO
ALTER TABLE [dbo].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADOS_BARRIOS] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[BARRIOS] ([id_barrio])
GO
ALTER TABLE [dbo].[EMPLEADOS] CHECK CONSTRAINT [FK_EMPLEADOS_BARRIOS]
GO
ALTER TABLE [dbo].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADOS_CARGOS] FOREIGN KEY([id_cargo])
REFERENCES [dbo].[CARGOS] ([id_cargo])
GO
ALTER TABLE [dbo].[EMPLEADOS] CHECK CONSTRAINT [FK_EMPLEADOS_CARGOS]
GO
ALTER TABLE [dbo].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADOS_TIPOS_DOC] FOREIGN KEY([id_tipo_doc])
REFERENCES [dbo].[TIPOS_DOC] ([id_tipo_doc])
GO
ALTER TABLE [dbo].[EMPLEADOS] CHECK CONSTRAINT [FK_EMPLEADOS_TIPOS_DOC]
GO
ALTER TABLE [dbo].[FUNCIONES]  WITH CHECK ADD  CONSTRAINT [fk_formato] FOREIGN KEY([id_formato])
REFERENCES [dbo].[FORMATOS] ([id_formato])
GO
ALTER TABLE [dbo].[FUNCIONES] CHECK CONSTRAINT [fk_formato]
GO
ALTER TABLE [dbo].[FUNCIONES]  WITH CHECK ADD  CONSTRAINT [FK_FUNCIONES_HORARIOS] FOREIGN KEY([id_horario])
REFERENCES [dbo].[HORARIOS] ([id_horario])
GO
ALTER TABLE [dbo].[FUNCIONES] CHECK CONSTRAINT [FK_FUNCIONES_HORARIOS]
GO
ALTER TABLE [dbo].[FUNCIONES]  WITH CHECK ADD  CONSTRAINT [FK_FUNCIONES_PELICULAS] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[PELICULAS] ([id_pelicula])
GO
ALTER TABLE [dbo].[FUNCIONES] CHECK CONSTRAINT [FK_FUNCIONES_PELICULAS]
GO
ALTER TABLE [dbo].[FUNCIONES]  WITH CHECK ADD  CONSTRAINT [FK_FUNCIONES_SALAS] FOREIGN KEY([id_sala])
REFERENCES [dbo].[SALAS] ([id_sala])
GO
ALTER TABLE [dbo].[FUNCIONES] CHECK CONSTRAINT [FK_FUNCIONES_SALAS]
GO
ALTER TABLE [dbo].[PELICULAS]  WITH CHECK ADD  CONSTRAINT [fk_idiomas] FOREIGN KEY([id_idioma])
REFERENCES [dbo].[IDIOMAS] ([id_idioma])
GO
ALTER TABLE [dbo].[PELICULAS] CHECK CONSTRAINT [fk_idiomas]
GO
ALTER TABLE [dbo].[PELICULAS]  WITH CHECK ADD  CONSTRAINT [FK_PELICULAS_CLASIFICACIONES] FOREIGN KEY([id_clasificacion])
REFERENCES [dbo].[CLASIFICACIONES] ([id_clasificacion])
GO
ALTER TABLE [dbo].[PELICULAS] CHECK CONSTRAINT [FK_PELICULAS_CLASIFICACIONES]
GO
ALTER TABLE [dbo].[PELICULAS]  WITH CHECK ADD  CONSTRAINT [FK_PELICULAS_GENEROS] FOREIGN KEY([id_genero])
REFERENCES [dbo].[GENEROS] ([id_genero])
GO
ALTER TABLE [dbo].[PELICULAS] CHECK CONSTRAINT [FK_PELICULAS_GENEROS]
GO
ALTER TABLE [dbo].[PELICULAS_ACTORES]  WITH CHECK ADD  CONSTRAINT [FK_PELICULAS_ACTORES_ACTORES] FOREIGN KEY([id_actor])
REFERENCES [dbo].[ACTORES] ([id_actor])
GO
ALTER TABLE [dbo].[PELICULAS_ACTORES] CHECK CONSTRAINT [FK_PELICULAS_ACTORES_ACTORES]
GO
ALTER TABLE [dbo].[PELICULAS_ACTORES]  WITH CHECK ADD  CONSTRAINT [FK_PELICULAS_ACTORES_PELICULAS] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[PELICULAS] ([id_pelicula])
GO
ALTER TABLE [dbo].[PELICULAS_ACTORES] CHECK CONSTRAINT [FK_PELICULAS_ACTORES_PELICULAS]
GO
ALTER TABLE [dbo].[PELICULAS_DIRECTORES]  WITH CHECK ADD  CONSTRAINT [FK_PELICULAS_DIRECTORES_DIRECTORES] FOREIGN KEY([id_director])
REFERENCES [dbo].[DIRECTORES] ([id_director])
GO
ALTER TABLE [dbo].[PELICULAS_DIRECTORES] CHECK CONSTRAINT [FK_PELICULAS_DIRECTORES_DIRECTORES]
GO
ALTER TABLE [dbo].[PELICULAS_DIRECTORES]  WITH CHECK ADD  CONSTRAINT [FK_PELICULAS_DIRECTORES_PELICULAS] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[PELICULAS] ([id_pelicula])
GO
ALTER TABLE [dbo].[PELICULAS_DIRECTORES] CHECK CONSTRAINT [FK_PELICULAS_DIRECTORES_PELICULAS]
GO
ALTER TABLE [dbo].[RESERVADAS]  WITH CHECK ADD  CONSTRAINT [fk_butaca] FOREIGN KEY([id_butaca])
REFERENCES [dbo].[BUTACAS] ([id_butaca])
GO
ALTER TABLE [dbo].[RESERVADAS] CHECK CONSTRAINT [fk_butaca]
GO
ALTER TABLE [dbo].[RESERVADAS]  WITH CHECK ADD  CONSTRAINT [fk_funcion] FOREIGN KEY([id_funcion])
REFERENCES [dbo].[FUNCIONES] ([id_funcion])
GO
ALTER TABLE [dbo].[RESERVADAS] CHECK CONSTRAINT [fk_funcion]
GO
ALTER TABLE [dbo].[SALAS]  WITH CHECK ADD  CONSTRAINT [FK_SALAS_TIPOS_SALAS] FOREIGN KEY([id_tipo_sala])
REFERENCES [dbo].[TIPOS_SALAS] ([id_tipo_sala])
GO
ALTER TABLE [dbo].[SALAS] CHECK CONSTRAINT [FK_SALAS_TIPOS_SALAS]
GO
ALTER TABLE [dbo].[TICKETS]  WITH CHECK ADD  CONSTRAINT [FK_TICKETS_CLIENTES] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[CLIENTES] ([id_cliente])
GO
ALTER TABLE [dbo].[TICKETS] CHECK CONSTRAINT [FK_TICKETS_CLIENTES]
GO
ALTER TABLE [dbo].[TICKETS]  WITH CHECK ADD  CONSTRAINT [FK_TICKETS_EMPLEADOS] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[EMPLEADOS] ([id_empleado])
GO
ALTER TABLE [dbo].[TICKETS] CHECK CONSTRAINT [FK_TICKETS_EMPLEADOS]
GO
ALTER TABLE [dbo].[TICKETS]  WITH CHECK ADD  CONSTRAINT [FK_TICKETS_FORMASP] FOREIGN KEY([id_forma_pago])
REFERENCES [dbo].[FORMAS_PAGO] ([id_forma_pago])
GO
ALTER TABLE [dbo].[TICKETS] CHECK CONSTRAINT [FK_TICKETS_FORMASP]
GO
ALTER TABLE [dbo].[TICKETS]  WITH CHECK ADD  CONSTRAINT [FK_TICKETS_MEDIOS_PEDIDO] FOREIGN KEY([id_medio_pedido])
REFERENCES [dbo].[MEDIOS_PEDIDO] ([id_medio_pedido])
GO
ALTER TABLE [dbo].[TICKETS] CHECK CONSTRAINT [FK_TICKETS_MEDIOS_PEDIDO]
GO
ALTER TABLE [dbo].[TICKETS]  WITH CHECK ADD  CONSTRAINT [FK_TICKETS_PROMOCIONES] FOREIGN KEY([id_promocion])
REFERENCES [dbo].[PROMOCIONES] ([id_promocion])
GO
ALTER TABLE [dbo].[TICKETS] CHECK CONSTRAINT [FK_TICKETS_PROMOCIONES]
GO
/****** Object:  StoredProcedure [dbo].[InsertarLogin]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarLogin]
    @usuario VARCHAR(50),
    @contraseña VARCHAR(50)
AS
BEGIN
    INSERT INTO LOGINS (usuario, contraseña)
    VALUES (@usuario, @contraseña);
END;

EXEC InsertarLogin @usuario = 'juanperez', @contraseña = '12345';
GO
/****** Object:  StoredProcedure [dbo].[SP_01_Listar_ClientesConTickets]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_01_Listar_ClientesConTickets]
    @minTickets INT = 1  -- Parámetro opcional para especificar la cantidad mínima de tickets
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        c.nombre + ' ' + c.apellido AS Cliente,
        COUNT(t.id_ticket) AS CantidadTickets
    FROM 
        CLIENTES c
    JOIN 
        TICKETS t ON c.id_cliente = t.id_cliente
    GROUP BY 
        c.nombre + ' ' + c.apellido
    HAVING 
        COUNT(t.id_ticket) >= @minTickets;  -- Filtra según el parámetro mínimo de tickets
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_02_Listar_PeliculasConMasFunciones]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[SP_02_Listar_PeliculasConMasFunciones]
    @topN INT = NULL  -- Parámetro opcional para limitar el número de resultados
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        p.titulo AS Pelicula,
        COUNT(f.id_funcion) AS CantidadFunciones
    FROM 
        PELICULAS p
    JOIN 
        FUNCIONES f ON p.id_pelicula = f.id_pelicula
    GROUP BY 
        p.titulo
    ORDER BY 
        CantidadFunciones DESC;

    -- Limitar el número de resultados si @topN tiene un valor específico
    IF @topN IS NOT NULL
    BEGIN
        SET ROWCOUNT @topN;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_03_TotalVentasPorEmpleado]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_03_TotalVentasPorEmpleado]
    @minVentas INT = 0  -- Parámetro opcional para especificar el mínimo de ventas a mostrar
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        e.nombre AS Nombre,
        e.apellido AS Apellido,
        COUNT(D.precio_venta) AS NroDeVentas
    FROM 
        EMPLEADOS e
    JOIN 
        TICKETS t ON e.id_empleado = t.id_empleado
    JOIN 
        DETALLES_TICKET D ON t.id_ticket = D.id_ticket
    GROUP BY 
        e.id_empleado, e.nombre, e.apellido
    HAVING 
        COUNT(D.precio_venta) >= @minVentas  -- Filtra empleados según el mínimo de ventas
    ORDER BY 
        NroDeVentas DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_04_Promociones_UtilizadasEn2024]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_04_Promociones_UtilizadasEn2024]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        p.id_promocion AS CodigoPromo,
        p.fecha_desde AS InicioPromo,
        p.fecha_hasta AS FinPromo,
        COUNT(t.id_ticket) AS NroDeUsos
    FROM 
        PROMOCIONES p
    JOIN 
        TICKETS t ON p.id_promocion = t.id_promocion
    WHERE 
        p.fecha_desde >= '2024-01-01' 
        AND p.fecha_hasta <= '2024-12-31'
    GROUP BY 
        p.id_promocion, p.fecha_desde, p.fecha_hasta;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_05_ClientesSinCompras]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_05_ClientesSinCompras]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        c.nombre + ' ' + c.apellido AS Cliente
    FROM 
        CLIENTES c
    WHERE 
        NOT EXISTS (
            SELECT 1
            FROM TICKETS t
            WHERE t.id_cliente = c.id_cliente
        );
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_06_PeliculasSinFunciones]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_06_PeliculasSinFunciones]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        p.titulo AS Pelicula
    FROM 
        PELICULAS p
    WHERE 
        NOT EXISTS (
            SELECT 1
            FROM FUNCIONES f
            WHERE f.id_pelicula = p.id_pelicula
        );
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_07_HorariosConMasFunciones]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_07_HorariosConMasFunciones]
    @topN INT = NULL  -- Parámetro opcional para limitar el número de resultados
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        CONVERT(VARCHAR(2), DATEPART(HOUR, h.horario)) + ':' + 
        RIGHT('00' + CONVERT(VARCHAR(2), DATEPART(MINUTE, h.horario)), 2) AS Horario,
        COUNT(f.id_funcion) AS CantidadFunciones
    FROM 
        HORARIOS h
    JOIN 
        FUNCIONES f ON h.id_horario = f.id_horario
    GROUP BY 
        CONVERT(VARCHAR(2), DATEPART(HOUR, h.horario)) + ':' + 
        RIGHT('00' + CONVERT(VARCHAR(2), DATEPART(MINUTE, h.horario)), 2)
    ORDER BY 
        CantidadFunciones DESC;

    -- Limitar el número de resultados si @topN tiene un valor específico
    IF @topN IS NOT NULL
    BEGIN
        SET ROWCOUNT @topN;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_08_TotalEntradasVendidasPorPelicula]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_08_TotalEntradasVendidasPorPelicula]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        p.titulo AS Pelicula,
        COUNT(dt.precio_venta) AS NroDeVentas
    FROM 
        PELICULAS p
    JOIN 
        FUNCIONES f ON p.id_pelicula = f.id_pelicula
    JOIN 
        DETALLES_TICKET dt ON f.id_funcion = dt.id_funcion
    GROUP BY 
        p.titulo
    ORDER BY 
        NroDeVentas DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_09_ClientesConGastoMayorA]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_09_ClientesConGastoMayorA]
    @montoMinimo DECIMAL(18, 2)  -- Parámetro para especificar el monto mínimo de gasto
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        c.nombre + ' ' + c.apellido AS Cliente,
        SUM(dt.precio_venta) AS TotalGastado
    FROM 
        CLIENTES c
    JOIN 
        TICKETS t ON c.id_cliente = t.id_cliente
    JOIN 
        DETALLES_TICKET dt ON t.id_ticket = dt.id_ticket
    GROUP BY 
        c.nombre + ' ' + c.apellido
    HAVING 
        SUM(dt.precio_venta) > @montoMinimo  -- Filtra clientes con gasto mayor al monto especificado
    ORDER BY 
        TotalGastado DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_10_HistoricoSalasConMasButacasReservadas]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_10_HistoricoSalasConMasButacasReservadas]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        S.id_sala,
        S.nro_sala AS NumeroSala,
        COUNT(R.id_reserva) AS NroDeButacasReservadas
    FROM 
        SALAS S
    JOIN 
        FUNCIONES F ON S.id_sala = F.id_sala
    JOIN 
        RESERVADAS R ON F.id_funcion = R.id_funcion
    GROUP BY 
        S.id_sala, S.nro_sala
    ORDER BY 
        NroDeButacasReservadas DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_BAJA_FUNCION]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[SP_BAJA_FUNCION]
@id_funcion int 
as
begin
update funciones set estado = 0
where id_funcion = @id_funcion
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_BAJA_PELICULA]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_BAJA_PELICULA]
@id_pelicula int 
as
begin
update PELICULAS set estado = 0
where id_pelicula = @id_pelicula
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_BAJA_TICKET]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_BAJA_TICKET]
@id_ticket int
as
begin
update TICKETS set estado = 0 where id_ticket = @id_ticket
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_BUTACAS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_CONSULTAR_BUTACAS]
as
BEGIN
select * from BUTACAS
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_CLASIFICACIONES]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--OK--------------------------SP



--EXTRAS
create procedure [dbo].[SP_CONSULTAR_CLASIFICACIONES]
AS
BEGIN
	SELECT * FROM CLASIFICACIONES
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_CLIENTES]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create proc [dbo].[SP_CONSULTAR_CLIENTES]
as
BEGIN
select id_cliente ID, nombre+' '+apellido Nombre from CLIENTES
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_DETALLE_TICKET]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[SP_CONSULTAR_DETALLE_TICKET]
	@id_ticket int
AS
BEGIN
	SELECT D.*, B.*, fo.formato, s.*, p.titulo, t.total, t.fecha, p.id_pelicula,
			cl.nombre +' '+ cl.apellido 'cliente', H.*, C.*, i.*, g.*
	FROM DETALLES_TICKET D
	JOIN BUTACAS B ON B.id_butaca = D.id_butaca
	JOIN FUNCIONES F ON F.id_funcion = D.id_funcion
	JOIN HORARIOS H ON H.id_horario = F.id_horario
	JOIN FORMATOS FO ON FO.id_formato = f.id_formato
	join SALAS S ON S.id_sala = F.id_sala
	JOIN PELICULAS P ON P.id_pelicula = F.id_pelicula
	JOIN CLASIFICACIONES C ON C.id_clasificacion = P.id_clasificacion
	JOIN IDIOMAS I ON I.id_idioma = P.id_idioma
	JOIN GENEROS G ON G.id_genero = P.id_genero
	JOIN TICKETS T ON T.id_ticket = d.id_ticket
	join CLIENTES CL on T.id_cliente = cl.id_cliente
	AND T.id_ticket = @id_ticket
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_FUNCIONES]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-------------------------------------------FUNCIONES
create procedure [dbo].[SP_CONSULTAR_FUNCIONES]
as
begin
select * from FUNCIONES where estado = 1 order by id_funcion desc
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_FUNCIONES_FILTROS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_CONSULTAR_FUNCIONES_FILTROS]
@id_funcion int,
@desde datetime,
@hasta datetime
as
BEGIN
select f.id_funcion 'Numero de funcion',titulo Pelicula, nro_sala Sala,tipo 'Tipo de sala',horario Horario, fecha_desde 'Fecha desde', fecha_hasta 'Fecha hasta', precio Precio
from FUNCIONES f join PELICULAS p on p.id_pelicula = f.id_pelicula
join SALAS s on s.id_sala = f.id_sala
join Horarios h on h.id_horario = f.id_horario
join TIPOS_SALAS ts on ts.id_tipo_sala = s.id_tipo_sala
where (f.id_funcion = @id_funcion or (fecha_desde >= @desde and fecha_hasta <= @hasta)) and f.estado = 1
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_FUNCIONES_ID]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[SP_CONSULTAR_FUNCIONES_ID]
@IDFUNCION INT
AS
BEGIN
	SELECT * FROM FUNCIONES WHERE id_funcion = @IDFUNCION
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_GENEROS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[SP_CONSULTAR_GENEROS]
AS
BEGIN
	SELECT * FROM GENEROS
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_HORARIOS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_CONSULTAR_HORARIOS]
as
BEGIN
select * from HORARIOS
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_IDIOMAS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_CONSULTAR_IDIOMAS]
AS
BEGIN
	SELECT * FROM IDIOMAS
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_MEDIOS_PEDIDOS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_CONSULTAR_MEDIOS_PEDIDOS]
as
BEGIN
select * from MEDIOS_PEDIDO
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_PELICULA_ID]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_CONSULTAR_PELICULA_ID]
@id_pelicula int
as
begin
select P.*, titulo Titulo, sinopsis Sinopsis,clasificacion Clasificacion, genero Genero, idioma Idioma 
from PELICULAS p
join GENEROS g on g.id_genero = p.id_genero
join IDIOMAS i on i.id_idioma = p.id_idioma
join CLASIFICACIONES c on c.id_clasificacion = p.id_clasificacion
where id_pelicula = @id_pelicula
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_PELICULAS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_CONSULTAR_PELICULAS]
@titulo varchar(200),
@sinopsis varchar(200),
@id_genero int,
@id_idioma int
as
begin
select P.*, titulo Titulo, sinopsis Sinopsis,clasificacion Clasificacion, genero Genero, idioma Idioma 
from PELICULAS p
join GENEROS g on g.id_genero = p.id_genero
join IDIOMAS i on i.id_idioma = p.id_idioma
join CLASIFICACIONES c on c.id_clasificacion = p.id_clasificacion
where estado = 1
AND (titulo like '%'+ @titulo +'%' OR @titulo IS NULL)
AND (sinopsis like '%'+ @sinopsis +'%' OR @sinopsis IS NULL)
AND (p.id_genero = @id_genero OR @id_genero IS NULL)
AND (p.id_idioma = @id_idioma OR @id_idioma IS NULL)
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_PELICULAS_DTO]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


----------------------------------------------------PELICULAS

CREATE PROCEDURE [dbo].[SP_CONSULTAR_PELICULAS_DTO]
AS
BEGIN
	select id_pelicula ID, titulo Titulo, duracion Duracion, 
	clasificacion Clasificacion, genero Genero, idioma Idioma, estado Estado
from PELICULAS p
join GENEROS g on g.id_genero = p.id_genero
join IDIOMAS i on i.id_idioma = p.id_idioma
join CLASIFICACIONES c on c.id_clasificacion = p.id_clasificacion
order by titulo
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_PELICULAS_SIN_FILTRO]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_CONSULTAR_PELICULAS_SIN_FILTRO]
as
begin
select P.*, titulo Titulo, sinopsis Sinopsis,clasificacion Clasificacion, genero Genero, idioma Idioma 
from PELICULAS p
join GENEROS g on g.id_genero = p.id_genero
join IDIOMAS i on i.id_idioma = p.id_idioma
join CLASIFICACIONES c on c.id_clasificacion = p.id_clasificacion
WHERE estado = 1
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_PROMOCIONES]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[SP_CONSULTAR_PROMOCIONES]
as
BEGIN
select id_promocion, procentaje_descuento from PROMOCIONES
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_SALAS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------


create proc [dbo].[SP_CONSULTAR_SALAS]
as
BEGIN
select * from SALAS
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_TICKETS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-------------------------------------------TICKET

create PROCEDURE [dbo].[SP_CONSULTAR_TICKETS]
	@fecha_desde Datetime,
	@fecha_hasta Datetime,
	@cliente varchar(50),
	@empleado varchar(50),
	@pelicula varchar(50)
AS
BEGIN
	SELECT t.id_ticket, c.nombre +' '+ c.apellido 'Nombre cliente',
			e.nombre +' '+ e.apellido 'Nombre empleado', p.titulo, t.total, t.fecha
	FROM TICKETS T
	join CLIENTES C on T.id_cliente = c.id_cliente
	join EMPLEADOS E on e.id_empleado = t.id_empleado
	join DETALLES_TICKET dt on dt.id_ticket = t.id_ticket
	join FUNCIONES f on f.id_funcion = dt.id_funcion
	join PELICULAS p on p.id_pelicula = f.id_pelicula
	WHERE (@fecha_desde is null OR fecha >= @fecha_desde)
	AND (@fecha_hasta is null OR fecha <= @fecha_hasta)
	AND (@cliente is null OR c.nombre + c.apellido LIKE '%' + @cliente + '%')
	AND (@empleado is null OR e.nombre + e.apellido LIKE '%' + @empleado + '%')
	AND (@pelicula is null or p.titulo LIKE '%' + @pelicula + '%' );
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSUTAR_FORMAS_PAGO]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_CONSUTAR_FORMAS_PAGO]
AS
BEGIN
SELECT * FROM FORMAS_PAGO
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_GET_TICKETS_FILTROS]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_GET_TICKETS_FILTROS]
@id int,
@fecha datetime,
@cliente varchar(200)
as
BEGIN
select id_ticket 'Numero de ticket', nombre+' '+apellido Cliente, fecha Fecha from TICKETS t
join clientes c on c.id_cliente = t.id_cliente
where (id_ticket = @id or fecha = @fecha or nombre+' '+apellido = @cliente) and estado = 1
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_DETALLE]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[SP_INSERTAR_DETALLE]
@id_detalle int,
@id_ticket int,
@id_funcion int,
@id_butaca int,
@precio_venta money
as
begin
insert into DETALLES_TICKET(id_detalle, id_ticket,id_funcion,id_butaca,precio_venta) 
values(@id_detalle, @id_ticket,@id_funcion,@id_butaca,@precio_venta);
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_FUNCION]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_INSERTAR_FUNCION]
@id_sala int,
@id_pelicula int,
@precio money,
@fecha_desde datetime,
@fecha_hasta datetime,
@id_horario int
as
begin
insert into funciones(id_sala, estado, id_pelicula, precio, fecha_desde, fecha_hasta, id_horario, id_formato) 
values (@id_sala,1,@id_pelicula,@precio,@fecha_desde,@fecha_hasta,@id_horario, 3)
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_TICKET]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_INSERTAR_TICKET]
    @nuevo_id_ticket INT OUTPUT,
    @fecha DATETIME,
    @id_cliente INT,
	@id_empleado INT,
    @id_medio_pedido INT,
    @id_promocion INT,
    @total MONEY,
    @id_forma_pago INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO TICKETS (fecha, id_cliente,id_empleado, id_medio_pedido, id_promocion, total, estado, id_forma_pago)
        VALUES (@fecha, @id_cliente,@id_empleado, @id_medio_pedido, @id_promocion, @total, 1, @id_forma_pago);

        SET @nuevo_id_ticket = SCOPE_IDENTITY();

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_MODIFICAR_PELICULA]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[SP_MODIFICAR_PELICULA]
@id_pelicula int,
@titulo varchar(200),
@duracion int,
@sinopsis varchar(400),
@id_clasificacion int,
@id_genero int,
@id_idioma int
as
begin
update PELICULAS set titulo = @titulo, duracion = @duracion, sinopsis = @sinopsis, id_clasificacion = @id_clasificacion, id_genero = @id_genero, id_idioma = @id_idioma
where id_pelicula = @id_pelicula
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_NUEVA_PELICULA]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[SP_NUEVA_PELICULA]
@titulo varchar(200),
@duracion int,
@sinopsis varchar(400),
@id_clasificacion int,
@id_genero int,
@id_idioma int
as
BEGIN
    -- Manejo de errores
    BEGIN TRY
        -- Verificar si el título ya existe
        IF EXISTS (SELECT 1 FROM PELICULAS WHERE titulo = @titulo)
        BEGIN
            RAISERROR('El título de la película ya existe.', 16, 1);
            RETURN;
        END

        -- Insertar la nueva película
        INSERT INTO PELICULAS (titulo, duracion, sinopsis, id_clasificacion, id_genero, id_idioma, estado)
        VALUES (@titulo, @duracion, @sinopsis, @id_clasificacion, @id_genero, @id_idioma, 1);
    END TRY
    BEGIN CATCH
        -- Manejo de errores en caso de fallo
        DECLARE @ErrorMessage NVARCHAR(400), @ErrorSeverity INT, @ErrorState INT;

        SELECT 
            @ErrorMessage = ERROR_MESSAGE(), 
            @ErrorSeverity = ERROR_SEVERITY(), 
            @ErrorState = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_PROXIMO_ID]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[SP_PROXIMO_ID]
@next int OUTPUT
AS
BEGIN
	SET @next = (SELECT MAX(id_ticket)+1  FROM TICKETS);
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATE_FUNCION]    Script Date: 14/11/2024 12:17:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[SP_UPDATE_FUNCION]
@id_funcion int,
@id_sala int,
@id_pelicula int,
@precio money,
@fecha_desde datetime,
@fecha_hasta datetime,
@id_horario int
as
begin
update funciones set id_sala = @id_sala, id_pelicula = @id_pelicula, precio = @precio, fecha_desde = @fecha_desde, fecha_hasta = fecha_hasta, id_horario = @id_horario
where id_funcion = @id_funcion
end;
GO


-- INSERTS

INSERT INTO PROMOCIONES VALUES ('2023-09-01', '2023-09-15', 20);
INSERT INTO PROMOCIONES VALUES ('2023-10-01', '2023-10-31', 15);
INSERT INTO PROMOCIONES VALUES ('2023-11-01', '2023-11-30', 10);
INSERT INTO PROMOCIONES VALUES ('2023-12-01', '2023-12-31', 25);
INSERT INTO PROMOCIONES VALUES ('2024-01-01', '2024-01-15', 30);

INSERT INTO CLIENTES (nombre, apellido, fecha_nac, email) VALUES 
('Maria', 'Gonzalez', '1990-05-15', 'maria@example.com'),
 ('Juan', 'Perez', '1985-12-10', 'juan@example.com'),
 ('Luis', 'Torres', '1995-03-22', 'luis@example.com'),
 ('Ana', 'Rodriguez', '1998-07-01', 'ana@example.com'),
 ('Diego', 'Lopez', '1980-09-30', 'diego@example.com'),
('Juan', 'Gomez', '1990-05-15', 'juan.gomez@example.com'),
('Ana', 'Lopez', '1985-08-23', 'ana.lopez@example.com'),
('Carlos', 'Rodriguez', '1992-02-10', 'carlos.rodriguez@example.com'),
('Maria', 'Martinez', '1988-11-30', 'maria.martinez@example.com'),
('Pablo', 'Fernandez', '1995-07-18', 'pablo.fernandez@example.com'),
('Laura', 'Garcia', '1993-04-05', 'laura.garcia@example.com'),
('Diego', 'Sanchez', '1987-09-12', 'diego.sanchez@example.com'),
('Sofia', 'Diaz', '1991-01-28', 'sofia.diaz@example.com'),
('Alejandro', 'Perez', '1986-06-20', 'alejandro.perez@example.com'),
('Elena', 'Torres', '1994-03-08', 'elena.torres@example.com'),
('Victor', 'Ruiz', '1989-12-14', 'victor.ruiz@example.com'),
('Carmen', 'Navarro', '1996-10-02', 'carmen.navarro@example.com'),
('Javier', 'Jimenez', '1984-07-25', 'javier.jimenez@example.com'),
('Isabel', 'Luna', '1997-04-17', 'isabel.luna@example.com'),
('Adrian', 'Hernandez', '1998-09-05', 'adrian.hernandez@example.com'),
('Lucia', 'Gutierrez', '1983-11-11', 'lucia.gutierrez@example.com'),
('Marcos', 'Molina', '1999-06-28', 'marcos.molina@example.com'),
('Natalia', 'Castro', '1982-08-03', 'natalia.castro@example.com'),
('Hugo', 'Vargas', '2000-01-20', 'hugo.vargas@example.com'),
('Clara', 'Romero', '1981-12-09', 'clara.romero@example.com'),
('Pedro', 'Alvarez', '2001-03-15', 'pedro.alvarez@example.com'),
('Luisa', 'Serrano', '1980-04-22', 'luisa.serrano@example.com'),
('Roberto', 'Ortega', '2002-07-10', 'roberto.ortega@example.com'),
('Ana Maria', 'Flores', '1979-09-18', 'ana.flores@example.com');

INSERT INTO TIPOS_DOC (tipo) VALUES ('DNI');
INSERT INTO TIPOS_DOC (tipo) VALUES ('Pasaporte');
INSERT INTO TIPOS_DOC (tipo) VALUES ('Cedula de Ciudadania');
INSERT INTO TIPOS_DOC (tipo) VALUES ('Licencia de Conducir');
INSERT INTO TIPOS_DOC (tipo) VALUES ('Tarjeta de Residencia');

INSERT INTO BARRIOS (barrio) VALUES ('Centro');
INSERT INTO BARRIOS (barrio) VALUES ('Nueva Cordoba');
INSERT INTO BARRIOS (barrio) VALUES ('Guemes');
INSERT INTO BARRIOS (barrio) VALUES ('Alta Cordoba');
INSERT INTO BARRIOS (barrio) VALUES ('Chateu');

INSERT INTO CARGOS (descripcion) VALUES ('Gerente');
INSERT INTO CARGOS (descripcion) VALUES ('Cajero');
INSERT INTO CARGOS (descripcion) VALUES ('Vendedor');
INSERT INTO CARGOS (descripcion) VALUES ('User');
INSERT INTO CARGOS (descripcion) VALUES ('Proyeccionista');
--
INSERT INTO EMPLEADOS (nombre, apellido, id_tipo_doc, documento, fecha_nac, id_barrio, id_cargo, fecha_alta, telefono, email) 
VALUES ('Maria', 'Martinez', 1, 12345678, '1980-04-20', 1, 1, '2021-02-01', '555-1234', 'maria@gmail.com');
INSERT INTO EMPLEADOS (nombre, apellido, id_tipo_doc, documento, fecha_nac, id_barrio, id_cargo, fecha_alta, telefono, email) 
VALUES ('Martin', 'Polliotto', 2, 87654321, '1982-04-17', 2, 2, '2021-06-03', '555-5678', 'martin@polliotto.com');
INSERT INTO EMPLEADOS (nombre, apellido, id_tipo_doc, documento, fecha_nac, id_barrio, id_cargo, fecha_alta, telefono, email) 
VALUES ('David', 'Alonso', 3, 11223344, '1990-09-02', 3, 3, '2021-08-10', '555-9876', 'fargan@gmail.com');
INSERT INTO EMPLEADOS (nombre, apellido, id_tipo_doc, documento, fecha_nac, id_barrio, id_cargo, fecha_alta, telefono, email) 
VALUES ('Guillermo', 'Diaz', 4, 99887766, '1985-03-11', 4, 4, '2021-08-05', '555-4321', 'willy@gmail.com');
INSERT INTO EMPLEADOS (nombre, apellido, id_tipo_doc, documento, fecha_nac, id_barrio, id_cargo, fecha_alta, telefono, email) 
VALUES ('Sofia', 'Hernandez', 5, 66554433, '1994-07-25', 5, 5, '2021-08-02', '555-8765', 'sofia@hotmail.com');
--
INSERT INTO MEDIOS_PEDIDO (descripcion) VALUES ('Web');
INSERT INTO MEDIOS_PEDIDO (descripcion) VALUES ('Telefono');
INSERT INTO MEDIOS_PEDIDO (descripcion) VALUES ('Taquilla');
INSERT INTO MEDIOS_PEDIDO (descripcion) VALUES ('App Movil');
INSERT INTO MEDIOS_PEDIDO (descripcion) VALUES ('Kiosco');

-- Inserts para la tabla FORMAS_PAGO
INSERT INTO FORMAS_PAGO (descripcion, porcentaje_recargo) VALUES ('Efectivo', 0);
INSERT INTO FORMAS_PAGO (descripcion, porcentaje_recargo) VALUES ('Tarjeta de Credito', 5);
INSERT INTO FORMAS_PAGO (descripcion, porcentaje_recargo) VALUES ('Tarjeta de Debito', 3);
INSERT INTO FORMAS_PAGO (descripcion, porcentaje_recargo) VALUES ('PayPal', 7);
INSERT INTO FORMAS_PAGO (descripcion, porcentaje_recargo) VALUES ('Transferencia Bancaria', 2);

-- Inserts para la tabla CLASIFICACIONES
INSERT INTO CLASIFICACIONES (clasificacion) VALUES ('Apta para todos los publicos');
INSERT INTO CLASIFICACIONES (clasificacion) VALUES ('+7');
INSERT INTO CLASIFICACIONES (clasificacion) VALUES ('+12');
INSERT INTO CLASIFICACIONES (clasificacion) VALUES ('+16');
INSERT INTO CLASIFICACIONES (clasificacion) VALUES ('+18');

-- Inserts para la tabla GENEROS
INSERT INTO GENEROS (genero) VALUES ('Accion');
INSERT INTO GENEROS (genero) VALUES ('Comedia');
INSERT INTO GENEROS (genero) VALUES ('Drama');
INSERT INTO GENEROS (genero) VALUES ('Ciencia Ficcion');
INSERT INTO GENEROS (genero) VALUES ('Romance');

insert into IDIOMAS
values ('Ingles'), ('Español');


-- Inserts para la tabla TIPOS_SALAS
INSERT INTO TIPOS_SALAS (tipo) VALUES ('Sala 2D');
INSERT INTO TIPOS_SALAS (tipo) VALUES ('Sala 3D');
INSERT INTO TIPOS_SALAS (tipo) VALUES ('Sala IMAX');
INSERT INTO TIPOS_SALAS (tipo) VALUES ('Sala VIP');
INSERT INTO TIPOS_SALAS (tipo) VALUES ('Sala 4D');

-- Inserts para la tabla SALAS
INSERT INTO SALAS (nro_sala, id_tipo_sala) VALUES (1, 1);
INSERT INTO SALAS (nro_sala, id_tipo_sala) VALUES (2, 2);
INSERT INTO SALAS (nro_sala, id_tipo_sala) VALUES (3, 3);
INSERT INTO SALAS (nro_sala, id_tipo_sala) VALUES (4, 4);
INSERT INTO SALAS (nro_sala, id_tipo_sala) VALUES (5, 5);

INSERT INTO BUTACAS(numero) 
VALUES
('1A'),
('1B'),
('1C'),
('2A'),
('2B'),
('2C'),
('3A'),
('3B');

INSERT INTO FORMATOS (formato) VALUES ('2D');
INSERT INTO FORMATOS (formato) VALUES ('3D');
INSERT INTO FORMATOS (formato) VALUES ('IMAX');
INSERT INTO FORMATOS (formato) VALUES ('Dolby Atmos');
INSERT INTO FORMATOS (formato) VALUES ('ScreenX');

INSERT INTO HORARIOS(horario)
VALUES ('10:00'),
('12:00'),
('12:30'),
('14:00'),
('15:30'),
('16:00'),
('17:00'),
('18:30'),
('20:30');

INSERT INTO PELICULAS (titulo, duracion, sinopsis, id_clasificacion, id_genero, id_idioma, estado)
VALUES ('Aventuras Explosivas', 120, 'Una pelicula llena de accion y emocion.', 1, 1, 1, 1),
	   ('Mision Imposible', 130, 'Un agente se embarca en misiones imposibles para salvar el mundo.', 2, 1, 2,1),
       ('Mision Imposible: Protocolo Fantasma', 135, 'Ethan Hunt enfrenta una nueva mision imposible.', 2, 1, 2, 1),
       ('El ultimo Guerrero', 110, 'Un guerrero lucha contra fuerzas oscuras para salvar el reino.', 3, 1, 1, 1),
       ('Intrepidos', 105, 'Un grupo de heroes se une para salvar el mundo.', 4, 1, 2, 1),
       ('El Renacer del Dragon', 125, 'Un maestro de las artes marciales busca venganza.', 5, 1, 1, 1);

INSERT INTO PELICULAS (titulo, duracion, sinopsis, id_clasificacion, id_genero, id_idioma, estado)
VALUES ('Risas y Mas Risas', 95, 'Una comedia que te hara reir a carcajadas.', 1, 2, 2, 1),
       ('Locuras en la Ciudad', 110, 'Un grupo de amigos vive situaciones comicas en la gran ciudad.', 2, 2, 1, 1),
       ('La Boda del Año', 120, 'Preparativos para una boda que se convierten en un caos divertido.', 3, 2, 2, 1),
       ('¡Que Desastre!', 100, 'Un dia en la vida de un personaje desafortunado.', 4, 2, 1, 1),
       ('Comedia Romantica', 115, 'Amor y risas se entrelazan en esta comedia romantica.', 5, 2, 2, 1),
	   ('Locuras de Verano', 100, 'Un grupo de amigos vive locuras durante las vacaciones de verano.', 2, 2,1,1)

INSERT INTO PELICULAS (titulo, duracion, sinopsis, id_clasificacion, id_genero, id_idioma, estado)
VALUES ('El Peso del Pasado', 130, 'Un drama profundo sobre la redencion.', 1, 3, 1, 1),
       ('Secretos Familiares', 115, 'Una familia enfrenta sus secretos mas oscuros.', 2, 3, 2, 1),
       ('Vidas Entrelazadas', 140, 'Historias de diferentes personas que se cruzan en el destino.', 3, 3, 1, 1),
       ('El Ultimo Adios', 105, 'Una emotiva historia de despedida y aceptacion.', 4, 3, 2, 1),
       ('Mas Alla de la Esperanza', 125, 'Una mirada esperanzadora en medio de la adversidad.', 5, 3, 1, 1),
	   ('Sueño Americano', 150, 'La historia de un hombre que persigue el sueño americano.', 3, 3, 1,1)

INSERT INTO PELICULAS (titulo, duracion, sinopsis, id_clasificacion, id_genero, id_idioma, estado)
VALUES ('El Futuro Desconocido', 110, 'Explorando mundos futuros y tecnologias asombrosas.', 1, 4, 2, 1),
       ('Invasion Extraterrestre', 125, 'La humanidad lucha contra una invasion alienigena.', 2, 4, 1, 1),
       ('Viaje a las Estrellas', 140, 'Exploraci n intergal ctica en busca de nuevos horizontes.', 3, 4, 2, 1),
       ('Realidad Virtual', 105, 'Aventuras en un mundo virtual lleno de sorpresas.', 4, 4, 1, 1),
       ('Maquinas Conscientes', 120, 'Inteligencia artificial y su impacto en la sociedad.', 5, 4, 2, 1),
	   ('La Guerra de las Galaxias', 180, 'Una saga epica de ciencia ficcion.', 4, 4,2,1)

INSERT INTO PELICULAS (titulo, duracion, sinopsis, id_clasificacion, id_genero, id_idioma, estado)
VALUES ('Amor Eterno', 115, 'Una historia de amor que trasciende el tiempo.', 1, 5, 1, 1),
       ('Enamorados en Paris', 130, 'Romance florece en las calles de la Ciudad del Amor.', 2, 5, 2, 1),
       ('Cita a Ciegas', 100, 'Dos almas perdidas se encuentran en una cita inesperada.', 3, 5, 1, 1),
       ('Historia de Amor Prohibido', 145, 'Amor que desafa barreras sociales y culturales.', 4, 5, 2, 1),
       ('El Ultimo Baile', 110, 'Una historia de amor durante una noche magica.', 5, 5, 1, 1);

GO
USE [master]
GO
ALTER DATABASE [CineProg1] SET  READ_WRITE 
GO