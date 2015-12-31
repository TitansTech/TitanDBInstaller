if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_CHECK_BC]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_CHECK_BC]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_ENTER_BC]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_ENTER_BC]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_LEFT_ENTERCOUNT_BC]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_LEFT_ENTERCOUNT_BC]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_POINT_ACCM_BC]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_POINT_ACCM_BC]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_POINT_ACCM_BC_3RD]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_POINT_ACCM_BC_3RD]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_POINT_ACCM_BC_4TH]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_POINT_ACCM_BC_4TH]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_POINT_ACCM_BC_5TH]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_POINT_ACCM_BC_5TH]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_POINT_ACCUMULATION]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_POINT_ACCUMULATION]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[USP_BloodCastle5_Ranking]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[USP_BloodCastle5_Ranking]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[_SP_ENTER_CHECK_BC]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[_SP_ENTER_CHECK_BC]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[_SP_POINT_ACCM_BC]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[_SP_POINT_ACCM_BC]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ChangeCharacter]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ChangeCharacter]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EVENT_INFO]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[EVENT_INFO]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EVENT_INFO_BC]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[EVENT_INFO_BC]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EVENT_INFO_BC_3RD]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[EVENT_INFO_BC_3RD]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EVENT_INFO_BC_4TH]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[EVENT_INFO_BC_4TH]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EVENT_INFO_BC_5TH]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[EVENT_INFO_BC_5TH]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_BC_PCROOM_PLAYCOUNT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_BC_PCROOM_PLAYCOUNT]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_ENTER_CHECK_BC]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_ENTER_CHECK_BC]
GO

