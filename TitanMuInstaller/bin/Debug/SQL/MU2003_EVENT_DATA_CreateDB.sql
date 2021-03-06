IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'MU2003_EVENT_DATA')
	DROP DATABASE [MU2003_EVENT_DATA]
GO

CREATE DATABASE [MU2003_EVENT_DATA]  ON 
(
	NAME = N'MU2003_EVENT_DATA_Data', 
	FILENAME = N'C:\MuDBS\MU2003_EVENT_DATA_Data.MDF' , 
	SIZE = 3, FILEGROWTH = 10%
) 
LOG ON 
(
	NAME = N'MU2003_EVENT_DATA_Log', 
	FILENAME = N'C:\MuDBS\MU2003_EVENT_DATA_Log.LDF' , 
	SIZE = 3, FILEGROWTH = 10%
)
GO

use [MU2003_EVENT_DATA]
GO
