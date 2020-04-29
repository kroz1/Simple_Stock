
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/29/2020 15:12:03
-- Generated from EDMX file: C:\Users\edgar\OneDrive\Documentos\Visual Studio 2019\Projects\Simple_Stock\Simple_Stock\Models\ModelStock.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [simple_stock];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__centroded__id_ca__25869641]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[centrodedatos] DROP CONSTRAINT [FK__centroded__id_ca__25869641];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__id_ac__34C8D9D1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_access] DROP CONSTRAINT [FK__historial__id_ac__34C8D9D1];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__id_al__37A5467C]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_almacenamiento] DROP CONSTRAINT [FK__historial__id_al__37A5467C];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__id_ce__3A81B327]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_centro] DROP CONSTRAINT [FK__historial__id_ce__3A81B327];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__id_co__3D5E1FD2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_conmutador] DROP CONSTRAINT [FK__historial__id_co__3D5E1FD2];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__id_di__403A8C7D]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_disprespaldo] DROP CONSTRAINT [FK__historial__id_di__403A8C7D];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__id_en__4316F928]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_enlace] DROP CONSTRAINT [FK__historial__id_en__4316F928];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__id_pr__2F10007B]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial] DROP CONSTRAINT [FK__historial__id_pr__2F10007B];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__id_se__49C3F6B7]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_servidor] DROP CONSTRAINT [FK__historial__id_se__49C3F6B7];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__id_sw__5070F446]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_switrout] DROP CONSTRAINT [FK__historial__id_sw__5070F446];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__user___35BCFE0A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_access] DROP CONSTRAINT [FK__historial__user___35BCFE0A];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__user___38996AB5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_almacenamiento] DROP CONSTRAINT [FK__historial__user___38996AB5];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__user___3B75D760]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_centro] DROP CONSTRAINT [FK__historial__user___3B75D760];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__user___3E52440B]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_conmutador] DROP CONSTRAINT [FK__historial__user___3E52440B];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__user___412EB0B6]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_disprespaldo] DROP CONSTRAINT [FK__historial__user___412EB0B6];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__user___440B1D61]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_enlace] DROP CONSTRAINT [FK__historial__user___440B1D61];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__user___4AB81AF0]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_servidor] DROP CONSTRAINT [FK__historial__user___4AB81AF0];
GO
IF OBJECT_ID(N'[dbo].[FK__historial__user___5165187F]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_switrout] DROP CONSTRAINT [FK__historial__user___5165187F];
GO
IF OBJECT_ID(N'[dbo].[FK__servidore__id_ca__47DBAE45]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[servidores] DROP CONSTRAINT [FK__servidore__id_ca__47DBAE45];
GO
IF OBJECT_ID(N'[dbo].[FK__switrout__id_cat__4E88ABD4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[switrout] DROP CONSTRAINT [FK__switrout__id_cat__4E88ABD4];
GO
IF OBJECT_ID(N'[dbo].[fk_id_accesspoint]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_access] DROP CONSTRAINT [fk_id_accesspoint];
GO
IF OBJECT_ID(N'[dbo].[fk_id_almacenamiento]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_almacenamiento] DROP CONSTRAINT [fk_id_almacenamiento];
GO
IF OBJECT_ID(N'[dbo].[fk_id_centro]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_centro] DROP CONSTRAINT [fk_id_centro];
GO
IF OBJECT_ID(N'[dbo].[fk_id_conmutador]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_conmutador] DROP CONSTRAINT [fk_id_conmutador];
GO
IF OBJECT_ID(N'[dbo].[fk_id_disprespaldo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_disprespaldo] DROP CONSTRAINT [fk_id_disprespaldo];
GO
IF OBJECT_ID(N'[dbo].[fk_id_enlaces]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_enlace] DROP CONSTRAINT [fk_id_enlaces];
GO
IF OBJECT_ID(N'[dbo].[fk_id_producto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial] DROP CONSTRAINT [fk_id_producto];
GO
IF OBJECT_ID(N'[dbo].[fk_id_servidor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_servidor] DROP CONSTRAINT [fk_id_servidor];
GO
IF OBJECT_ID(N'[dbo].[fk_id_switrout]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historial_switrout] DROP CONSTRAINT [fk_id_switrout];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[accesspoint]', 'U') IS NOT NULL
    DROP TABLE [dbo].[accesspoint];
GO
IF OBJECT_ID(N'[dbo].[almacenamiento]', 'U') IS NOT NULL
    DROP TABLE [dbo].[almacenamiento];
GO
IF OBJECT_ID(N'[dbo].[categorias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[categorias];
GO
IF OBJECT_ID(N'[dbo].[centrodedatos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[centrodedatos];
GO
IF OBJECT_ID(N'[dbo].[conmutador]', 'U') IS NOT NULL
    DROP TABLE [dbo].[conmutador];
GO
IF OBJECT_ID(N'[dbo].[disprespaldo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[disprespaldo];
GO
IF OBJECT_ID(N'[dbo].[enlaces]', 'U') IS NOT NULL
    DROP TABLE [dbo].[enlaces];
GO
IF OBJECT_ID(N'[dbo].[historial]', 'U') IS NOT NULL
    DROP TABLE [dbo].[historial];
GO
IF OBJECT_ID(N'[dbo].[historial_access]', 'U') IS NOT NULL
    DROP TABLE [dbo].[historial_access];
GO
IF OBJECT_ID(N'[dbo].[historial_almacenamiento]', 'U') IS NOT NULL
    DROP TABLE [dbo].[historial_almacenamiento];
GO
IF OBJECT_ID(N'[dbo].[historial_centro]', 'U') IS NOT NULL
    DROP TABLE [dbo].[historial_centro];
GO
IF OBJECT_ID(N'[dbo].[historial_conmutador]', 'U') IS NOT NULL
    DROP TABLE [dbo].[historial_conmutador];
GO
IF OBJECT_ID(N'[dbo].[historial_disprespaldo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[historial_disprespaldo];
GO
IF OBJECT_ID(N'[dbo].[historial_enlace]', 'U') IS NOT NULL
    DROP TABLE [dbo].[historial_enlace];
GO
IF OBJECT_ID(N'[dbo].[historial_servidor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[historial_servidor];
GO
IF OBJECT_ID(N'[dbo].[historial_switrout]', 'U') IS NOT NULL
    DROP TABLE [dbo].[historial_switrout];
GO
IF OBJECT_ID(N'[dbo].[products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[products];
GO
IF OBJECT_ID(N'[dbo].[servidores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[servidores];
GO
IF OBJECT_ID(N'[dbo].[switrout]', 'U') IS NOT NULL
    DROP TABLE [dbo].[switrout];
GO
IF OBJECT_ID(N'[dbo].[users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'accesspoint'
CREATE TABLE [dbo].[accesspoint] (
    [id_accesspoint] int IDENTITY(1,1) NOT NULL,
    [codigo] int  NOT NULL,
    [nombre] varchar(100)  NOT NULL,
    [estatus] varchar(100)  NOT NULL,
    [asignado] varchar(100)  NOT NULL,
    [num_inventario] int  NOT NULL,
    [marca] varchar(100)  NOT NULL,
    [modelo] varchar(100)  NOT NULL,
    [num_serie] varchar(100)  NOT NULL,
    [mac_address] int  NOT NULL,
    [tipo_seguridad] varchar(100)  NOT NULL,
    [observaciones] varchar(200)  NOT NULL,
    [id_categoria] int  NOT NULL,
    [url_image] varchar(255)  NOT NULL
);
GO

-- Creating table 'almacenamiento'
CREATE TABLE [dbo].[almacenamiento] (
    [id_almacenamiento] int IDENTITY(1,1) NOT NULL,
    [nombre_almacen] varchar(100)  NOT NULL,
    [stock_almacen] int  NOT NULL,
    [tipo] varchar(100)  NOT NULL,
    [marca] varchar(100)  NOT NULL,
    [modelo] varchar(100)  NOT NULL,
    [num_serie] varchar(100)  NOT NULL,
    [capacidad] int  NOT NULL,
    [conectividad] varchar(100)  NOT NULL,
    [id_categoria] int  NOT NULL,
    [url_image] varchar(255)  NOT NULL
);
GO

-- Creating table 'categorias'
CREATE TABLE [dbo].[categorias] (
    [id_categoria] int IDENTITY(1,1) NOT NULL,
    [nombre_categoria] varchar(255)  NOT NULL,
    [descripcion_categoria] varchar(255)  NOT NULL,
    [date_added] datetime  NOT NULL
);
GO

-- Creating table 'centrodedatos'
CREATE TABLE [dbo].[centrodedatos] (
    [id_centro] int IDENTITY(1,1) NOT NULL,
    [nombre_centro] varchar(100)  NOT NULL,
    [stock_center] int  NOT NULL,
    [planta_emergencia] varchar(100)  NOT NULL,
    [ups] varchar(100)  NOT NULL,
    [aire_acondicionado] varchar(100)  NOT NULL,
    [generalidades] varchar(100)  NOT NULL,
    [id_categoria] int  NOT NULL,
    [url_image] varchar(255)  NOT NULL
);
GO

-- Creating table 'conmutador'
CREATE TABLE [dbo].[conmutador] (
    [id_conmutador] int IDENTITY(1,1) NOT NULL,
    [nombre_conmutador] varchar(100)  NOT NULL,
    [num_inventario] int  NOT NULL,
    [marca] varchar(100)  NOT NULL,
    [modelo] varchar(100)  NOT NULL,
    [num_serie] varchar(100)  NOT NULL,
    [tecnologia] varchar(100)  NOT NULL,
    [cant_entrantes] int  NOT NULL,
    [cant_extensiones] int  NOT NULL,
    [observaciones] varchar(200)  NOT NULL,
    [id_categoria] int  NOT NULL,
    [url_image] varchar(255)  NOT NULL
);
GO

-- Creating table 'disprespaldo'
CREATE TABLE [dbo].[disprespaldo] (
    [id_disprespaldo] int IDENTITY(1,1) NOT NULL,
    [nombre_resp] varchar(100)  NOT NULL,
    [num_inventario] int  NOT NULL,
    [tipo] varchar(100)  NOT NULL,
    [marca] varchar(100)  NOT NULL,
    [modelo] varchar(100)  NOT NULL,
    [num_serie] varchar(100)  NOT NULL,
    [herramienta_resp] varchar(100)  NOT NULL,
    [tipo_medio] varchar(100)  NOT NULL,
    [informacion] varchar(200)  NOT NULL,
    [periodicidad] varchar(100)  NOT NULL,
    [lugar_resguardo] varchar(100)  NOT NULL,
    [id_categoria] int  NOT NULL,
    [url_image] varchar(255)  NOT NULL
);
GO

-- Creating table 'enlaces'
CREATE TABLE [dbo].[enlaces] (
    [id_enlaces] int IDENTITY(1,1) NOT NULL,
    [nombre_enlace] varchar(100)  NOT NULL,
    [num_inventario] int  NOT NULL,
    [marca] varchar(100)  NOT NULL,
    [modelo] varchar(100)  NOT NULL,
    [num_serie] varchar(100)  NOT NULL,
    [ancho_banda] int  NOT NULL,
    [frecuencia] int  NOT NULL,
    [observaciones] varchar(200)  NOT NULL,
    [id_categoria] int  NOT NULL,
    [url_image] varchar(255)  NOT NULL
);
GO

-- Creating table 'historial'
CREATE TABLE [dbo].[historial] (
    [id_historial] int IDENTITY(1,1) NOT NULL,
    [id_producto] int  NOT NULL,
    [user_id] int  NOT NULL,
    [fecha] datetime  NOT NULL,
    [nota] varchar(255)  NOT NULL,
    [referencia] varchar(100)  NOT NULL,
    [cantidad] int  NOT NULL
);
GO

-- Creating table 'historial_access'
CREATE TABLE [dbo].[historial_access] (
    [id_historial] int IDENTITY(1,1) NOT NULL,
    [id_accesspoint] int  NOT NULL,
    [user_id] int  NOT NULL,
    [fecha] datetime  NOT NULL,
    [nota] varchar(255)  NOT NULL,
    [referencia] varchar(100)  NOT NULL,
    [cantidad] int  NOT NULL
);
GO

-- Creating table 'historial_almacenamiento'
CREATE TABLE [dbo].[historial_almacenamiento] (
    [id_historial] int IDENTITY(1,1) NOT NULL,
    [id_almacenamiento] int  NOT NULL,
    [user_id] int  NOT NULL,
    [fecha] datetime  NOT NULL,
    [nota] varchar(255)  NOT NULL,
    [referencia] varchar(255)  NOT NULL,
    [cantidad] int  NOT NULL
);
GO

-- Creating table 'historial_centro'
CREATE TABLE [dbo].[historial_centro] (
    [id_historial] int IDENTITY(1,1) NOT NULL,
    [id_centro] int  NOT NULL,
    [user_id] int  NOT NULL,
    [fecha] datetime  NOT NULL,
    [nota] varchar(255)  NOT NULL,
    [referencia] varchar(255)  NOT NULL,
    [cantidad] int  NOT NULL
);
GO

-- Creating table 'historial_conmutador'
CREATE TABLE [dbo].[historial_conmutador] (
    [id_historial] int IDENTITY(1,1) NOT NULL,
    [id_conmutador] int  NOT NULL,
    [user_id] int  NOT NULL,
    [fecha] datetime  NOT NULL,
    [nota] varchar(255)  NOT NULL,
    [referencia] varchar(255)  NOT NULL,
    [cantidad] int  NOT NULL
);
GO

-- Creating table 'historial_disprespaldo'
CREATE TABLE [dbo].[historial_disprespaldo] (
    [id_historial] int IDENTITY(1,1) NOT NULL,
    [id_disprespaldo] int  NOT NULL,
    [user_id] int  NOT NULL,
    [fecha] datetime  NOT NULL,
    [nota] varchar(255)  NOT NULL,
    [referencia] varchar(255)  NOT NULL,
    [cantidad] int  NOT NULL
);
GO

-- Creating table 'historial_enlace'
CREATE TABLE [dbo].[historial_enlace] (
    [id_historial] int IDENTITY(1,1) NOT NULL,
    [id_enlaces] int  NOT NULL,
    [user_id] int  NOT NULL,
    [fecha] datetime  NOT NULL,
    [nota] varchar(255)  NOT NULL,
    [referencia] varchar(255)  NOT NULL,
    [cantidad] int  NOT NULL
);
GO

-- Creating table 'historial_servidor'
CREATE TABLE [dbo].[historial_servidor] (
    [id_historial] int IDENTITY(1,1) NOT NULL,
    [id_servidor] int  NOT NULL,
    [user_id] int  NOT NULL,
    [fecha] datetime  NOT NULL,
    [nota] varchar(255)  NOT NULL,
    [referencia] varchar(255)  NOT NULL,
    [cantidad] int  NOT NULL
);
GO

-- Creating table 'historial_switrout'
CREATE TABLE [dbo].[historial_switrout] (
    [id_historial] int IDENTITY(1,1) NOT NULL,
    [id_switrout] int  NOT NULL,
    [user_id] int  NOT NULL,
    [fecha] datetime  NOT NULL,
    [nota] varchar(255)  NOT NULL,
    [referencia] varchar(255)  NOT NULL,
    [cantidad] int  NOT NULL
);
GO

-- Creating table 'products'
CREATE TABLE [dbo].[products] (
    [id_producto] int IDENTITY(1,1) NOT NULL,
    [codigo_producto] char(20)  NOT NULL,
    [nombre_producto] char(255)  NOT NULL,
    [asignado] varchar(100)  NOT NULL,
    [stock] int  NOT NULL,
    [marca] varchar(100)  NOT NULL,
    [modelo] varchar(100)  NOT NULL,
    [serie] varchar(100)  NOT NULL,
    [tipo] varchar(100)  NOT NULL,
    [ubicacion] varchar(100)  NOT NULL,
    [estado] varchar(100)  NOT NULL,
    [date_added] datetime  NOT NULL,
    [observaciones] varchar(200)  NOT NULL,
    [id_categoria] int  NOT NULL,
    [url_image] varchar(255)  NOT NULL
);
GO

-- Creating table 'servidores'
CREATE TABLE [dbo].[servidores] (
    [id_servidor] int IDENTITY(1,1) NOT NULL,
    [num_inventario] int  NOT NULL,
    [marca] varchar(100)  NOT NULL,
    [modelo] varchar(100)  NOT NULL,
    [num_serie] varchar(100)  NOT NULL,
    [tipo_servidor] varchar(100)  NOT NULL,
    [nom_servidor] varchar(100)  NOT NULL,
    [ip_servidor] varchar(100)  NOT NULL,
    [num_procesadores] int  NOT NULL,
    [tipo_procesador] varchar(100)  NOT NULL,
    [vel_procesador] varchar(100)  NOT NULL,
    [nivel_arreglo_discos] int  NOT NULL,
    [capacidad_almto] int  NOT NULL,
    [mem_ram] int  NOT NULL,
    [sist_operativos] varchar(100)  NOT NULL,
    [aplic_principales] varchar(100)  NOT NULL,
    [cuenta_disp] varchar(100)  NOT NULL,
    [interconectado_disp] varchar(100)  NOT NULL,
    [esquema_virtual] varchar(10)  NOT NULL,
    [observaciones] varchar(200)  NOT NULL,
    [id_categoria] int  NOT NULL,
    [url_image] varchar(255)  NOT NULL
);
GO

-- Creating table 'switrout'
CREATE TABLE [dbo].[switrout] (
    [id_switrout] int IDENTITY(1,1) NOT NULL,
    [nombre_sr] varchar(100)  NOT NULL,
    [tipo] varchar(100)  NOT NULL,
    [num_inventario] int  NOT NULL,
    [marca] varchar(100)  NOT NULL,
    [modelo] varchar(100)  NOT NULL,
    [num_serie] varchar(100)  NOT NULL,
    [vel_transmicion] int  NOT NULL,
    [num_puertos] int  NOT NULL,
    [observaciones] varchar(200)  NOT NULL,
    [id_categoria] int  NOT NULL,
    [url_image] varchar(255)  NOT NULL
);
GO

-- Creating table 'users'
CREATE TABLE [dbo].[users] (
    [user_id] int IDENTITY(1,1) NOT NULL,
    [firstname] varchar(20)  NULL,
    [lastname] varchar(20)  NULL,
    [user_name] varchar(64)  NULL,
    [user_password_hash] varchar(255)  NULL,
    [user_email] varchar(64)  NULL,
    [date_added] datetime  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_accesspoint] in table 'accesspoint'
ALTER TABLE [dbo].[accesspoint]
ADD CONSTRAINT [PK_accesspoint]
    PRIMARY KEY CLUSTERED ([id_accesspoint] ASC);
GO

-- Creating primary key on [id_almacenamiento] in table 'almacenamiento'
ALTER TABLE [dbo].[almacenamiento]
ADD CONSTRAINT [PK_almacenamiento]
    PRIMARY KEY CLUSTERED ([id_almacenamiento] ASC);
GO

-- Creating primary key on [id_categoria] in table 'categorias'
ALTER TABLE [dbo].[categorias]
ADD CONSTRAINT [PK_categorias]
    PRIMARY KEY CLUSTERED ([id_categoria] ASC);
GO

-- Creating primary key on [id_centro] in table 'centrodedatos'
ALTER TABLE [dbo].[centrodedatos]
ADD CONSTRAINT [PK_centrodedatos]
    PRIMARY KEY CLUSTERED ([id_centro] ASC);
GO

-- Creating primary key on [id_conmutador] in table 'conmutador'
ALTER TABLE [dbo].[conmutador]
ADD CONSTRAINT [PK_conmutador]
    PRIMARY KEY CLUSTERED ([id_conmutador] ASC);
GO

-- Creating primary key on [id_disprespaldo] in table 'disprespaldo'
ALTER TABLE [dbo].[disprespaldo]
ADD CONSTRAINT [PK_disprespaldo]
    PRIMARY KEY CLUSTERED ([id_disprespaldo] ASC);
GO

-- Creating primary key on [id_enlaces] in table 'enlaces'
ALTER TABLE [dbo].[enlaces]
ADD CONSTRAINT [PK_enlaces]
    PRIMARY KEY CLUSTERED ([id_enlaces] ASC);
GO

-- Creating primary key on [id_historial] in table 'historial'
ALTER TABLE [dbo].[historial]
ADD CONSTRAINT [PK_historial]
    PRIMARY KEY CLUSTERED ([id_historial] ASC);
GO

-- Creating primary key on [id_historial] in table 'historial_access'
ALTER TABLE [dbo].[historial_access]
ADD CONSTRAINT [PK_historial_access]
    PRIMARY KEY CLUSTERED ([id_historial] ASC);
GO

-- Creating primary key on [id_historial] in table 'historial_almacenamiento'
ALTER TABLE [dbo].[historial_almacenamiento]
ADD CONSTRAINT [PK_historial_almacenamiento]
    PRIMARY KEY CLUSTERED ([id_historial] ASC);
GO

-- Creating primary key on [id_historial] in table 'historial_centro'
ALTER TABLE [dbo].[historial_centro]
ADD CONSTRAINT [PK_historial_centro]
    PRIMARY KEY CLUSTERED ([id_historial] ASC);
GO

-- Creating primary key on [id_historial] in table 'historial_conmutador'
ALTER TABLE [dbo].[historial_conmutador]
ADD CONSTRAINT [PK_historial_conmutador]
    PRIMARY KEY CLUSTERED ([id_historial] ASC);
GO

-- Creating primary key on [id_historial] in table 'historial_disprespaldo'
ALTER TABLE [dbo].[historial_disprespaldo]
ADD CONSTRAINT [PK_historial_disprespaldo]
    PRIMARY KEY CLUSTERED ([id_historial] ASC);
GO

-- Creating primary key on [id_historial] in table 'historial_enlace'
ALTER TABLE [dbo].[historial_enlace]
ADD CONSTRAINT [PK_historial_enlace]
    PRIMARY KEY CLUSTERED ([id_historial] ASC);
GO

-- Creating primary key on [id_historial] in table 'historial_servidor'
ALTER TABLE [dbo].[historial_servidor]
ADD CONSTRAINT [PK_historial_servidor]
    PRIMARY KEY CLUSTERED ([id_historial] ASC);
GO

-- Creating primary key on [id_historial] in table 'historial_switrout'
ALTER TABLE [dbo].[historial_switrout]
ADD CONSTRAINT [PK_historial_switrout]
    PRIMARY KEY CLUSTERED ([id_historial] ASC);
GO

-- Creating primary key on [id_producto] in table 'products'
ALTER TABLE [dbo].[products]
ADD CONSTRAINT [PK_products]
    PRIMARY KEY CLUSTERED ([id_producto] ASC);
GO

-- Creating primary key on [id_servidor] in table 'servidores'
ALTER TABLE [dbo].[servidores]
ADD CONSTRAINT [PK_servidores]
    PRIMARY KEY CLUSTERED ([id_servidor] ASC);
GO

-- Creating primary key on [id_switrout] in table 'switrout'
ALTER TABLE [dbo].[switrout]
ADD CONSTRAINT [PK_switrout]
    PRIMARY KEY CLUSTERED ([id_switrout] ASC);
GO

-- Creating primary key on [user_id] in table 'users'
ALTER TABLE [dbo].[users]
ADD CONSTRAINT [PK_users]
    PRIMARY KEY CLUSTERED ([user_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [id_accesspoint] in table 'historial_access'
ALTER TABLE [dbo].[historial_access]
ADD CONSTRAINT [FK__historial__id_ac__34C8D9D1]
    FOREIGN KEY ([id_accesspoint])
    REFERENCES [dbo].[accesspoint]
        ([id_accesspoint])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__id_ac__34C8D9D1'
CREATE INDEX [IX_FK__historial__id_ac__34C8D9D1]
ON [dbo].[historial_access]
    ([id_accesspoint]);
GO

-- Creating foreign key on [id_accesspoint] in table 'historial_access'
ALTER TABLE [dbo].[historial_access]
ADD CONSTRAINT [fk_id_accesspoint]
    FOREIGN KEY ([id_accesspoint])
    REFERENCES [dbo].[accesspoint]
        ([id_accesspoint])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_id_accesspoint'
CREATE INDEX [IX_fk_id_accesspoint]
ON [dbo].[historial_access]
    ([id_accesspoint]);
GO

-- Creating foreign key on [id_almacenamiento] in table 'historial_almacenamiento'
ALTER TABLE [dbo].[historial_almacenamiento]
ADD CONSTRAINT [FK__historial__id_al__37A5467C]
    FOREIGN KEY ([id_almacenamiento])
    REFERENCES [dbo].[almacenamiento]
        ([id_almacenamiento])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__id_al__37A5467C'
CREATE INDEX [IX_FK__historial__id_al__37A5467C]
ON [dbo].[historial_almacenamiento]
    ([id_almacenamiento]);
GO

-- Creating foreign key on [id_almacenamiento] in table 'historial_almacenamiento'
ALTER TABLE [dbo].[historial_almacenamiento]
ADD CONSTRAINT [fk_id_almacenamiento]
    FOREIGN KEY ([id_almacenamiento])
    REFERENCES [dbo].[almacenamiento]
        ([id_almacenamiento])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_id_almacenamiento'
CREATE INDEX [IX_fk_id_almacenamiento]
ON [dbo].[historial_almacenamiento]
    ([id_almacenamiento]);
GO

-- Creating foreign key on [id_categoria] in table 'centrodedatos'
ALTER TABLE [dbo].[centrodedatos]
ADD CONSTRAINT [FK__centroded__id_ca__25869641]
    FOREIGN KEY ([id_categoria])
    REFERENCES [dbo].[categorias]
        ([id_categoria])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__centroded__id_ca__25869641'
CREATE INDEX [IX_FK__centroded__id_ca__25869641]
ON [dbo].[centrodedatos]
    ([id_categoria]);
GO

-- Creating foreign key on [id_categoria] in table 'servidores'
ALTER TABLE [dbo].[servidores]
ADD CONSTRAINT [FK__servidore__id_ca__47DBAE45]
    FOREIGN KEY ([id_categoria])
    REFERENCES [dbo].[categorias]
        ([id_categoria])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__servidore__id_ca__47DBAE45'
CREATE INDEX [IX_FK__servidore__id_ca__47DBAE45]
ON [dbo].[servidores]
    ([id_categoria]);
GO

-- Creating foreign key on [id_categoria] in table 'switrout'
ALTER TABLE [dbo].[switrout]
ADD CONSTRAINT [FK__switrout__id_cat__4E88ABD4]
    FOREIGN KEY ([id_categoria])
    REFERENCES [dbo].[categorias]
        ([id_categoria])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__switrout__id_cat__4E88ABD4'
CREATE INDEX [IX_FK__switrout__id_cat__4E88ABD4]
ON [dbo].[switrout]
    ([id_categoria]);
GO

-- Creating foreign key on [id_centro] in table 'historial_centro'
ALTER TABLE [dbo].[historial_centro]
ADD CONSTRAINT [FK__historial__id_ce__3A81B327]
    FOREIGN KEY ([id_centro])
    REFERENCES [dbo].[centrodedatos]
        ([id_centro])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__id_ce__3A81B327'
CREATE INDEX [IX_FK__historial__id_ce__3A81B327]
ON [dbo].[historial_centro]
    ([id_centro]);
GO

-- Creating foreign key on [id_centro] in table 'historial_centro'
ALTER TABLE [dbo].[historial_centro]
ADD CONSTRAINT [fk_id_centro]
    FOREIGN KEY ([id_centro])
    REFERENCES [dbo].[centrodedatos]
        ([id_centro])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_id_centro'
CREATE INDEX [IX_fk_id_centro]
ON [dbo].[historial_centro]
    ([id_centro]);
GO

-- Creating foreign key on [id_conmutador] in table 'historial_conmutador'
ALTER TABLE [dbo].[historial_conmutador]
ADD CONSTRAINT [FK__historial__id_co__3D5E1FD2]
    FOREIGN KEY ([id_conmutador])
    REFERENCES [dbo].[conmutador]
        ([id_conmutador])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__id_co__3D5E1FD2'
CREATE INDEX [IX_FK__historial__id_co__3D5E1FD2]
ON [dbo].[historial_conmutador]
    ([id_conmutador]);
GO

-- Creating foreign key on [id_conmutador] in table 'historial_conmutador'
ALTER TABLE [dbo].[historial_conmutador]
ADD CONSTRAINT [fk_id_conmutador]
    FOREIGN KEY ([id_conmutador])
    REFERENCES [dbo].[conmutador]
        ([id_conmutador])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_id_conmutador'
CREATE INDEX [IX_fk_id_conmutador]
ON [dbo].[historial_conmutador]
    ([id_conmutador]);
GO

-- Creating foreign key on [id_disprespaldo] in table 'historial_disprespaldo'
ALTER TABLE [dbo].[historial_disprespaldo]
ADD CONSTRAINT [FK__historial__id_di__403A8C7D]
    FOREIGN KEY ([id_disprespaldo])
    REFERENCES [dbo].[disprespaldo]
        ([id_disprespaldo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__id_di__403A8C7D'
CREATE INDEX [IX_FK__historial__id_di__403A8C7D]
ON [dbo].[historial_disprespaldo]
    ([id_disprespaldo]);
GO

-- Creating foreign key on [id_disprespaldo] in table 'historial_disprespaldo'
ALTER TABLE [dbo].[historial_disprespaldo]
ADD CONSTRAINT [fk_id_disprespaldo]
    FOREIGN KEY ([id_disprespaldo])
    REFERENCES [dbo].[disprespaldo]
        ([id_disprespaldo])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_id_disprespaldo'
CREATE INDEX [IX_fk_id_disprespaldo]
ON [dbo].[historial_disprespaldo]
    ([id_disprespaldo]);
GO

-- Creating foreign key on [id_enlaces] in table 'historial_enlace'
ALTER TABLE [dbo].[historial_enlace]
ADD CONSTRAINT [FK__historial__id_en__4316F928]
    FOREIGN KEY ([id_enlaces])
    REFERENCES [dbo].[enlaces]
        ([id_enlaces])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__id_en__4316F928'
CREATE INDEX [IX_FK__historial__id_en__4316F928]
ON [dbo].[historial_enlace]
    ([id_enlaces]);
GO

-- Creating foreign key on [id_enlaces] in table 'historial_enlace'
ALTER TABLE [dbo].[historial_enlace]
ADD CONSTRAINT [fk_id_enlaces]
    FOREIGN KEY ([id_enlaces])
    REFERENCES [dbo].[enlaces]
        ([id_enlaces])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_id_enlaces'
CREATE INDEX [IX_fk_id_enlaces]
ON [dbo].[historial_enlace]
    ([id_enlaces]);
GO

-- Creating foreign key on [id_producto] in table 'historial'
ALTER TABLE [dbo].[historial]
ADD CONSTRAINT [FK__historial__id_pr__2F10007B]
    FOREIGN KEY ([id_producto])
    REFERENCES [dbo].[products]
        ([id_producto])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__id_pr__2F10007B'
CREATE INDEX [IX_FK__historial__id_pr__2F10007B]
ON [dbo].[historial]
    ([id_producto]);
GO

-- Creating foreign key on [id_producto] in table 'historial'
ALTER TABLE [dbo].[historial]
ADD CONSTRAINT [fk_id_producto]
    FOREIGN KEY ([id_producto])
    REFERENCES [dbo].[products]
        ([id_producto])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_id_producto'
CREATE INDEX [IX_fk_id_producto]
ON [dbo].[historial]
    ([id_producto]);
GO

-- Creating foreign key on [user_id] in table 'historial_access'
ALTER TABLE [dbo].[historial_access]
ADD CONSTRAINT [FK__historial__user___35BCFE0A]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[users]
        ([user_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__user___35BCFE0A'
CREATE INDEX [IX_FK__historial__user___35BCFE0A]
ON [dbo].[historial_access]
    ([user_id]);
GO

-- Creating foreign key on [user_id] in table 'historial_almacenamiento'
ALTER TABLE [dbo].[historial_almacenamiento]
ADD CONSTRAINT [FK__historial__user___38996AB5]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[users]
        ([user_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__user___38996AB5'
CREATE INDEX [IX_FK__historial__user___38996AB5]
ON [dbo].[historial_almacenamiento]
    ([user_id]);
GO

-- Creating foreign key on [user_id] in table 'historial_centro'
ALTER TABLE [dbo].[historial_centro]
ADD CONSTRAINT [FK__historial__user___3B75D760]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[users]
        ([user_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__user___3B75D760'
CREATE INDEX [IX_FK__historial__user___3B75D760]
ON [dbo].[historial_centro]
    ([user_id]);
GO

-- Creating foreign key on [user_id] in table 'historial_conmutador'
ALTER TABLE [dbo].[historial_conmutador]
ADD CONSTRAINT [FK__historial__user___3E52440B]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[users]
        ([user_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__user___3E52440B'
CREATE INDEX [IX_FK__historial__user___3E52440B]
ON [dbo].[historial_conmutador]
    ([user_id]);
GO

-- Creating foreign key on [user_id] in table 'historial_disprespaldo'
ALTER TABLE [dbo].[historial_disprespaldo]
ADD CONSTRAINT [FK__historial__user___412EB0B6]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[users]
        ([user_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__user___412EB0B6'
CREATE INDEX [IX_FK__historial__user___412EB0B6]
ON [dbo].[historial_disprespaldo]
    ([user_id]);
GO

-- Creating foreign key on [user_id] in table 'historial_enlace'
ALTER TABLE [dbo].[historial_enlace]
ADD CONSTRAINT [FK__historial__user___440B1D61]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[users]
        ([user_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__user___440B1D61'
CREATE INDEX [IX_FK__historial__user___440B1D61]
ON [dbo].[historial_enlace]
    ([user_id]);
GO

-- Creating foreign key on [id_servidor] in table 'historial_servidor'
ALTER TABLE [dbo].[historial_servidor]
ADD CONSTRAINT [FK__historial__id_se__49C3F6B7]
    FOREIGN KEY ([id_servidor])
    REFERENCES [dbo].[servidores]
        ([id_servidor])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__id_se__49C3F6B7'
CREATE INDEX [IX_FK__historial__id_se__49C3F6B7]
ON [dbo].[historial_servidor]
    ([id_servidor]);
GO

-- Creating foreign key on [user_id] in table 'historial_servidor'
ALTER TABLE [dbo].[historial_servidor]
ADD CONSTRAINT [FK__historial__user___4AB81AF0]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[users]
        ([user_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__user___4AB81AF0'
CREATE INDEX [IX_FK__historial__user___4AB81AF0]
ON [dbo].[historial_servidor]
    ([user_id]);
GO

-- Creating foreign key on [id_servidor] in table 'historial_servidor'
ALTER TABLE [dbo].[historial_servidor]
ADD CONSTRAINT [fk_id_servidor]
    FOREIGN KEY ([id_servidor])
    REFERENCES [dbo].[servidores]
        ([id_servidor])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_id_servidor'
CREATE INDEX [IX_fk_id_servidor]
ON [dbo].[historial_servidor]
    ([id_servidor]);
GO

-- Creating foreign key on [id_switrout] in table 'historial_switrout'
ALTER TABLE [dbo].[historial_switrout]
ADD CONSTRAINT [FK__historial__id_sw__5070F446]
    FOREIGN KEY ([id_switrout])
    REFERENCES [dbo].[switrout]
        ([id_switrout])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__id_sw__5070F446'
CREATE INDEX [IX_FK__historial__id_sw__5070F446]
ON [dbo].[historial_switrout]
    ([id_switrout]);
GO

-- Creating foreign key on [user_id] in table 'historial_switrout'
ALTER TABLE [dbo].[historial_switrout]
ADD CONSTRAINT [FK__historial__user___5165187F]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[users]
        ([user_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__historial__user___5165187F'
CREATE INDEX [IX_FK__historial__user___5165187F]
ON [dbo].[historial_switrout]
    ([user_id]);
GO

-- Creating foreign key on [id_switrout] in table 'historial_switrout'
ALTER TABLE [dbo].[historial_switrout]
ADD CONSTRAINT [fk_id_switrout]
    FOREIGN KEY ([id_switrout])
    REFERENCES [dbo].[switrout]
        ([id_switrout])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_id_switrout'
CREATE INDEX [IX_fk_id_switrout]
ON [dbo].[historial_switrout]
    ([id_switrout]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------