CREATE TABLE [dbo].[ChangeCharacter] (
	[Col001] [int] NULL ,
	[Col002] [varchar] (10) NULL ,
	[Col003] [varchar] (10) NULL ,
	[Col004] [varchar] (10) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EVENT_INFO] (
	[Server] [smallint] NOT NULL ,
	[Square] [tinyint] NOT NULL ,
	[AccountID] [varchar] (10) NOT NULL ,
	[CharacterName] [varchar] (10) NOT NULL ,
	[Class] [tinyint] NOT NULL ,
	[Point] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EVENT_INFO_BC] (
	[Server] [smallint] NOT NULL ,
	[Bridge] [tinyint] NOT NULL ,
	[AccountID] [varchar] (10) NOT NULL ,
	[CharacterName] [varchar] (10) NOT NULL ,
	[Class] [tinyint] NOT NULL ,
	[Point] [int] NOT NULL ,
	[PlayCount] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EVENT_INFO_BC_3RD] (
	[Server] [tinyint] NOT NULL ,
	[Bridge] [tinyint] NOT NULL ,
	[AccountID] [varchar] (10) NOT NULL ,
	[CharacterName] [varchar] (10) NOT NULL ,
	[Class] [tinyint] NOT NULL ,
	[Point] [int] NOT NULL ,
	[PlayCount] [int] NOT NULL ,
	[SumLeftTime] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EVENT_INFO_BC_4TH] (
	[Server] [tinyint] NOT NULL ,
	[Bridge] [tinyint] NOT NULL ,
	[AccountID] [varchar] (10) NOT NULL ,
	[CharacterName] [varchar] (10) NOT NULL ,
	[Class] [tinyint] NOT NULL ,
	[Point] [int] NOT NULL ,
	[PlayCount] [int] NOT NULL ,
	[SumLeftTime] [int] NOT NULL ,
	[MinLeftTime] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EVENT_INFO_BC_5TH] (
	[Server] [tinyint] NOT NULL ,
	[Bridge] [tinyint] NOT NULL ,
	[AccountID] [varchar] (10) NOT NULL ,
	[CharacterName] [varchar] (10) NOT NULL ,
	[Class] [tinyint] NOT NULL ,
	[Point] [int] NOT NULL ,
	[PlayCount] [int] NOT NULL ,
	[SumLeftTime] [int] NOT NULL ,
	[MinLeftTime] [int] NOT NULL ,
	[RegDate] [smalldatetime] NOT NULL ,
	[AlivePartyCount] [int] NOT NULL ,
	[MaxPointLeftTime] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_BC_PCROOM_PLAYCOUNT] (
	[PCROOM_GUID] [int] NOT NULL ,
	[AccountID] [varchar] (50) NOT NULL ,
	[PlayCount] [int] NOT NULL ,
	[Point] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_ENTER_CHECK_BC] (
	[AccountID] [varchar] (10) NOT NULL ,
	[CharName] [varchar] (10) NOT NULL ,
	[ServerCode] [smallint] NOT NULL ,
	[ToDayEnterCount] [tinyint] NOT NULL ,
	[LastEnterDate] [smalldatetime] NOT NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EVENT_INFO] WITH NOCHECK ADD 
	CONSTRAINT [PK_EVENT_INFO] PRIMARY KEY  CLUSTERED 
	(
		[Server],
		[Square],
		[AccountID],
		[CharacterName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[EVENT_INFO_BC] WITH NOCHECK ADD 
	CONSTRAINT [PK_EVENT_INFO_BC] PRIMARY KEY  CLUSTERED 
	(
		[Server],
		[Bridge],
		[AccountID],
		[CharacterName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[EVENT_INFO_BC_3RD] WITH NOCHECK ADD 
	CONSTRAINT [PK_EVENT_INFO_BC_3RD] PRIMARY KEY  CLUSTERED 
	(
		[Server],
		[Bridge],
		[AccountID],
		[CharacterName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[EVENT_INFO_BC_4TH] WITH NOCHECK ADD 
	CONSTRAINT [PK_EVENT_INFO_BC_4TH] PRIMARY KEY  CLUSTERED 
	(
		[Server],
		[Bridge],
		[AccountID],
		[CharacterName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[EVENT_INFO_BC_5TH] WITH NOCHECK ADD 
	CONSTRAINT [PK_EVENT_INFO_BC_5TH] PRIMARY KEY  CLUSTERED 
	(
		[Server],
		[Bridge],
		[AccountID],
		[CharacterName],
		[RegDate]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_BC_PCROOM_PLAYCOUNT] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_BC_PCROOM_PLAYCOUNT] PRIMARY KEY  CLUSTERED 
	(
		[PCROOM_GUID],
		[AccountID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_ENTER_CHECK_BC] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_ENTER_CHECK_DS] PRIMARY KEY  CLUSTERED 
	(
		[AccountID],
		[CharName],
		[ServerCode]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[EVENT_INFO_BC] ADD 
	CONSTRAINT [DF_EVENT_INFO_BC_PlayCount] DEFAULT (1) FOR [PlayCount]
GO

ALTER TABLE [dbo].[EVENT_INFO_BC_3RD] ADD 
	CONSTRAINT [DF_EVENT_INFO_BC_3RD_SumLeftTime] DEFAULT (0) FOR [SumLeftTime]
GO

ALTER TABLE [dbo].[EVENT_INFO_BC_4TH] ADD 
	CONSTRAINT [DF_EVENT_INFO_BC_4TH_SumLeftTime] DEFAULT (0) FOR [SumLeftTime],
	CONSTRAINT [DF_EVENT_INFO_BC_4TH_MinLeftTime] DEFAULT (0) FOR [MinLeftTime]
GO

ALTER TABLE [dbo].[EVENT_INFO_BC_5TH] ADD 
	CONSTRAINT [DF_EVENT_INFO_BC_5TH_SumLeftTime] DEFAULT (0) FOR [SumLeftTime],
	CONSTRAINT [DF_EVENT_INFO_BC_5TH_MinLeftTime] DEFAULT (0) FOR [MinLeftTime],
	CONSTRAINT [DF_EVENT_INFO_BC_5TH_MaxPointLeftTime] DEFAULT (0) FOR [MaxPointLeftTime]
GO

 CREATE  INDEX [IX_EVENT_INFO_BC_5TH] ON [dbo].[EVENT_INFO_BC_5TH]([AlivePartyCount], [MinLeftTime], [RegDate], [Server]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_BC_PCROOM_PLAYCOUNT] ADD 
	CONSTRAINT [DF_T_BC_PCROOM_PLAYCOUNT_PlayCount] DEFAULT (1) FOR [PlayCount],
	CONSTRAINT [DF_T_BC_PCROOM_PLAYCOUNT_Point] DEFAULT (0) FOR [Point]
GO

ALTER TABLE [dbo].[T_ENTER_CHECK_BC] ADD 
	CONSTRAINT [DF_T_ENTER_CHECK_DS_ToDayEnterCheck] DEFAULT (0) FOR [ToDayEnterCount],
	CONSTRAINT [DF_T_ENTER_CHECK_BC_LastEnterDate] DEFAULT (getdate()) FOR [LastEnterDate]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

--//************************************************************************
--// ��   �� : ����ĳ�� 1�� ��������
--// ��   �� : ���Ӱ����� 
--// ������ : 2003.08. 16
--// ������ : ����
--// 
--//************************************************************************

CREATE PROCEDURE	SP_CHECK_BC
	@AccountID		varchar(10),	-- ������
	@CharacterName	varchar(10),	-- �ɸ���
	@Server		smallint		-- ����
As
Begin
	DECLARE	@iMaxEnterCheck	INT
	DECLARE	@iNowEnterCheck	INT

	SET		@iMaxEnterCheck	= 6		-- ���� �ִ� ���尡�� Ƚ��
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS ( SELECT AccountID FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED) 
				WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName )
	BEGIN
		SELECT @iNowEnterCheck = ToDayEnterCount 
		FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED) 
		WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName

		IF (@iNowEnterCheck >= @iMaxEnterCheck)
		BEGIN
			SELECT 0 As EnterResult	-- ����ĳ�� ���� �Ұ���
		END
		ELSE
		BEGIN
			SELECT 1 As EnterResult	-- ����ĳ�� ���� ����
		END
		
	END
	ELSE
	BEGIN
		SELECT 1 As EnterResult		-- ����ĳ�� ���� ����
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
End
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




--//************************************************************************
--// ��   �� : ����ĳ�� 1�� ��������
--// ��   �� : ���Ӱ����� 
--// ������ : 2003.08. 16
--// ������ : ����
--// 
--//************************************************************************

CREATE PROCEDURE	SP_ENTER_BC
	@AccountID		varchar(10),	-- ������
	@CharacterName	varchar(10),	-- �ɸ���
	@Server		smallint		-- ����
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS ( SELECT AccountID FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED) 
				WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName )
	BEGIN
		UPDATE T_ENTER_CHECK_BC 
		SET ToDayEnterCount = ToDayEnterCount + 1, LastEnterDate = GetDate()
		WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName
	END
	ELSE
	BEGIN
		INSERT INTO T_ENTER_CHECK_BC ( AccountID, CharName, ServerCode, ToDayEnterCount, LastEnterDate ) VALUES (
			@AccountID,
			@CharacterName,
			@Server,
			1,
			DEFAULT
		)
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



--//************************************************************************
--// ��   �� : ����ĳ�� 1�� ���� ����Ƚ�� ��ȸ
--// ��   �� : ���Ӱ����� 
--// ������ : 2004.04. 02
--// ������ : ����
--// 
--//************************************************************************

CREATE PROCEDURE	SP_LEFT_ENTERCOUNT_BC
	@AccountID		varchar(10),	-- ������
	@CharacterName	varchar(10),	-- �ɸ���
	@Server		smallint		-- ����
As
Begin
	DECLARE	@iMaxEnterCheck	INT
	DECLARE	@iNowEnterCheck	INT

	SET		@iMaxEnterCheck	= 6		-- ���� �ִ� ���尡�� Ƚ��
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS ( SELECT AccountID FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED) 
				WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName )
	BEGIN
		SELECT @iMaxEnterCheck - ToDayEnterCount As LeftEnterCount FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED)	-- ����ĳ�� ���� ����Ƚ��
		WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName
	END
	ELSE
	BEGIN
		INSERT INTO T_ENTER_CHECK_BC ( AccountID, CharName, ServerCode, ToDayEnterCount, LastEnterDate ) VALUES (
			@AccountID,
			@CharacterName,
			@Server,
			0,
			GetDate()
		)
	
		SELECT @iMaxEnterCheck As LeftEnterCount		-- ����ĳ�� ���� ����Ƚ��
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO




--//************************************************************************
--// ��   �� : ����ĳ�� �̺�Ʈ ����Ʈ ���� ����
--// ��   �� : ���Ӱ����� 
--// ������ : 2003.08. 16
--// ������ : ����
--// 
--//************************************************************************

CREATE PROCEDURE	SP_POINT_ACCM_BC
	@Server		smallint,		-- ���� 
	@Bridge		tinyint,		-- �ٸ�
	@AccountID		varchar(10),	-- ������
	@CharacterName	varchar(10),	-- �ɸ���
	@Class			tinyint ,		-- Ŭ���� ��ȣ 	(0-�渶����, 1-�ҿ︶����, 16-����, 17-���̵峪��Ʈ, 32-����, 33-�����, 48-���˻�)
	@Point			int,		-- ����Ʈ
	@PCRoomGUID	int		-- PC�� GUID (0�̸� ��ϵ� PC�� �ƴ�?)
As
Begin
	DECLARE	@TEMP	INT
End	


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


--//************************************************************************
--// ��   �� : ����ĳ�� �̺�Ʈ ����Ʈ ���� ����
--// ��   �� : ���Ӱ����� 
--// ������ : 2004.04.02
--// ������ : ����
--// 
--//************************************************************************

CREATE PROCEDURE	SP_POINT_ACCM_BC_3RD
	@Server		smallint,		-- ���� 
	@Bridge		tinyint,		-- �ٸ�
	@AccountID		varchar(10),	-- ������
	@CharacterName	varchar(10),	-- �ɸ���
	@Class			tinyint ,		-- Ŭ���� ��ȣ 	(0-�渶����, 1-�ҿ︶����, 16-����, 17-���̵峪��Ʈ, 32-����, 33-�����, 48-���˻�)
	@Point			int,		-- ����Ʈ
	@PCRoomGUID	int,		-- PC�� GUID (0�̸� ��ϵ� PC�� �ƴ�?)
	@LeftTime		int		-- ����ĳ�� ��� �����ð� ����
As
Begin
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	
/*
	IF EXISTS ( SELECT CharacterName FROM EVENT_INFO_BC_3RD  WITH (READUNCOMMITTED) 
				WHERE  Server = @Server AND AccountID = @AccountID AND CharacterName = @CharacterName )
		Begin			
			DECLARE @iiiPoint	int
			SELECT @iiiPoint = Point FROM EVENT_INFO_BC_3RD
			WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName

			IF (@iiiPoint + @Point < 0)
			BEGIN
				UPDATE EVENT_INFO_BC_3RD
				SET Point = 0 , Bridge = @Bridge, PlayCount = PlayCount+1, SumLeftTime = SumLeftTime + @LeftTime  										 										
				WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName	
			END	
			ELSE
			BEGIN
				UPDATE EVENT_INFO_BC_3RD
				SET Point = Point + @Point , Bridge = @Bridge, PlayCount = PlayCount+1, SumLeftTime = SumLeftTime + @LeftTime 
				WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName	
			END
		End
	ELSE
		Begin
			INSERT INTO EVENT_INFO_BC_3RD ( Server,  Bridge, AccountID, CharacterName, Class, Point, PlayCount, SumLeftTime ) VALUES (
				@Server,
				@Bridge,
				@AccountID,
				@CharacterName,
				@Class,
				@Point,
				1,
				@LeftTime	
			)
		End


	IF (@PCRoomGUID <> 0)
	Begin
		IF EXISTS (SELECT AccountID FROM T_BC_PCROOM_PLAYCOUNT  WITH (READUNCOMMITTED) 
				WHERE  PCROOM_GUID = @PCRoomGUID AND AccountID = @AccountID)
		Begin
			UPDATE T_BC_PCROOM_PLAYCOUNT
			SET PlayCount = PlayCount + 1, Point = Point + @Point
			WHERE PCROOM_GUID = @PCRoomGUID AND AccountID = @AccountID		
		End
		ELSE
		Begin
			INSERT INTO T_BC_PCROOM_PLAYCOUNT
			VALUES (@PCRoomGUID, @AccountID, default, @Point)
		End
	End

*/
	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
End
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


--//************************************************************************
--// ��   �� : ����ĳ�� �̺�Ʈ ����Ʈ ���� ���� (4��)
--// ��   �� : ���Ӱ����� 
--// ������ : 2004.05. 31
--// ������ : ����
--// 
--//************************************************************************

CREATE PROCEDURE	SP_POINT_ACCM_BC_4TH
	@Server		smallint,		-- ���� 
	@Bridge		tinyint,		-- �ٸ�
	@AccountID		varchar(10),	-- ������
	@CharacterName	varchar(10),	-- �ɸ���
	@Class			tinyint ,		-- Ŭ���� ��ȣ 	(0-�渶����, 1-�ҿ︶����, 16-����, 17-���̵峪��Ʈ, 32-����, 33-�����, 48-���˻�)
	@Point			int,		-- ����Ʈ
	@PCRoomGUID	int,		-- PC�� GUID (0�̸� ��ϵ� PC�� �ƴ�?)
	@LeftTime		int		-- ����ĳ�� ��� �����ð� ����
As
Begin
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	
/*
	IF EXISTS ( SELECT CharacterName FROM EVENT_INFO_BC_4TH  WITH (READUNCOMMITTED) 
				WHERE  Server = @Server AND AccountID = @AccountID AND CharacterName = @CharacterName )
		Begin			
			DECLARE @iiiPoint		int
			DECLARE @iMinLeftTime	int
			SELECT @iiiPoint = Point, @iMinLeftTime = MinLeftTime FROM EVENT_INFO_BC_4TH
			WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName

			IF (@iMinLeftTime < @LeftTime)
			BEGIN
				IF (@Point > 0)			-- ĳ���� ���� ���� �� �� �ִܽð� ������ ���ŵ� ���̴�.
				BEGIN
					SET @iMinLeftTime = @LeftTime
				END
			END

			IF (@iiiPoint + @Point < 0)
			BEGIN
				UPDATE EVENT_INFO_BC_4TH
				SET Point = 0 , Bridge = @Bridge, PlayCount = PlayCount+1, SumLeftTime = SumLeftTime + @LeftTime, MinLeftTime = @iMinLeftTime 
				WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName	
			END	
			ELSE
			BEGIN
				UPDATE EVENT_INFO_BC_4TH
				SET Point = Point + @Point , Bridge = @Bridge, PlayCount = PlayCount+1, SumLeftTime = SumLeftTime + @LeftTime, MinLeftTime = @iMinLeftTime 
				WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName	
			END
		End
	ELSE
		Begin
			INSERT INTO EVENT_INFO_BC_4TH ( Server,  Bridge, AccountID, CharacterName, Class, Point, PlayCount, SumLeftTime, MinLeftTime ) VALUES (
				@Server,
				@Bridge,
				@AccountID,
				@CharacterName,
				@Class,
				@Point,
				1,
				@LeftTime,
				@LeftTime
			)
		End


	IF (@PCRoomGUID <> 0)
	Begin
		IF EXISTS (SELECT AccountID FROM T_BC_PCROOM_PLAYCOUNT  WITH (READUNCOMMITTED) 
				WHERE  PCROOM_GUID = @PCRoomGUID AND AccountID = @AccountID)
		Begin
			UPDATE T_BC_PCROOM_PLAYCOUNT
			SET PlayCount = PlayCount + 1, Point = Point + @Point
			WHERE PCROOM_GUID = @PCRoomGUID AND AccountID = @AccountID		
		End
		ELSE
		Begin
			INSERT INTO T_BC_PCROOM_PLAYCOUNT
			VALUES (@PCRoomGUID, @AccountID, default, @Point)
		End
	End
*/

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
End
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



--//************************************************************************
--// ��   �� : ����ĳ�� �̺�Ʈ ����Ʈ ���� ���� (5��)
--// ��   �� : ���Ӱ����� 
--// ������ : 2004.05. 31
--// ������ : ����
--// 
--//************************************************************************

CREATE PROCEDURE	SP_POINT_ACCM_BC_5TH
	@Server		smallint,		-- ���� 
	@Bridge		tinyint,		-- �ٸ�
	@AccountID		varchar(10),	-- ������
	@CharacterName	varchar(10),	-- �ɸ���
	@Class			tinyint ,		-- Ŭ���� ��ȣ 	(0-�渶����, 1-�ҿ︶����, 16-����, 17-���̵峪��Ʈ, 32-����, 33-�����, 48-���˻�)
	@Point			int,		-- ����Ʈ
	@LeftTime		int,		-- ����ĳ�� ��� �����ð� ����
	@AlivePartyCount	int		-- ����ĳ�� ��� �����ð� ����
As
BEGIN
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	DECLARE @RegDate	SMALLDATETIME
	SET @RegDate = CAST(DATEPART(YY, GetDate()) AS VARCHAR(4)) + '-' + CAST(DATEPART(MM, GetDate()) AS VARCHAR(2)) + '-' + CAST(DATEPART(DD, GetDate()) AS VARCHAR(2)) + ' 00:00:00'

	IF EXISTS ( SELECT CharacterName FROM EVENT_INFO_BC_5TH  WITH (READUNCOMMITTED) 
				WHERE RegDate = @RegDate AND Server = @Server AND AccountID = @AccountID AND CharacterName = @CharacterName )
		BEGIN			
			DECLARE @iiiPoint		int
			DECLARE @iMinLeftTime	int
			DECLARE @iAlivePartyCount	int
			DECLARE @iMaxPointLeftTime	int

			SELECT @iiiPoint = Point, @iMinLeftTime = MinLeftTime, @iAlivePartyCount = AlivePartyCount, @iMaxPointLeftTime = MaxPointLeftTime
			FROM EVENT_INFO_BC_5TH
			WHERE  RegDate = @RegDate AND Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName

			-- ������ ���� ���� ���� �ϳ��� �����Ѵ�.
			-- �ְ� ������ �޾��� �� �� �ð��� ���� �����Ѵ�.
			IF (@iiiPoint < @Point)
			BEGIN
				IF (@Point > 0)			-- ĳ���� ���� ���� �� �� �ְ� ������ ���ŵ� ���̴�.
				BEGIN
					SET @iiiPoint = @Point
					SET @iMaxPointLeftTime = @LeftTime
				END
			END

			-- ������ ���� ���� �����ð��� ū���� �����Ѵ�.
			IF (@iiiPoint = @Point)
			BEGIN
				IF (@Point > 0)			-- ĳ���� ���� ���� �� �� �ְ� ������ ���ŵ� ���̴�.
				BEGIN
					IF (@iMaxPointLeftTime < @LeftTime)
					BEGIN
						SET @iMaxPointLeftTime = @LeftTime
					END
				END
			END

			-- ��Ƽ���� ���� ���� �� Ȥ�� ���� ���� ��츸 �����Ѵ�.
			-- ��Ƽ������ ���ŵ� �� �ִܽð��� ���� ���ŵȴ�.
			IF (@iAlivePartyCount <= @AlivePartyCount)
			BEGIN
				IF (@iMinLeftTime < @LeftTime)
				BEGIN
					IF (@Point > 0)			-- ĳ���� ���� ���� �� �� �ִܽð� ������ ���ŵ� ���̴�.
					BEGIN
						SET @iMinLeftTime = @LeftTime
					END
				END
				SET @iAlivePartyCount = @AlivePartyCount
			END

			IF (@iiiPoint < 0)
			BEGIN
				UPDATE EVENT_INFO_BC_5TH
				SET Point = 0 , Bridge = @Bridge, PlayCount = PlayCount+1, SumLeftTime = SumLeftTime + @LeftTime, MinLeftTime = @iMinLeftTime, AlivePartyCount = @iAlivePartyCount, MaxPointLeftTime = @iMaxPointLeftTime
				WHERE  RegDate = @RegDate AND Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName	
			END	
			ELSE
			BEGIN
				UPDATE EVENT_INFO_BC_5TH
				SET Point = @iiiPoint, Bridge = @Bridge, PlayCount = PlayCount+1, SumLeftTime = SumLeftTime + @LeftTime, MinLeftTime = @iMinLeftTime, AlivePartyCount = @iAlivePartyCount, MaxPointLeftTime = @iMaxPointLeftTime
				WHERE  RegDate = @RegDate AND Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName	
			END
		END
	ELSE
		BEGIN
			IF (@Point < 0)
			BEGIN
				INSERT INTO EVENT_INFO_BC_5TH ( Server,  Bridge, AccountID, CharacterName, Class, Point, PlayCount, SumLeftTime, MinLeftTime, RegDate, AlivePartyCount, MaxPointLeftTime ) VALUES (
					@Server,
					@Bridge,
					@AccountID,
					@CharacterName,
					@Class,
					0,
					1,
					0,
					0,
					@RegDate,
					0,
					0
				)
			END
			ELSE
			BEGIN
				INSERT INTO EVENT_INFO_BC_5TH ( Server,  Bridge, AccountID, CharacterName, Class, Point, PlayCount, SumLeftTime, MinLeftTime, RegDate, AlivePartyCount, MaxPointLeftTime ) VALUES (
					@Server,
					@Bridge,
					@AccountID,
					@CharacterName,
					@Class,
					@Point,
					1,
					@LeftTime,
					@LeftTime,
					@RegDate,
					@AlivePartyCount,
					@LeftTime
				)
			END

		END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

--//************************************************************************
--// ��   �� : ���� �̺�Ʈ ����Ʈ ���� ����
--// ��   �� : ���Ӱ����� 
--// ������ : 2003.01. 21
--// ������ : �߼�
--// 
--//************************************************************************

CREATE PROCEDURE	SP_POINT_ACCUMULATION
	@Server		smallint,	-- ���� 
	@Square		tinyint,	-- ���� 

	@AccountID		varchar(10),
	@CharacterName	varchar(10),
	@Class			tinyint ,
	@Point			int
As
Begin
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS ( SELECT CharacterName FROM EVENT_INFO  WITH (READUNCOMMITTED) 
				WHERE  Server = @Server AND AccountID = @AccountID AND CharacterName = @CharacterName )
		Begin			
			UPDATE EVENT_INFO
			SET Point = Point + @Point , Square = @Square 										
			WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName		
		End
	ELSE
		Begin
			INSERT INTO EVENT_INFO ( Server, 	Square, 	AccountID, CharacterName, Class, Point ) VALUES (
				@Server,
				@Square,
				@AccountID,
				@CharacterName,
				@Class,
				@Point	
			)	
		End 


	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
End
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/*******************************************************************************************************
 ������Ʈ�� : �¿¶��� ver3.0
 ����Ʈ�� : event.muonline.co.kr
 ���ν����� : USP_BloodCastle5_Ranking
 ��� : �ð��� ��ŷ�� �����´�.
 �������� : 
 �Է� : @BridgeSearch
 ��ȯ : 
 �̷� : 2005.06.21 ������
********************************************************************************************************/
CREATE PROCEDURE dbo.USP_BloodCastle5_Ranking

	@BridgeSearch	TINYINT

AS

SET NOCOUNT ON

	SELECT TOP 50  T1.CharacterName, T1.Server, 0 AS Point, MAX(T1.MinLeftTime) as MinLeftTime, T1.Bridge, 

	(SELECT TOP 1 T2.AlivePartyCount FROM EVENT_INFO_BC_5TH T2 WHERE T1.CharacterName = T2.CharacterName AND T1.Server = T2.Server 
	 AND T1.Bridge = T2.Bridge AND T1.AccountID = T2.AccountID AND T2.AlivePartyCount >= 5 ORDER BY T2.MinLeftTime DESC) AS AlivePartyCount,

	(SELECT TOP 1 Convert(char(8),T3.RegDate,112) FROM EVENT_INFO_BC_5TH T3 WHERE T1.CharacterName = T3.CharacterName AND T1.Server = T3.Server 
	 AND T1.Bridge = T3.Bridge AND T1.AccountID = T3.AccountID AND T3.AlivePartyCount >= 5 ORDER BY T3.MinLeftTime DESC, T3.RegDate) AS RegDate
	FROM EVENT_INFO_BC_5TH  T1 WHERE AlivePartyCount > 4 AND T1.Server <> 13 

	GROUP BY T1.CharacterName,T1.Server, T1.Bridge,T1.AccountID
	Having  T1.Bridge = @BridgeSearch

	ORDER BY AlivePartyCount DESC, MinLeftTime DESC, RegDate, T1.Server


	


			
SET NOCOUNT OFF
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



--//************************************************************************
--// ��   �� 	: ����ĳ�� 1�� �������� �������ν���
--// ��   �� 	: ���Ӱ����� 
--// ���糯 	: 2004.03.08
--// ������ 	: ����
--// 
--//************************************************************************

CREATE PROCEDURE	_SP_ENTER_CHECK_BC
	@AccountID		varchar(10),	-- ������
	@CharacterName	varchar(10),	-- �ɸ���
	@Server		smallint		-- ����
As
Begin
	DECLARE	@iMaxEnterCheck	INT
	DECLARE	@iNowEnterCheck	INT

	SET		@iMaxEnterCheck	= 6		-- ���� �ִ� ���尡�� Ƚ��
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS ( SELECT AccountID FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED) 
				WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName )
	BEGIN
		SELECT @iNowEnterCheck = ToDayEnterCount 
		FROM T_ENTER_CHECK_BC  WITH (READUNCOMMITTED) 
		WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName

		IF (@iNowEnterCheck >= @iMaxEnterCheck)
		BEGIN
			SELECT 0 As EnterResult	-- ����ĳ�� �������
		END
		ELSE
		BEGIN
			UPDATE T_ENTER_CHECK_BC 
			SET ToDayEnterCount = ToDayEnterCount + 1, LastEnterDate = GetDate()
			WHERE  AccountID = @AccountID AND ServerCode = @Server AND CharName = @CharacterName

			SELECT 1 As EnterResult	-- ����ĳ�� ���强��
		END
		
	END
	ELSE
	BEGIN
		INSERT INTO T_ENTER_CHECK_BC ( AccountID, CharName, ServerCode, ToDayEnterCount, LastEnterDate ) VALUES (
			@AccountID,
			@CharacterName,
			@Server,
			1,
			DEFAULT
		)
	
		SELECT 1 As EnterResult		-- ����ĳ�� ���强��
	END

	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
End
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO




--//************************************************************************
--// ��   �� : ����ĳ�� �̺�Ʈ ����Ʈ ���� ����
--// ��   �� : ���Ӱ����� 
--// ������ : 2003.08. 16
--// ������ : ����
--// 
--//************************************************************************

CREATE PROCEDURE	_SP_POINT_ACCM_BC
	@Server		smallint,		-- ���� 
	@Bridge		tinyint,		-- �ٸ�
	@AccountID		varchar(10),	-- ������
	@CharacterName	varchar(10),	-- �ɸ���
	@Class			tinyint ,		-- Ŭ���� ��ȣ 	(0-�渶����, 1-�ҿ︶����, 16-����, 17-���̵峪��Ʈ, 32-����, 33-�����, 48-���˻�)
	@Point			int,		-- ����Ʈ
	@PCRoomGUID	int		-- PC�� GUID (0�̸� ��ϵ� PC�� �ƴ�?)
As
Begin
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS ( SELECT CharacterName FROM EVENT_INFO_BC  WITH (READUNCOMMITTED) 
				WHERE  Server = @Server AND AccountID = @AccountID AND CharacterName = @CharacterName )
		Begin			
			DECLARE @iiiPoint	int
			SELECT @iiiPoint = Point FROM EVENT_INFO_BC
			WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName

			IF (@iiiPoint + @Point < 0)
			BEGIN
				UPDATE EVENT_INFO_BC
				SET Point = 0 , Bridge = @Bridge, PlayCount = PlayCount+1 										 										
				WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName	
			END	
			ELSE
			BEGIN
				UPDATE EVENT_INFO_BC
				SET Point = Point + @Point , Bridge = @Bridge, PlayCount = PlayCount+1 										
				WHERE  Server = @Server  AND AccountID = @AccountID AND CharacterName = @CharacterName	
			END
		End
	ELSE
		Begin
			INSERT INTO EVENT_INFO_BC ( Server,  Bridge, AccountID, CharacterName, Class, Point, PlayCount ) VALUES (
				@Server,
				@Bridge,
				@AccountID,
				@CharacterName,
				@Class,
				@Point,
				default	
			)
		End


	IF (@PCRoomGUID <> 0)
	Begin
		IF EXISTS (SELECT AccountID FROM T_BC_PCROOM_PLAYCOUNT  WITH (READUNCOMMITTED) 
				WHERE  PCROOM_GUID = @PCRoomGUID AND AccountID = @AccountID)
		Begin
			UPDATE T_BC_PCROOM_PLAYCOUNT
			SET PlayCount = PlayCount + 1, Point = Point + @Point
			WHERE PCROOM_GUID = @PCRoomGUID AND AccountID = @AccountID		
		End
		ELSE
		Begin
			INSERT INTO T_BC_PCROOM_PLAYCOUNT
			VALUES (@PCRoomGUID, @AccountID, default, @Point)
		End
	End


	IF(@@Error <> 0 )
		ROLLBACK TRANSACTION
	ELSE	
		COMMIT TRANSACTION

	SET NOCOUNT OFF	
End
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

