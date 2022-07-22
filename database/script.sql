USE [db_a41d58_asistencia]
GO
/****** Object:  Table [dbo].[Vacaciones]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacaciones](
	[IdEmpresa] [int] NOT NULL,
	[IdVacaciones] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[FlagActivo] [bit] NOT NULL,
	[IdUsuarioCreacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Vacaciones] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdVacaciones] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Area](
	[IdArea] [int] IDENTITY(1,1) NOT NULL,
	[NombreArea] [varchar](200) NOT NULL,
	[FlagActivo] [bit] NULL,
	[IdUsuarioCreacion] [int] NULL,
	[FechaCreacion] [datetime] NULL,
	[IdUsuarioModificacion] [varchar](30) NULL,
	[FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdArea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TablaMaestra]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TablaMaestra](
	[IdTabla] [int] NOT NULL,
	[IdColumna] [int] NOT NULL,
	[Valor] [varchar](50) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[FlagActivo] [bit] NOT NULL,
	[IdUsuarioCreacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_TablaMaestra] PRIMARY KEY CLUSTERED 
(
	[IdTabla] ASC,
	[IdColumna] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rol](
	[IdEmpresa] [int] NOT NULL,
	[IdRol] [int] NOT NULL,
	[Rol] [varchar](50) NOT NULL,
	[FlagActivo] [bit] NOT NULL,
	[IdUsuarioCreacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdRol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[IdEmpresa] [int] NOT NULL,
	[IdMenu] [int] NOT NULL,
	[CodMenu] [varchar](20) NOT NULL,
	[Menu] [varchar](50) NOT NULL,
	[Controller] [varchar](20) NOT NULL,
	[FlagActivo] [bit] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdMenu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Horario](
	[IdEmpresa] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[Horario] [varchar](50) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[IdTipoHorario] [int] NOT NULL,
	[FlagActivo] [bit] NOT NULL,
	[IdUsuarioCreacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdHorario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpresa] [int] NOT NULL,
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[CodigoMarcacion] [varchar](20) NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Sexo] [char](1) NULL,
	[IdTipoDocIdentidad] [varchar](20) NULL,
	[NroDocIdentidad] [varchar](15) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Direccion] [varchar](200) NULL,
	[Telefono] [varchar](20) NULL,
	[FlagActivo] [bit] NOT NULL,
	[IdUsuarioCreacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdArea] [int] NULL,
 CONSTRAINT [PK__Empleado__CE6D8B9EE122AB07] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpleadoHorario]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadoHorario](
	[IdEmpresa] [int] NOT NULL,
	[IdEmpleadoHorario] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NULL,
	[FlagActivo] [bit] NOT NULL,
	[IdUsuarioCreacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_EmpleadoHorario] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdEmpleadoHorario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcacion]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcacion](
	[IdEmpresa] [int] NOT NULL,
	[IdMarcacion] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaMarcacion] [datetime] NOT NULL,
	[HoraTrabajoInicio] [datetime] NOT NULL,
	[HoraRefrigerioInicio] [datetime] NOT NULL,
	[HoraRefrigerioFin] [datetime] NOT NULL,
	[HoraTrabajoFin] [datetime] NOT NULL,
	[HorasTrabajadas] [decimal](18, 4) NOT NULL,
	[HorasRefrigerio] [decimal](18, 4) NOT NULL,
	[HorasTardanza] [decimal](18, 4) NOT NULL,
	[HorasExtra] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_Marcacion] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdMarcacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioDetalle]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioDetalle](
	[IdEmpresa] [int] NOT NULL,
	[IdHorarioDetalle] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[Dia] [int] NOT NULL,
	[HoraTrabajoInicio] [datetime] NOT NULL,
	[HoraTrabajoFin] [datetime] NOT NULL,
	[HoraRefrigerioInicio] [datetime] NOT NULL,
	[HoraRefrigerioFin] [datetime] NOT NULL,
	[NroMinutosToleranciaEntrada] [int] NOT NULL,
	[NroMinutosToleranciaRefrigerio] [int] NOT NULL,
	[FlagNocturno] [bit] NOT NULL,
	[FlagActivo] [bit] NOT NULL,
	[IdUsuarioCreacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_HorarioDetalle] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdHorarioDetalle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Horario_List]    Script Date: 06/09/2022 20:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC [dbo].[Horario_List] '', 0, 0
CREATE PROCEDURE [dbo].[Horario_List]
@Horario VARCHAR(200),
@IdTipoHorario INT
AS
SELECT
ho.IdHorario,
ho.Horario,
ho.Horario + ' --> (' + ho.Descripcion + ')' AS HorarioDescripcion,
ho.Descripcion,
ho.IdTipoHorario,
tmho.Descripcion AS TipoHorario,
ho.FlagActivo,
ho.IdUsuarioCreacion,
ho.FechaCreacion,
ISNULL(ho.IdUsuarioModificacion, 0) AS IdUsuarioModificacion,
ISNULL(ho.FechaModificacion, CONVERT(DATETIME, '19000101')) AS FechaModificacion
FROM Horario ho
INNER JOIN TablaMaestra tmho ON tmho.IdTabla = 4 AND tmho.IdColumna > 0 AND tmho.IdColumna = ho.IdTipoHorario
WHERE ho.Horario LIKE '%' + @Horario + '%'
AND (ho.IdTipoHorario = @IdTipoHorario OR @IdTipoHorario = 0)
AND ho.FlagActivo = 1
ORDER BY ho.IdHorario DESC
GO
/****** Object:  Table [dbo].[RolMenu]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolMenu](
	[IdEmpresa] [int] NOT NULL,
	[IdRol] [int] NOT NULL,
	[IdMenu] [int] NOT NULL,
 CONSTRAINT [PK_RolMenu_1] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdRol] ASC,
	[IdMenu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Rol_List]    Script Date: 06/09/2022 20:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rol_List]
AS
SELECT
ro.IdRol,
ro.Rol,
ro.FlagActivo,
tmfa.Descripcion AS Estado
FROM Rol ro
INNER JOIN TablaMaestra tmfa ON tmfa.IdTabla = 3 AND tmfa.IdColumna > 0 AND CONVERT(BIT, tmfa.Valor) = ro.FlagActivo
GO
/****** Object:  StoredProcedure [dbo].[Rol_InsertUpdate]    Script Date: 06/09/2022 20:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rol_InsertUpdate]
@ErrorMessage VARCHAR(255),
@IdEmpresa INT,
@IdRol INT,
@Rol VARCHAR(50),
@FlagActivo BIT,
@IdUsuario INT
AS

SET @ErrorMessage = ''
	
BEGIN TRY
	IF ISNULL(@IdRol, 0) = 0
	BEGIN
		SELECT @IdRol = ISNULL(MAX(IdRol), 0) + 1 FROM Rol

		INSERT INTO Rol(
		IdEmpresa, IdRol, Rol, FlagActivo,
		IdUsuarioCreacion, FechaCreacion)
		VALUES(@IdEmpresa, @IdRol, @Rol, @FlagActivo,
		@IdUsuario, GETDATE())

		IF @@Error = 0
		BEGIN
			SET @ErrorMessage = 'Creación Satisfactoria'
			SELECT @ErrorMessage AS ErrorMessage, @IdRol AS Id
		END
	END
	ELSE
	BEGIN
		UPDATE Rol
		SET Rol = @Rol,
		FlagActivo = @FlagActivo,
		IdUsuarioModificacion = @IdUsuario,
		FechaModificacion = GETDATE()
		WHERE IdRol = @IdRol

		IF @@Error = 0
		BEGIN
			SET @ErrorMessage = 'Edición Satisfactoria'
			SELECT @ErrorMessage AS ErrorMessage, @IdRol AS Id
		END
	END
END TRY
BEGIN CATCH
	SET @ErrorMessage = 'Linea de Error: #' + CONVERT(VARCHAR(10), ERROR_LINE()) + ': ' + ERROR_MESSAGE()
	SELECT @ErrorMessage AS ErrorMessage, 0 AS Id
END CATCH
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdEmpresa] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdRol] [int] NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Clave] [varchar](50) NULL,
	[FlagActivo] [bit] NOT NULL,
	[IdUsuarioCreacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[TablaMaestraDetalle_InsertUpdate]    Script Date: 06/09/2022 20:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TablaMaestraDetalle_InsertUpdate]
@ErrorMessage VARCHAR(255),
@IdTabla INT,
@IdColumna INT,
@Valor VARCHAR(50),
@Descripcion VARCHAR(50),
@FlagActivo BIT,
@IdUsuario INT
AS

SET @ErrorMessage = ''

BEGIN TRY
	
	IF ISNULL(@IdColumna, 0) = 0
	BEGIN
		
		SELECT @IdColumna = ISNULL(MAX(IdColumna),0) + 1 FROM TablaMaestra WHERE IdTabla=@IdTabla
		
		INSERT INTO TablaMaestra (
		IdTabla, IdColumna, Valor, Descripcion,
		FlagActivo, IdUsuarioCreacion, FechaCreacion)
		VALUES (@IdTabla, @IdColumna, @Valor, @Descripcion,
		@FlagActivo, @IdUsuario, GETDATE())
		
		IF @@Error = 0
		BEGIN
			SET @ErrorMessage = 'Creación Satisfactoria'
			SELECT @ErrorMessage AS ErrorMessage
		END
	END
	ELSE
	BEGIN
	
		UPDATE TablaMaestra
		SET Valor = @Valor,
		Descripcion = @Descripcion,
		FlagActivo = @FlagActivo,
		IdUsuarioModificacion = @IdUsuario,
		FechaModificacion = GETDATE()
		WHERE IdTabla = @IdTabla
		AND IdColumna = @IdColumna

		IF @@Error = 0
		BEGIN
			SET @ErrorMessage = 'Edición Satisfactoria'
			SELECT @ErrorMessage AS ErrorMessage
		END
	END
END TRY
BEGIN CATCH
	SET @ErrorMessage = 'Linea de Error: #' + CONVERT(VARCHAR(10), ERROR_LINE()) + ': ' + ERROR_MESSAGE()
	SELECT @ErrorMessage AS ErrorMessage
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[TablaMaestra_List]    Script Date: 06/09/2022 20:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- EXEC [dbo].[TablaMaestra_List] 1, 1
CREATE PROCEDURE [dbo].[TablaMaestra_List]
@IdTabla INT,
@IdTipo INT
AS
SELECT
tam.IdTabla,
tam.IdColumna,
tam.Valor,
tam.Descripcion,
tae.Descripcion AS Estado
FROM TablaMaestra tam
LEFT JOIN TablaMaestra tae ON tae.IdTabla = 3 AND tae.IdColumna > 0 AND tae.Valor = tam.FlagActivo
WHERE (tam.IdColumna = 0 AND @IdTipo = 1)
OR (tam.IdTabla = @IdTabla AND tam.IdColumna > 0 AND @IdTipo = 2)
GO
/****** Object:  StoredProcedure [dbo].[TablaMaestra_InsertUpdate]    Script Date: 06/09/2022 20:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- EXEC [dbo].[TablaMaestra_InsertUpdate] '', 1, 0, 'PRUEBA', 'TIPO DOCUMENTO IDENTIDAD', 1, 1
CREATE PROCEDURE [dbo].[TablaMaestra_InsertUpdate]
@ErrorMessage VARCHAR(255),
@IdTabla INT,
@IdColumna INT,
@Valor VARCHAR(50),
@Descripcion VARCHAR(50),
@FlagActivo BIT,
@IdUsuario INT
AS

SET @ErrorMessage = ''

BEGIN TRY
	
	IF ISNULL(@IdTabla, 0) = 0
	BEGIN
		
		SELECT @IdTabla = ISNULL(MAX(IdTabla),0) + 1 FROM TablaMaestra WHERE IdColumna=@IdColumna AND IdTabla < 1000
		
		INSERT INTO TablaMaestra (
		IdTabla, IdColumna, Valor, Descripcion,
		FlagActivo, IdUsuarioCreacion, FechaCreacion)
		VALUES (@IdTabla, @IdColumna, @Valor, @Descripcion,
		@FlagActivo, @IdUsuario, GETDATE())
		
		IF @@Error = 0
		BEGIN
			SET @ErrorMessage = 'Creación Satisfactoria'
			SELECT @ErrorMessage AS ErrorMessage
		END
	END
	ELSE
	BEGIN
		UPDATE TablaMaestra
		SET Valor = @Valor,
		Descripcion = @Descripcion,
		FlagActivo = @FlagActivo,
		IdUsuarioModificacion = @IdUsuario,
		FechaModificacion = GETDATE()
		WHERE IdTabla = @IdTabla
		AND IdColumna = @IdColumna
			
		IF @@Error = 0
		BEGIN
			SET @ErrorMessage = 'Edición Satisfactoria'
			SELECT @ErrorMessage AS ErrorMessage
		END
	END
END TRY
BEGIN CATCH
	SET @ErrorMessage = 'Linea de Error: #' + CONVERT(VARCHAR(10), ERROR_LINE()) + ': ' + ERROR_MESSAGE()
	SELECT @ErrorMessage AS ErrorMessage
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[TablaMaestra_Combo]    Script Date: 06/09/2022 20:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TablaMaestra_Combo]
@IdTabla INT
AS
SELECT
tama.IdColumna, 
tama.Valor, 
tama.Descripcion
FROM TablaMaestra tama
WHERE tama.IdTabla = @IdTabla
AND tama.IdColumna > 0
ORDER BY tama.Descripcion
GO
/****** Object:  StoredProcedure [dbo].[Menu_List]    Script Date: 06/09/2022 20:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- EXEC Menu_List 1
CREATE PROCEDURE [dbo].[Menu_List]
AS
SELECT
me.IdMenu,
me.CodMenu,
CASE WHEN LEN(me.IdMenu) = 0 THEN 0
	 WHEN LEN(me.CodMenu) = 2 THEN (SELECT me1.IdMenu FROM Menu me1 WHERE LEN(me1.CodMenu) = 0)
	 WHEN LEN(me.CodMenu) > 2 THEN (SELECT IdMenu FROM Menu me1 WHERE SUBSTRING(me.CodMenu, 1, LEN(me.CodMenu) - 2) = me1.CodMenu)
ELSE 0 END AS IdMenuPadre,
me.Menu,
me.Controller
FROM Menu me
WHERE FlagActivo = 1
GO
/****** Object:  Table [dbo].[UsuarioMenu]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioMenu](
	[IdEmpresa] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdMenu] [int] NOT NULL,
 CONSTRAINT [PK_UsuarioMenu] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdUsuario] ASC,
	[IdMenu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Usuario_List]    Script Date: 06/09/2022 20:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usuario_List]
AS
SELECT
usu.IdUsuario,
rol.Rol,
usu.ApellidoPaterno + ' ' + usu.ApellidoMaterno + ', ' + usu.Nombres AS Persona,
usu.Usuario,
tes.Descripcion
FROM Usuario usu
INNER JOIN Rol rol ON rol.IdRol = usu.IdRol
LEFT JOIN TablaMaestra tes ON tes.IdTabla = 3 AND tes.IdColumna > 0 AND tes.IdColumna = usu.FlagActivo
GO
/****** Object:  StoredProcedure [dbo].[Usuario_InsertUpdate]    Script Date: 06/09/2022 20:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usuario_InsertUpdate]
@ErrorMessage VARCHAR(255),
@IdEmpresa INT,
@IdUsuario INT,
@IdRol INT,
@ApellidoPaterno VARCHAR(50),
@ApellidoMaterno VARCHAR(50),
@Nombres VARCHAR(100),
@Usuario VARCHAR(50),
@Clave VARCHAR(16),
@FlagActivo BIT,
@IdUsuarioAud INT
AS

SET @ErrorMessage = ''

BEGIN TRY
	IF ISNULL(@IdUsuario, 0) = 0
	BEGIN
		SELECT @IdUsuario = ISNULL(MAX(IdUsuario), 0) + 1 FROM Usuario

		INSERT INTO Usuario(
		IdEmpresa, IdUsuario, IdRol, ApellidoPaterno,
		ApellidoMaterno, Nombres, Usuario, Clave, FlagActivo,
		IdUsuarioCreacion, FechaCreacion)
		VALUES(@IdEmpresa, @IdUsuario, @IdRol, @ApellidoPaterno,
		@ApellidoMaterno, @Nombres, @Usuario, @Clave, @FlagActivo,
		@IdUsuarioAud, GETDATE())

		IF @@Error = 0
		BEGIN
			SET @ErrorMessage = 'Creación Satisfactoria'
			SELECT @ErrorMessage AS ErrorMessage, @IdUsuario AS Id
		END
	END
	ELSE
	BEGIN
		UPDATE Usuario
		SET IdEmpresa = @IdEmpresa,
		IdUsuario = @IdUsuario,
		IdRol = @IdRol,
		ApellidoPaterno = @ApellidoPaterno,
		ApellidoMaterno = @ApellidoMaterno,
		Nombres = @Nombres,
		Usuario = @Usuario,
		Clave = @Clave,
		FlagActivo = @FlagActivo,
		IdUsuarioModificacion = @IdUsuarioAud,
		FechaModificacion = GETDATE()
		WHERE IdUsuario = @IdUsuario

		IF @@Error = 0
		BEGIN
			SET @ErrorMessage = 'Edición Satisfactoria'
			SELECT @ErrorMessage AS ErrorMessage, @IdUsuario AS Id
		END
	END
END TRY
BEGIN CATCH
	SET @ErrorMessage = 'Linea de Error: #' + CONVERT(VARCHAR(10), ERROR_LINE()) + ': ' + ERROR_MESSAGE()
	SELECT @ErrorMessage AS ErrorMessage, 0 AS Id
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usuario_GetItem]    Script Date: 06/09/2022 20:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usuario_GetItem]
@IdUsuario INT
AS
SELECT
usu.IdUsuario,
usu.IdRol,
usu.ApellidoPaterno,
usu.ApellidoMaterno,
usu.Nombres,
usu.Usuario,
usu.FlagActivo,
usc.Usuario AS UsuarioCreacion,
usu.FechaCreacion,
ISNULL(usm.Usuario, '') AS UsuarioModificacion,
ISNULL(usu.FechaModificacion, CONVERT(DATETIME, '19000101')) AS FechaModificacion
FROM Usuario usu
LEFT JOIN Usuario usc ON usc.IdUsuario = usu.IdUsuarioCreacion
LEFT JOIN Usuario usm ON usm.IdUsuario = usu.IdUsuarioModificacion
WHERE usu.IdUsuario = @IdUsuario
GO
/****** Object:  StoredProcedure [dbo].[Usuario_Autentication]    Script Date: 06/09/2022 20:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Usuario_Autentication 1, 0, 'ADMIN', '12345'
CREATE PROC [dbo].[Usuario_Autentication]
@IdEmpresa INT,
@Usuario VARCHAR(50),
@Clave VARCHAR(16)
AS
IF EXISTS(SELECT 1 FROM Usuario WHERE Usuario = @Usuario AND IdEmpresa = @IdEmpresa AND FlagActivo = 1)
BEGIN
	IF EXISTS(SELECT 1 FROM Usuario
						WHERE Usuario = @Usuario
						AND Clave = @Clave
						AND IdEmpresa = @IdEmpresa)
	BEGIN
		IF EXISTS(SELECT 1 FROM Usuario 
						WHERE Usuario = @Usuario
						AND Clave = @Clave
						AND IdEmpresa = @IdEmpresa
						AND FlagActivo = 1)
		BEGIN
			SELECT
			'' AS ErrorMessage,
			usu.IdEmpresa,
			usu.IdUsuario,
			usu.IdRol,
			usu.Usuario,
			rol.Rol			
			FROM Usuario usu
			INNER JOIN Rol rol ON rol.IdRol = usu.IdRol
			WHERE usu.Usuario = @Usuario
			AND usu.Clave = @Clave
			AND usu.IdEmpresa = @IdEmpresa
			AND usu.FlagActivo = 1
		END
		ELSE
		BEGIN
			SELECT 'El Usuario está Desactivado, pongase en contacto con el Administrador del Sistema.' AS ErrorMessage,
					0 AS IdEmpresa, 0 AS IdSucursal, '' AS Sucursal, 0 AS IdUsuario, 0 AS IdRol, '' AS Usuario, '' AS Rol
		END
	END
	ELSE
	BEGIN
		SELECT 'Empresa o Contraseña Incorrecta.' AS ErrorMessage,
				0 AS IdEmpresa, 0 AS IdSucursal, '' AS Sucursal, 0 AS IdUsuario, 0 AS IdRol, '' AS Usuario, '' AS Rol
	END
END
ELSE
BEGIN	
	SELECT 'Usuario no Registrado.' AS ErrorMessage,
			0 AS IdEmpresa, 0 AS IdSucursal, '' AS Sucursal, 0 AS IdUsuario, 0 AS IdRol, '' AS Usuario, '' AS Rol
END
GO
/****** Object:  StoredProcedure [dbo].[TablaMaestra_GetItem]    Script Date: 06/09/2022 20:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TablaMaestra_GetItem]
@IdTabla INT,
@IdColumna INT
AS
SELECT
tam.IdTabla,
tam.IdColumna,
tam.Valor,
tam.Descripcion,
tam.FlagActivo,
usc.Usuario AS UsuarioCreacion,
tam.FechaCreacion,
ISNULL(usm.Usuario, '') AS UsuarioModificacion,
ISNULL(tam.FechaModificacion, CONVERT(DATETIME, '19000101')) AS FechaModificacion
FROM TablaMaestra tam
INNER JOIN Usuario usc ON usc.IdUsuario = tam.IdUsuarioCreacion
LEFT JOIN Usuario usm ON usm.IdUsuario = tam.IdUsuarioModificacion
WHERE tam.IdTabla = @IdTabla AND tam.IdColumna = @IdColumna
GO
/****** Object:  StoredProcedure [dbo].[RolMenu_List]    Script Date: 06/09/2022 20:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--RolMenu_List 1,6
CREATE PROCEDURE [dbo].[RolMenu_List]
@IdEmpresa INT,
@IdRol INT
AS
SELECT
me.IdMenu,
me.CodMenu,
CASE WHEN LEN(me.IdMenu) = 0 THEN 0
	 WHEN LEN(me.CodMenu) = 2 THEN (SELECT me1.IdMenu FROM Menu me1 WHERE LEN(me1.CodMenu) = 0)
	 WHEN LEN(me.CodMenu) > 2 THEN (SELECT IdMenu FROM Menu me1 WHERE SUBSTRING(me.CodMenu, 1, LEN(me.CodMenu) - 2) = me1.CodMenu)
ELSE 0 END AS IdMenuPadre,
me.Menu
FROM Menu me
INNER JOIN RolMenu rome ON rome.IdMenu = me.IdMenu
WHERE rome.IdEmpresa = @IdEmpresa
AND rome.IdRol = @IdRol
AND me.FlagActivo = 1
GO
/****** Object:  StoredProcedure [dbo].[Rol_GetItem]    Script Date: 06/09/2022 20:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rol_GetItem]
@IdRol INT
AS
SELECT
rol.IdRol,
rol.Rol,
rol.FlagActivo,
usc.Usuario AS UsuarioCreacion,
rol.FechaCreacion,
ISNULL(usm.Usuario, '') AS UsuarioModificacion,
ISNULL(rol.FechaModificacion, CONVERT(DATETIME, '19000101')) AS FechaModificacion
FROM Rol rol
INNER JOIN Usuario usc ON usc.IdUsuario = rol.IdUsuarioCreacion
LEFT JOIN Usuario usm ON usm.IdUsuario = rol.IdUsuarioModificacion
WHERE rol.IdRol = @IdRol
GO
/****** Object:  StoredProcedure [dbo].[Horario_GetItem]    Script Date: 06/09/2022 20:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Horario_GetItem]
@IdHorario INT
AS
SELECT
ho.IdHorario,
ho.IdTipoHorario,
ho.Horario,
ho.Descripcion,
ho.FlagActivo,
ho.IdUsuarioCreacion,
usc.Usuario AS UsuarioCreacion,
ho.FechaCreacion,
ISNULL(ho.IdUsuarioModificacion, 0) AS IdUsuarioModificacion,
ISNULL(usm.Usuario, '') AS UsuarioModificacion,
ISNULL(ho.FechaModificacion, CONVERT(DATETIME, '19000101')) AS FechaModificacion
FROM Horario ho
INNER JOIN Usuario usc ON usc.IdUsuario = ho.IdUsuarioCreacion
LEFT JOIN Usuario usm ON usm.IdUsuario = ho.IdUsuarioModificacion
WHERE ho.IdHorario = @IdHorario
AND ho.FlagActivo = 1
GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 06/09/2022 20:03:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permiso](
	[IdEmpresa] [int] NOT NULL,
	[IdPermiso] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[Motivo] [varchar](50) NOT NULL,
	[Observacion] [varchar](100) NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[FlagActivo] [bit] NOT NULL,
	[IdUsuarioCreacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Permiso] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdPermiso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[HorarioDetalle_GetItem]    Script Date: 06/09/2022 20:06:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- EXEC [dbo].[HorarioDetalle_GetItem] 1
CREATE PROCEDURE [dbo].[HorarioDetalle_GetItem]
@IdHorario INT
AS
SELECT
IdHorarioDetalle,
IdHorario,
Dia,
CONVERT(VARCHAR(5), HoraTrabajoInicio, 108) AS HoraTrabajoInicio,
CONVERT(VARCHAR(5), HoraTrabajoFin, 108) AS HoraTrabajoFin,
CONVERT(VARCHAR(5), HoraRefrigerioInicio, 108) AS HoraRefrigerioInicio,
CONVERT(VARCHAR(5), HoraRefrigerioFin, 108) AS HoraRefrigerioFin,
RIGHT('00' + LTRIM(RTRIM(NroMinutosToleranciaEntrada)), 2) AS NroMinutosToleranciaEntrada,
RIGHT('00' + LTRIM(RTRIM(NroMinutosToleranciaRefrigerio)), 2) AS NroMinutosToleranciaRefrigerio,
FlagNocturno,
FlagActivo
FROM HorarioDetalle hode
WHERE hode.IdHorario = @IdHorario
GO
/****** Object:  StoredProcedure [dbo].[EmpleadoHorario_List]    Script Date: 06/09/2022 20:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EmpleadoHorario_List ''
CREATE PROCEDURE [dbo].[EmpleadoHorario_List]
@EmpleadoHorario VARCHAR(200)
AS
SELECT
A.*
FROM(
SELECT
eho.IdEmpleado,
e.ApellidoPaterno + ' ' + e.ApellidoMaterno + ', ' + e.Nombres AS Persona,
eho.IdHorario,
ho.Horario,
tmho.Descripcion AS TipoHorario,
eho.FlagActivo
FROM EmpleadoHorario eho
INNER JOIN Empleado e ON e.IdEmpleado = eho.IdEmpleado
INNER JOIN Horario ho ON ho.IdHorario = eho.IdHorario
INNER JOIN TablaMaestra tmho ON tmho.IdTabla = 4 AND tmho.IdColumna > 0 AND tmho.IdColumna = ho.IdTipoHorario
UNION
SELECT
e.IdEmpleado,
e.ApellidoPaterno + ' ' + e.ApellidoMaterno + ', ' + e.Nombres AS Persona,
0 AS IdHorario,
'' AS Horario,
'' AS TipoHorario,
0 AS FlagActivo
FROM Empleado e
WHERE NOT EXISTS(SELECT 1 FROM EmpleadoHorario eho WHERE eho.IdEmpleado = e.IdEmpleado)) A
WHERE A.Persona LIKE '%' + @EmpleadoHorario + '%'
OR A.Horario LIKE '%' + @EmpleadoHorario + '%'
OR A.TipoHorario LIKE '%' + @EmpleadoHorario + '%'
ORDER BY A.IdHorario DESC
GO
/****** Object:  StoredProcedure [dbo].[EmpleadoHorario_Get]    Script Date: 06/09/2022 20:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[dbo].[EmpleadoHorario_Get] 255
CREATE PROCEDURE [dbo].[EmpleadoHorario_Get]
@IdEmpleadoHorario INT
AS
SELECT
eho.IdEmpleadoHorario,
eho.IdEmpleado,
e.ApellidoPaterno + ' ' + e.ApellidoMaterno + ', ' + e.Nombres AS Persona,
eho.IdHorario,
ho.Horario,
tmho.Descripcion AS TipoHorario,
CONVERT(VARCHAR(10), eho.FechaInicio, 103) AS FechaInicio,
CONVERT(VARCHAR(10), eho.FechaFin, 103) AS FechaFin,
eho.FlagActivo,
eho.IdUsuarioCreacion,
usc.Usuario AS UsuarioCreacion,
eho.FechaCreacion,
ISNULL(eho.IdUsuarioModificacion, 0) AS IdUsuarioModificacion,
ISNULL(usm.Usuario, '') AS UsuarioModificacion,
ISNULL(eho.FechaModificacion, CONVERT(DATETIME, '19000101')) AS FechaModificacion
FROM EmpleadoHorario eho
INNER JOIN Empleado e ON e.IdEmpleado = eho.IdEmpleado
INNER JOIN Horario ho ON ho.IdHorario = eho.IdHorario
INNER JOIN TablaMaestra tmho ON tmho.IdTabla = 4 AND tmho.IdColumna > 0 AND tmho.IdColumna = ho.IdTipoHorario
INNER JOIN Usuario usc ON usc.IdUsuario = eho.IdUsuarioCreacion
LEFT JOIN Usuario usm ON usm.IdUsuario = eho.IdUsuarioModificacion
WHERE eho.IdEmpleado = @IdEmpleadoHorario
GO
/****** Object:  StoredProcedure [dbo].[Empleado_List]    Script Date: 06/09/2022 20:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC [dbo].[Empleado_List] 11, '', '', 0, ''
CREATE PROCEDURE [dbo].[Empleado_List]
@Empleado VARCHAR(200),
@FechaIngreso VARCHAR(8)
AS
SELECT
e.IdEmpleado,
e.ApellidoPaterno,
e.ApellidoMaterno,
e.Nombres,
e.ApellidoPaterno + ' ' + e.ApellidoMaterno + ', ' + e.Nombres AS PersonaTitular,
e.Sexo,
tmse.Descripcion AS TipoSexo,
e.IdTipoDocIdentidad,
tmtd.Descripcion AS TipoDocIdentidad,
e.NroDocIdentidad,
e.FechaNacimiento,
CONVERT(VARCHAR(10), e.FechaIngreso, 103) AS FechaIngreso,
e.Email,
e.FlagActivo,
e.IdUsuarioCreacion,
e.FechaCreacion,
e.IdUsuarioModificacion,
e.FechaModificacion
FROM Empleado e
INNER JOIN TablaMaestra tmse ON tmse.IdTabla = 5 AND tmse.IdColumna > 0 AND CONVERT(BIT, tmse.Valor) = e.Sexo
INNER JOIN TablaMaestra tmtd ON tmtd.IdTabla = 1 AND tmtd.IdColumna > 0 AND tmtd.IdColumna = e.IdTipoDocIdentidad
WHERE (e.ApellidoPaterno + ' ' + e.ApellidoMaterno + ', ' + e.Nombres) LIKE '%' + @Empleado + '%'
AND (e.FechaIngreso = CONVERT(DATETIME, @FechaIngreso) OR ISNULL(@FechaIngreso, '') = '')
ORDER BY e.IdEmpleado DESC
GO
/****** Object:  StoredProcedure [dbo].[Empleado_InsertUpdate]    Script Date: 06/09/2022 20:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Empleado_InsertUpdate]
@ErrorMessage VARCHAR(255),
@IdEmpresa INT,
@IdEmpleado INT,
@ApellidoPaterno VARCHAR(50),
@ApellidoMaterno VARCHAR(50),
@Nombres VARCHAR(100),
@Sexo BIT,
@IdTipoDocIdentidad INT,
@NroDocIdentidad VARCHAR(20),
@FechaNacimiento VARCHAR(8),
@FechaIngreso VARCHAR(8),
@IdEstadoCivil INT,
@Email VARCHAR(150),
@FlagActivo BIT,
@IdUsuario INT
AS

SET @ErrorMessage = ''

BEGIN TRY
	IF ISNULL(@IdEmpleado, 0) = 0
	BEGIN
		SELECT @IdEmpleado = ISNULL(MAX(@IdEmpleado), 0) + 1 FROM Empleado

		INSERT INTO Empleado(
		IdEmpresa, IdEmpleado, ApellidoPaterno, ApellidoMaterno, Nombres, Sexo, 
		IdTipoDocIdentidad, NroDocIdentidad, FechaNacimiento, FechaIngreso,
		IdEstadoCivil, Email, FlagActivo, IdUsuarioCreacion, FechaCreacion)
		VALUES(@IdEmpresa, @IdEmpleado, @ApellidoPaterno, @ApellidoMaterno, @Nombres, @Sexo, 
		@IdTipoDocIdentidad, @NroDocIdentidad, CONVERT(DATETIME, @FechaNacimiento), CONVERT(DATETIME, @FechaIngreso),
		@IdEstadoCivil,  @Email, 1, @IdUsuario, GETDATE())

		IF @@Error = 0
		BEGIN
			SET @ErrorMessage = 'Creación Satisfactoria'
			SELECT @ErrorMessage AS ErrorMessage, @IdEmpleado AS IdEmpleado
		END
	END
	ELSE
	BEGIN
		UPDATE Empleado
		SET ApellidoPaterno = @ApellidoPaterno,
		ApellidoMaterno = @ApellidoMaterno,
		Nombres = @Nombres,
		Sexo = @Sexo,
		IdTipoDocIdentidad = @IdTipoDocIdentidad,
		NroDocIdentidad = @NroDocIdentidad,
		FechaNacimiento = CONVERT(DATETIME, @FechaNacimiento),
		FechaIngreso = CONVERT(DATETIME, @FechaIngreso),
		IdEstadoCivil = @IdEstadoCivil,
		Email = @Email,
		FlagActivo = 1,
		IdUsuarioModificacion = @IdUsuario,
		FechaModificacion = GETDATE()
		WHERE IdEmpleado = @IdEmpleado
		AND IdEmpresa = @IdEmpresa

		IF @@Error = 0
		BEGIN
			SET @ErrorMessage = 'Edición Satisfactoria'
			SELECT @ErrorMessage AS ErrorMessage, @IdEmpleado AS IdEmpleado
		END
	END
END TRY
BEGIN CATCH
	SET @ErrorMessage = 'Linea de Error: #' + CONVERT(VARCHAR(10), ERROR_LINE()) + ': ' + ERROR_MESSAGE()
	SELECT @ErrorMessage AS ErrorMessage, 0 AS IdEmpleado
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Empleado_Combo]    Script Date: 06/09/2022 20:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Empleado_Combo]
AS
SELECT
e.IdEmpleado,
e.ApellidoPaterno + ' ' + e.ApellidoMaterno + ', ' + e.Nombres AS Persona
FROM Empleado e
WHERE e.FlagActivo = 1
ORDER BY e.ApellidoPaterno
GO
/****** Object:  StoredProcedure [dbo].[UsuarioMenu_List]    Script Date: 06/09/2022 20:06:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- EXEC [dbo].[UsuarioMenu_List] 1, 1
CREATE PROCEDURE [dbo].[UsuarioMenu_List]
@IdEmpresa INT,
@IdUsuario INT
AS
SELECT
me.IdMenu,
me.CodMenu,
CASE WHEN LEN(me.IdMenu) = 0 THEN 0
	 WHEN LEN(me.CodMenu) = 2 THEN (SELECT me1.IdMenu FROM Menu me1 WHERE LEN(me1.CodMenu) = 0)
	 WHEN LEN(me.CodMenu) > 2 THEN (SELECT IdMenu FROM Menu me1 WHERE SUBSTRING(me.CodMenu, 1, LEN(me.CodMenu) - 2) = me1.CodMenu)
ELSE 0 END AS IdMenuPadre,
me.Menu,
me.Controller
FROM Menu me
INNER JOIN UsuarioMenu usme ON usme .IdMenu = me.IdMenu
WHERE usme.IdEmpresa = @IdEmpresa
AND usme.IdUsuario = @IdUsuario
AND me.FlagActivo = 1
GO
/****** Object:  ForeignKey [FK__Empleado__IdArea__08B54D69]    Script Date: 06/09/2022 20:03:54 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([IdArea])
REFERENCES [dbo].[Area] ([IdArea])
GO
/****** Object:  ForeignKey [FK_EmpleadoHorario_Horario]    Script Date: 06/09/2022 20:03:54 ******/
ALTER TABLE [dbo].[EmpleadoHorario]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoHorario_Horario] FOREIGN KEY([IdEmpresa], [IdHorario])
REFERENCES [dbo].[Horario] ([IdEmpresa], [IdHorario])
GO
ALTER TABLE [dbo].[EmpleadoHorario] CHECK CONSTRAINT [FK_EmpleadoHorario_Horario]
GO
/****** Object:  ForeignKey [FK_HorarioDetalle_Horario]    Script Date: 06/09/2022 20:03:54 ******/
ALTER TABLE [dbo].[HorarioDetalle]  WITH CHECK ADD  CONSTRAINT [FK_HorarioDetalle_Horario] FOREIGN KEY([IdEmpresa], [IdHorario])
REFERENCES [dbo].[Horario] ([IdEmpresa], [IdHorario])
GO
ALTER TABLE [dbo].[HorarioDetalle] CHECK CONSTRAINT [FK_HorarioDetalle_Horario]
GO
/****** Object:  ForeignKey [FK_Marcacion_Horario]    Script Date: 06/09/2022 20:03:54 ******/
ALTER TABLE [dbo].[Marcacion]  WITH CHECK ADD  CONSTRAINT [FK_Marcacion_Horario] FOREIGN KEY([IdEmpresa], [IdHorario])
REFERENCES [dbo].[Horario] ([IdEmpresa], [IdHorario])
GO
ALTER TABLE [dbo].[Marcacion] CHECK CONSTRAINT [FK_Marcacion_Horario]
GO
/****** Object:  ForeignKey [FK_Permiso_Empleado]    Script Date: 06/09/2022 20:03:54 ******/
ALTER TABLE [dbo].[Permiso]  WITH CHECK ADD  CONSTRAINT [FK_Permiso_Empleado] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[Permiso] CHECK CONSTRAINT [FK_Permiso_Empleado]
GO
/****** Object:  ForeignKey [FK_RolMenu_Menu]    Script Date: 06/09/2022 20:03:54 ******/
ALTER TABLE [dbo].[RolMenu]  WITH CHECK ADD  CONSTRAINT [FK_RolMenu_Menu] FOREIGN KEY([IdEmpresa], [IdMenu])
REFERENCES [dbo].[Menu] ([IdEmpresa], [IdMenu])
GO
ALTER TABLE [dbo].[RolMenu] CHECK CONSTRAINT [FK_RolMenu_Menu]
GO
/****** Object:  ForeignKey [FK_RolMenu_Rol]    Script Date: 06/09/2022 20:03:54 ******/
ALTER TABLE [dbo].[RolMenu]  WITH CHECK ADD  CONSTRAINT [FK_RolMenu_Rol] FOREIGN KEY([IdEmpresa], [IdRol])
REFERENCES [dbo].[Rol] ([IdEmpresa], [IdRol])
GO
ALTER TABLE [dbo].[RolMenu] CHECK CONSTRAINT [FK_RolMenu_Rol]
GO
/****** Object:  ForeignKey [FK_Usuario_Rol]    Script Date: 06/09/2022 20:03:54 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol] FOREIGN KEY([IdEmpresa], [IdRol])
REFERENCES [dbo].[Rol] ([IdEmpresa], [IdRol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Rol]
GO
/****** Object:  ForeignKey [FK_UsuarioMenu_Menu]    Script Date: 06/09/2022 20:03:54 ******/
ALTER TABLE [dbo].[UsuarioMenu]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioMenu_Menu] FOREIGN KEY([IdEmpresa], [IdMenu])
REFERENCES [dbo].[Menu] ([IdEmpresa], [IdMenu])
GO
ALTER TABLE [dbo].[UsuarioMenu] CHECK CONSTRAINT [FK_UsuarioMenu_Menu]
GO
/****** Object:  ForeignKey [FK_UsuarioMenu_Usuario]    Script Date: 06/09/2022 20:03:54 ******/
ALTER TABLE [dbo].[UsuarioMenu]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioMenu_Usuario] FOREIGN KEY([IdEmpresa], [IdUsuario])
REFERENCES [dbo].[Usuario] ([IdEmpresa], [IdUsuario])
GO
ALTER TABLE [dbo].[UsuarioMenu] CHECK CONSTRAINT [FK_UsuarioMenu_Usuario]
GO
