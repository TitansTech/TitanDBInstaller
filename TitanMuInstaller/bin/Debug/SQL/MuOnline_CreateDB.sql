IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'MuOnline')
	DROP DATABASE [MuOnline]
GO

CREATE DATABASE [MuOnline]  ON 
(
	NAME = N'MuOnline_Data', 
	FILENAME = N'C:\MuDBS\MuOnline_Data.MDF' , 
	SIZE = 3, FILEGROWTH = 10%
) 
LOG ON 
(
	NAME = N'MuOnline_Log', 
	FILENAME = N'C:\MuDBS\MuOnline_Log.LDF' , 
	SIZE = 3, FILEGROWTH = 10%
)
GO

use [MuOnline]
GO
