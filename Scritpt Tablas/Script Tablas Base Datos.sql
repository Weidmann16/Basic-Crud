USE [Prueba]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 04/04/2022 11:18:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Puesto] [varchar](25) NOT NULL,
	[Sueldo] [int] NULL,
	[Superior] [varchar](25) NOT NULL,
	[Grupo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 04/04/2022 11:18:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[Codigo_Area] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Oficina] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo_Area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [fk_Grupo] FOREIGN KEY([Grupo])
REFERENCES [dbo].[Grupo] ([Codigo_Area])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [fk_Grupo]
GO
