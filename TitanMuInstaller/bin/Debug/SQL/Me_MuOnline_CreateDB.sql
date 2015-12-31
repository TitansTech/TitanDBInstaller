IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'Me_MuOnline')
	DROP DATABASE [Me_MuOnline]
GO

CREATE DATABASE [Me_MuOnline]  ON 
(
	NAME = N'Me_MuOnline_Data', 
	FILENAME = N'C:\MuDBS\Me_MuOnline_Data.MDF' , 
	SIZE = 3, FILEGROWTH = 10%
) 
LOG ON 
(
	NAME = N'Me_MuOnline_Log', 
	FILENAME = N'C:\MuDBS\Me_MuOnline_Log.LDF' , 
	SIZE = 3, FILEGROWTH = 10%
)
GO

use [Me_MuOnline]
GO
