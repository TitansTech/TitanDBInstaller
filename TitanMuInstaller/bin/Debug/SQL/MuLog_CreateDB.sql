IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'MuLog')
	DROP DATABASE [MuLog]
GO

CREATE DATABASE [MuLog]  ON 
(
	NAME = N'MuLog_Data', 
	FILENAME = N'C:\MuDBS\MuLog_Data.MDF' , 
	SIZE = 3, FILEGROWTH = 10%
) 
LOG ON 
(
	NAME = N'MuLog_Log', 
	FILENAME = N'C:\MuDBS\MuLog_Log.LDF' , 
	SIZE = 3, FILEGROWTH = 10%
)
GO

use [MuLog]
GO
