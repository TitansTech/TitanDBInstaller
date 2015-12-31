IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'Ranking')
	DROP DATABASE [Ranking]
GO

CREATE DATABASE [Ranking]  ON 
(
	NAME = N'Ranking_Data', 
	FILENAME = N'C:\MuDBS\Ranking_Data.MDF' , 
	SIZE = 3, FILEGROWTH = 10%
) 
LOG ON 
(
	NAME = N'Ranking_Log', 
	FILENAME = N'C:\MuDBS\Ranking_Log.LDF' , 
	SIZE = 3, FILEGROWTH = 10%
)
GO

use [Ranking]
GO
