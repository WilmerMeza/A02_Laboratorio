--Ponemos en uso la base de datos master
USE master;
GO
--Creamos una base de datos utilizando T-SQL
CREATE DATABASE dbCompras
ON PRIMARY
(NAME='dbCompras01', FILENAME='C:\DataDB\dbCompras01.mdf',
SIZE=10MB, MAXSIZE=20,FILEGROWTH=10%)
LOG ON
(NAME='dbCompras_log', FILENAME='C:\DataDB\dbCompras_log.ldf',
SIZE=10MB,MAXSIZE=200, FILEGROWTH=20%);
GO
--Creamos una base de datos utilizando T-SQL
CREATE DATABASE dbVentas
ON PRIMARY
(NAME='dbVentas01', FILENAME='C:\DataDB\dbVentas.mdf',
SIZE=10MB, MAXSIZE=20,FILEGROWTH=10%)
LOG ON
(NAME='dbVentas_log', FILENAME='C:\DataDB\dbVentas_log.ldf',
SIZE=10MB,MAXSIZE=200, FILEGROWTH=20%);
GO