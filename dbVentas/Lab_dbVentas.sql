USE dbVentas;
go 
CREATE SCHEMA Productos
go
CREATE TABLE Productos.Producto
(
	CODPROD INT NOT NULL IDENTITY(1,1),
	NOMPROD VARCHAR(100) NOT NULL,
	CANTPROD INT NOT NULL,
	PRECPROD DECIMAL(10,2) NOT NULL,
	CATPROD INT NOT NULL,
	CONSTRAINT PK_CODPROD
	PRIMARY KEY (CODPROD)
)
GO
--Agregar la columna Email en la tabla Persona
ALTER TABLE Productos.Producto
	ADD
		SEXPER NCHAR(1),
		EMAILPER VARCHAR(60);
GO
--Eliminar la columna Email en la tabla Persona
ALTER TABLE Productos.Producto
	DROP COLUMN SEXPER
GO

EXEC sp_help 'Productos.Producto'
go

--Renonbrar columna EMAILPER por CORREOPER
SP_RENAME 'Productos.Producto.EMAILPER', 'CORREOPER'
GO

-- ver estructura de una tabla
EXEC sp_help 'Productos.Producto'
GO

CREATE TABLE Ubigeo 
(
CODUBI CHAR (6) NOT NULL,
DISTUBI varchar (100),
PROVUBI varchar (100),
DEPUBI varchar (100),
CONSTRAINT PK_CODUBI
	PRIMARY KEY (CODUBI)
);
CREATE TABLE Categoria 
(
CODCAT int not null IDENTITY(1,1),
NOMCAT varchar (100),
CONSTRAINT PK_CODCAT
	PRIMARY KEY (CODCAT)
);

BACKUP DATABASE dbVentas
to DISK= 'C:\DataDB\Ventas2019.bak'
go

use master
go

drop database dbVentas
GO

restore database dbVentas
	FROM DISK ='C:\DataBD\Ventas2019.bak'
	go