--Criando banco
CREATE DATABASE biblioteca ON PRIMARY
(NAME = biblioteca,
FILENAME = 'D:\GitHub\ProjetoBancoDeDados\biblioteca.mdf',
SIZE = 8MB,
MAXSIZE = 15MB,
FILEGROWTH = 10%)
LOG ON (
NAME = casa01_log,
FILENAME = 'D:\GitHub\ProjetoBancoDeDados\biblioteca.ldf',
SIZE = 1MB,
FILEGROWTH = 1MB)
GO

--Consultar banco exitentes
SELECT name
FROM master.sys.databases
ORDER BY name;

-- Outra forma de consultar 

EXEC sp_databases