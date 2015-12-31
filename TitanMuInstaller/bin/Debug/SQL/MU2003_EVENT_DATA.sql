if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CItemExeSP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CItemExeSP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_REG_CC_OFFLINE_GIFT]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_REG_CC_OFFLINE_GIFT]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_REG_DL_OFFLINE_GIFT]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_REG_DL_OFFLINE_GIFT]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_REG_FRIEND_STONE]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_REG_FRIEND_STONE]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_REG_RINGGIFT]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_REG_RINGGIFT]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_REG_RINGGIFT_TEMP]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_REG_RINGGIFT_TEMP]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SP_REG_SERIAL]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SP_REG_SERIAL]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ShowResourceInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ShowResourceInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UP_EMP6]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[UP_EMP6]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Admin]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Admin]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_BLOOD_CASTLE]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_BLOOD_CASTLE]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_BLOOD_PLAYCOUNT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_BLOOD_PLAYCOUNT]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_CC_OFFLINE_GIFT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_CC_OFFLINE_GIFT]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_CC_OFFLINE_GIFTNAME]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_CC_OFFLINE_GIFTNAME]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_DL_OFFLINE_GIFT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_DL_OFFLINE_GIFT]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_DL_OFFLINE_GIFTNAME]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_DL_OFFLINE_GIFTNAME]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_FRIENDSHIP_SERVERRANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_FRIENDSHIP_SERVERRANK]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_FRIENDSHIP_STONE]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_FRIENDSHIP_STONE]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_MU2003_EVENT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_MU2003_EVENT]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_RegCount_Check]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_RegCount_Check]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Register_Info]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Register_Info]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_RingAttackEvent_Gift]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_RingAttackEvent_Gift]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_RingEvent_GiftName]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_RingEvent_GiftName]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_RingEvent_OfflineGift]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_RingEvent_OfflineGift]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Serial_Bank]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Serial_Bank]
GO

CREATE TABLE [dbo].[Admin] (
	[Id] [char] (10) NOT NULL ,
	[Pass] [char] (10) NULL ,
	[AdminLevel] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_BLOOD_CASTLE] (
	[AccountID] [varchar] (10) NOT NULL ,
	[StoneCount] [int] NOT NULL ,
	[Check_Code] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_BLOOD_PLAYCOUNT] (
	[AccountId] [varchar] (50) NOT NULL ,
	[PlayCount] [int] NOT NULL ,
	[RecoverCheck] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_CC_OFFLINE_GIFT] (
	[Guid] [int] IDENTITY (1, 1) NOT NULL ,
	[Server] [int] NULL ,
	[AccountID] [varchar] (10) NULL ,
	[CharName] [varchar] (10) NULL ,
	[GiftKind] [int] NOT NULL ,
	[Date_Give] [smalldatetime] NOT NULL ,
	[Date_Reg] [smalldatetime] NULL ,
	[RegCheck] [tinyint] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_CC_OFFLINE_GIFTNAME] (
	[GiftKind] [int] NOT NULL ,
	[GiftName] [varchar] (50) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_DL_OFFLINE_GIFT] (
	[Guid] [int] IDENTITY (1, 1) NOT NULL ,
	[Server] [int] NULL ,
	[AccountID] [varchar] (10) NULL ,
	[CharName] [varchar] (10) NULL ,
	[GiftKind] [int] NOT NULL ,
	[Date_Give] [smalldatetime] NOT NULL ,
	[Date_Reg] [smalldatetime] NULL ,
	[RegCheck] [tinyint] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_DL_OFFLINE_GIFTNAME] (
	[GiftKind] [int] NOT NULL ,
	[GiftName] [varchar] (50) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_FRIENDSHIP_SERVERRANK] (
	[ServerCode] [smallint] NOT NULL ,
	[FriendShipStoneCount] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_FRIENDSHIP_STONE] (
	[AccountID] [varchar] (10) NOT NULL ,
	[ServerCode] [smallint] NOT NULL ,
	[CharName] [varchar] (10) NOT NULL ,
	[FriendShipStoneCount] [int] NOT NULL ,
	[Check_Code] [tinyint] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_MU2003_EVENT] (
	[AccountID] [varchar] (50) NOT NULL ,
	[EventChips] [smallint] NOT NULL ,
	[MuttoIndex] [int] NOT NULL ,
	[MuttoNumber] [int] NOT NULL ,
	[Check_Code] [char] (1) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_RegCount_Check] (
	[AccountID] [varchar] (10) NOT NULL ,
	[RegCount] [int] NOT NULL ,
	[RegAlready] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Register_Info] (
	[F_Register_Section] [smallint] NOT NULL ,
	[F_Register_Name] [varchar] (50) NOT NULL ,
	[F_Register_TotalCount] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_RingAttackEvent_Gift] (
	[GUID] [int] IDENTITY (1, 1) NOT NULL ,
	[AccountID] [varchar] (50) NOT NULL ,
	[GiftKind] [tinyint] NOT NULL ,
	[RegisterDate] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_RingEvent_GiftName] (
	[GiftKind] [tinyint] NOT NULL ,
	[GiftName] [varchar] (50) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_RingEvent_OfflineGift] (
	[GUID] [smallint] IDENTITY (1, 1) NOT NULL ,
	[AccountID] [varchar] (10) NULL ,
	[GiftSection] [tinyint] NOT NULL ,
	[GiftKind] [tinyint] NOT NULL ,
	[RegisterDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Serial_Bank] (
	[F_Serial_Guid] [int] IDENTITY (1, 1) NOT NULL ,
	[P_Serial_1] [char] (4) NOT NULL ,
	[P_Serial_2] [char] (4) NOT NULL ,
	[P_Serial_3] [char] (4) NOT NULL ,
	[F_Serial_Section] [smallint] NOT NULL ,
	[F_Member_Guid] [int] NULL ,
	[F_Member_Id] [char] (10) NULL ,
	[F_Register_Section] [smallint] NULL ,
	[F_Register_Date] [smalldatetime] NULL ,
	[F_Create_Date] [smalldatetime] NOT NULL ,
	[F_RegisterCheck] [bit] NOT NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_BLOOD_CASTLE] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_BLOOD_CASTLE] PRIMARY KEY  CLUSTERED 
	(
		[AccountID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_BLOOD_PLAYCOUNT] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_BLOOD_PLAYCOUNT] PRIMARY KEY  CLUSTERED 
	(
		[AccountId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_CC_OFFLINE_GIFTNAME] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_CC_OFFLINE_GIFTNAME] PRIMARY KEY  CLUSTERED 
	(
		[GiftKind]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_DL_OFFLINE_GIFTNAME] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_DL_OFFLINE_GIFTNAME] PRIMARY KEY  CLUSTERED 
	(
		[GiftKind]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_FRIENDSHIP_SERVERRANK] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_FRIENDSHIP_SERVERRANK] PRIMARY KEY  CLUSTERED 
	(
		[ServerCode]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_FRIENDSHIP_STONE] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_T] PRIMARY KEY  CLUSTERED 
	(
		[AccountID],
		[ServerCode],
		[CharName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_MU2003_EVENT] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_MU2003_EVENT_1] PRIMARY KEY  CLUSTERED 
	(
		[AccountID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_RegCount_Check] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_RegCount_Check] PRIMARY KEY  CLUSTERED 
	(
		[AccountID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Register_Info] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Register_Info] PRIMARY KEY  CLUSTERED 
	(
		[F_Register_Section]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_RingAttackEvent_Gift] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_RingAttackEvent_Gift] PRIMARY KEY  CLUSTERED 
	(
		[GUID],
		[GiftKind],
		[RegisterDate]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_RingEvent_OfflineGift] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_RingEvent_OfflineGift] PRIMARY KEY  CLUSTERED 
	(
		[GUID],
		[GiftSection]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Serial_Bank] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Serial_Bank] PRIMARY KEY  CLUSTERED 
	(
		[P_Serial_1],
		[P_Serial_2],
		[P_Serial_3]
	)  ON [PRIMARY] 
GO

 CREATE  CLUSTERED  INDEX [IX_T_CC_OFFLINE_GIFT] ON [dbo].[T_CC_OFFLINE_GIFT]([Date_Give]) ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_T_DL_OFFLINE_GIFT] ON [dbo].[T_DL_OFFLINE_GIFT]([Date_Give]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_BLOOD_CASTLE] ADD 
	CONSTRAINT [DF_T_BLOOD_CASTLE_StoneCount] DEFAULT (0) FOR [StoneCount],
	CONSTRAINT [DF_T_BLOOD_CASTLE_Check_Code] DEFAULT (0) FOR [Check_Code]
GO

ALTER TABLE [dbo].[T_CC_OFFLINE_GIFT] ADD 
	CONSTRAINT [DF_T_CC_OFFLINE_GIFT_Date_Reg] DEFAULT (getdate()) FOR [Date_Reg],
	CONSTRAINT [DF_T_CC_OFFLINE_GIFT_RegCheck] DEFAULT (0) FOR [RegCheck],
	CONSTRAINT [PK_T_CC_OFFLINE_GIFT] PRIMARY KEY  NONCLUSTERED 
	(
		[Guid]
	)  ON [PRIMARY] 
GO

 CREATE  INDEX [IX_T_CC_OFFLINE_GIFT_1] ON [dbo].[T_CC_OFFLINE_GIFT]([AccountID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_DL_OFFLINE_GIFT] ADD 
	CONSTRAINT [DF_T_DL_OFFLINE_GIFT_Date_Reg] DEFAULT (getdate()) FOR [Date_Reg],
	CONSTRAINT [DF_T_DL_OFFLINE_GIFT_RegCheck] DEFAULT (0) FOR [RegCheck],
	CONSTRAINT [PK_T_DL_OFFLINE_GIFT] PRIMARY KEY  NONCLUSTERED 
	(
		[Guid]
	)  ON [PRIMARY] 
GO

 CREATE  INDEX [IX_T_DL_OFFLINE_GIFT_1] ON [dbo].[T_DL_OFFLINE_GIFT]([AccountID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_FRIENDSHIP_SERVERRANK] ADD 
	CONSTRAINT [DF_T_FRIENDSHIP_SERVERRANK_FriendShipStoneCount] DEFAULT (0) FOR [FriendShipStoneCount]
GO

ALTER TABLE [dbo].[T_FRIENDSHIP_STONE] ADD 
	CONSTRAINT [DF_T_T_FriendShipStoneCount] DEFAULT (0) FOR [FriendShipStoneCount],
	CONSTRAINT [DF_T_T_Check_Code] DEFAULT (0) FOR [Check_Code]
GO

ALTER TABLE [dbo].[T_MU2003_EVENT] ADD 
	CONSTRAINT [DF_T_MU2003_EVENT_EventChips_1] DEFAULT (0) FOR [EventChips],
	CONSTRAINT [DF_T_MU2003_EVENT_MuttoIndex_1] DEFAULT ((-1)) FOR [MuttoIndex],
	CONSTRAINT [DF_T_MU2003_EVENT_MuttoNumber_1] DEFAULT (0) FOR [MuttoNumber],
	CONSTRAINT [DF_T_MU2003_EVENT_Check_Code] DEFAULT (0) FOR [Check_Code]
GO

ALTER TABLE [dbo].[T_RegCount_Check] ADD 
	CONSTRAINT [DF_T_RegCount_Check_RegCount] DEFAULT (1) FOR [RegCount],
	CONSTRAINT [DF_T_RegCount_Check_RegAlready] DEFAULT (0) FOR [RegAlready]
GO

ALTER TABLE [dbo].[T_RingAttackEvent_Gift] ADD 
	CONSTRAINT [DF_T_RingAttackEvent_Gift_RegisterDate] DEFAULT (getdate()) FOR [RegisterDate]
GO

 CREATE  INDEX [IX_T_RingAttackEvent_Gift] ON [dbo].[T_RingAttackEvent_Gift]([AccountID]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_T_RingEvent_OfflineGift] ON [dbo].[T_RingEvent_OfflineGift]([AccountID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_Serial_Bank] ADD 
	CONSTRAINT [DF_T_Serial_Bank_F_Create_Date] DEFAULT (getdate()) FOR [F_Create_Date],
	CONSTRAINT [DF_T_Serial_Bank_F_RegisterCheck] DEFAULT (0) FOR [F_RegisterCheck]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROC CItemExeSP @Name VARCHAR(10)
AS
BEGIN
	select cName from CItemExt where Name=@Name
END
EXEC CItemExeSP 'SaemSong'


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO


--//************************************************************************
--// 내   용 : 뮤 반지이벤트 경품등록
--// 부   서 : 게임개발팀 
--// 만들일 : 2004.05.05
--// 만들이 : 준일
--// 
--// 리턴값 설명
--// 
--// 	성공코드 :	0 : 상품등록 실패 (없음)
--//			1 : 상품등록 성공
--// 	선물이름 :	T_CC_OFFLINE_GIFTNAME 과 GiftKind 를 JOIN 한 결과
--// 
--//************************************************************************

CREATE PROCEDURE	SP_REG_CC_OFFLINE_GIFT
	@AccountID		varchar(10),	
	@CharName		varchar(10),	
	@ServerCode		int
As
Begin
	BEGIN TRANSACTION

	DECLARE @iGIFT_GUID	INT		-- 받을 상품의 GUID
	DECLARE @iGIFT_KIND	INT		-- 받을 상품의 종류
	DECLARE @iGIFT_NAME	VARCHAR(50)	-- 받을 상품의 이름
	
	SET NOCOUNT ON

	IF EXISTS (SELECT AccountID Guid FROM T_CC_OFFLINE_GIFT WHERE AccountID = @AccountID)
	BEGIN
		-- 이 사람은 이전에 한번 당첨된 사람이므로 또 경품을 줄 수 없다.
		SELECT 0 As ResultCode, '' As GiftName
	END
	ELSE
	BEGIN
		IF EXISTS (SELECT TOP 1 Guid FROM T_CC_OFFLINE_GIFT WHERE Date_Give < GetDate() and RegCheck = 0 ORDER BY Guid ASC)
		BEGIN
			-- 오늘 줄 수 있는 경품이 남아있다.
			SELECT TOP 1 @iGIFT_GUID = Guid, @iGIFT_KIND = GiftKind  FROM T_CC_OFFLINE_GIFT WHERE Date_Give < GetDate() and RegCheck = 0 ORDER BY Guid ASC
	
			-- 여기서 해당 사용자의 경품으로 지정해 준다.
			UPDATE T_CC_OFFLINE_GIFT SET Server = @ServerCode, AccountID = @AccountID, CharName = @CharName, Date_Reg = GetDate(), RegCheck = 1 WHERE Guid = @iGIFT_GUID
	
			SELECT @iGIFT_NAME = GiftName FROM T_CC_OFFLINE_GIFTNAME WHERE GiftKind = @iGIFT_KIND
	
			SELECT 1 As ResultCode, @iGIFT_NAME As GiftName
		END
		ELSE
		BEGIN
			-- 오늘 줄 수 있는 경품이 하나도 없다.
			SELECT 0 As ResultCode, '' As GiftName
		END
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
--// 내   용 : 다크로드의 마음 이벤트 경품등록
--// 부   서 : 게임개발팀 
--// 만들일 : 2004.08.11
--// 만들이 : 준일
--// 
--// 리턴값 설명
--// 
--// 	성공코드 :	0 : 상품등록 실패 (없음)
--//			1 : 상품등록 성공
--// 	선물이름 :	T_DL_OFFLINE_GIFTNAME 과 GiftKind 를 JOIN 한 결과
--// 
--//************************************************************************

CREATE PROCEDURE	SP_REG_DL_OFFLINE_GIFT
	@AccountID		varchar(10),	
	@CharName		varchar(10),	
	@ServerCode		int
As
Begin
	BEGIN TRANSACTION

	DECLARE @iGIFT_GUID	INT		-- 받을 상품의 GUID
	DECLARE @iGIFT_KIND	INT		-- 받을 상품의 종류
	DECLARE @iGIFT_NAME	VARCHAR(50)	-- 받을 상품의 이름
	
	SET NOCOUNT ON

	IF EXISTS (SELECT AccountID Guid FROM T_DL_OFFLINE_GIFT WHERE AccountID = @AccountID)
	BEGIN
		-- 이 사람은 이전에 한번 당첨된 사람이므로 또 경품을 줄 수 없다.
		SELECT 0 As ResultCode, '' As GiftName
	END
	ELSE
	BEGIN
		IF EXISTS (SELECT TOP 1 Guid FROM T_DL_OFFLINE_GIFT WHERE Date_Give < GetDate() and RegCheck = CAST(0 AS BIT) ORDER BY Guid ASC)
		BEGIN
			-- 오늘 줄 수 있는 경품이 남아있다.
			SELECT TOP 1 @iGIFT_GUID = Guid, @iGIFT_KIND = GiftKind  FROM T_DL_OFFLINE_GIFT WHERE Date_Give < GetDate() and RegCheck = CAST(0 AS BIT) ORDER BY Guid ASC
	
			-- 여기서 해당 사용자의 경품으로 지정해 준다.
			UPDATE T_DL_OFFLINE_GIFT SET Server = @ServerCode, AccountID = @AccountID, CharName = @CharName, Date_Reg = GetDate(), RegCheck = CAST(1 AS BIT) WHERE Guid = @iGIFT_GUID
	
			SELECT @iGIFT_NAME = GiftName FROM T_DL_OFFLINE_GIFTNAME WHERE GiftKind = @iGIFT_KIND
	
			SELECT 1 As ResultCode, @iGIFT_NAME As GiftName
		END
		ELSE
		BEGIN
			-- 오늘 줄 수 있는 경품이 하나도 없다.
			SELECT 0 As ResultCode, '' As GiftName
		END
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
SET ANSI_NULLS OFF 
GO




--//************************************************************************
--// 내   용 : 뮤 친구이벤트
--// 부   서 : 게임개발팀 
--// 만들일 : 2004.02.11
--// 만들이 : 준일
--// 
--//************************************************************************

CREATE PROCEDURE	SP_REG_FRIEND_STONE
	@AccountID		varchar(10),	-- 계정명
	@ServerCode		smallint,	-- 서버코드
	@CharName		varchar(10)	-- 케릭명
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	-- 1 . 해당 계정의 스톤개수를 증가시킴
	IF NOT EXISTS (SELECT FriendShipStoneCount FROM T_FRIENDSHIP_STONE WHERE AccountID = @AccountID and ServerCode = @ServerCode and CharName = @CharName)
	BEGIN
		INSERT T_FRIENDSHIP_STONE (AccountID, ServerCode, CharName, FriendShipStoneCount) VALUES (@AccountID, @ServerCode, @CharName, 1)
	END
	ELSE
	BEGIN
		UPDATE T_FRIENDSHIP_STONE 
		SET FriendShipStoneCount = FriendShipStoneCount + 1
		WHERE AccountID = @AccountID and ServerCode = @ServerCode and CharName = @CharName
	END

	-- 2 . 서버별 스톤개수 증가
	IF NOT EXISTS (SELECT FriendShipStoneCount FROM T_FRIENDSHIP_SERVERRANK WHERE ServerCode = @ServerCode)
	BEGIN
		INSERT T_FRIENDSHIP_SERVERRANK VALUES (@ServerCode, 1)
	END
	ELSE
	BEGIN
		UPDATE T_FRIENDSHIP_SERVERRANK 
		SET FriendShipStoneCount = FriendShipStoneCount + 1
		WHERE ServerCode = @ServerCode
	END

	SELECT FriendShipStoneCount FROM T_FRIENDSHIP_STONE WHERE  AccountID = @AccountID and ServerCode = @ServerCode and CharName = @CharName
	
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
--// 내   용 : 뮤 반지이벤트 경품등록
--// 부   서 : 게임개발팀 
--// 만들일 : 2003.12.05
--// 만들이 : 준일
--// 
--//************************************************************************

CREATE PROCEDURE	SP_REG_RINGGIFT
	@AccountID		varchar(10),	-- 계정명
	@GiftSection		tinyint		-- 상품의 종류 (0:용사의반지드롭, 1:오크죽임)
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON
	
	DECLARE	@ToDay		DATETIME
	DECLARE	@strToDayStart		VARCHAR(32)
	DECLARE	@strToDayEnd		VARCHAR(32)
	DECLARE	@iToDayRegCount	INT
	DECLARE	@iMaxAllGiftNum	INT		-- 해당 번호 상품의 모든 개수
	DECLARE	@iMaxTodayGiftNum	INT		-- 해당 번호 상품의 오늘의 개수

	DECLARE	@iLeftGifts		INT		-- 남은 상품 개수
	DECLARE	@iGUID		INT		-- GUID
	DECLARE	@iGiftKind		INT		-- 당첨된 상품번호

	IF @GiftSection = 0
	BEGIN
		SET @iMaxAllGiftNum = 80		
		SET @iMaxTodayGiftNum = 2		
	END	
	ELSE
	BEGIN
		SET @iMaxAllGiftNum = 160		
		SET @iMaxTodayGiftNum = 5		
	END

	-- 1> . 이제 해당 경품종류의 남은 경품이 있는지 확인한다.
	SELECT @iLeftGifts = COUNT(*) FROM T_RingEvent_OfflineGift WHERE RegisterDate IS NULL AND GiftSection = @GiftSection

	IF @iLeftGifts = 0
	BEGIN
		SELECT 3 As RegResult, @AccountID, 0 As GiftKind	-- 이제 더 이상 등록할 수 없다면 나간다.
	END
	ELSE
	BEGIN
		-- 2> . 오늘 등록할 수 있는 회수 이상으로 등록 되었는지 체크
		SET @ToDay = GetDate()
		
		SET @strToDayStart = CONVERT(char(4), YEAR(@ToDay)) + '-' + CONVERT(char(2), MONTH(@ToDay)) + '-' + CONVERT(char(2), DAY(@ToDay)) + ' 00:00:00'
		SET @strToDayEnd = CONVERT(char(4), YEAR(@ToDay)) + '-' + CONVERT(char(2), MONTH(@ToDay)) + '-' + CONVERT(char(2), DAY(@ToDay)) + ' 23:59:59'
		
		SELECT @iToDayRegCount = COUNT(*)
		FROM T_RingEvent_OfflineGift
		WHERE RegisterDate between @strToDayStart and @strToDayEnd
			and @GiftSection = GiftSection
		
		IF @iToDayRegCount >= @iMaxTodayGiftNum		-- 오늘의 최대 상품 등록 수를 초과하면 나간다.
		BEGIN
			SELECT 3 As RegResult, @AccountID, 0 As GiftKind
		END
		ELSE
		BEGIN
			-- 3> . 이미 등록된 계정인지 확인한다.
			IF EXISTS ( SELECT * FROM T_RingEvent_OfflineGift  WITH (READUNCOMMITTED) 
						WHERE AccountID = @AccountID)
			BEGIN	
				-- 이미 등록된 사람이므로 그사람의 계정명 정도만 보낸다.
				SELECT 2 As RegResult, @AccountID, 0 As GiftKind
			END
			ELSE
			BEGIN
				SELECT TOP 1 @iGUID = GUID, @iGiftKind = GiftKind
				FROM T_RingEvent_OfflineGift
				WHERE @GiftSection = GiftSection and RegisterDate IS NULL
				ORDER BY GUID

				UPDATE T_RingEvent_OfflineGift
				SET AccountID=@AccountID, RegisterDate=GetDate()
				WHERE @iGUID = GUID
		
				-- 새로 등록하는 사람이며 등록 성공
				SELECT 1 As RegResult, @AccountID, @iGiftKind As GiftKind
			END
	
		END
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



-- 저장 프로시저 생성

--//************************************************************************
--// 내   용 : 뮤 반지이벤트 경품등록
--// 부   서 : 게임개발팀 
--// 만들일 : 2003.12.05
--// 만들이 : 준일
--// 
--//************************************************************************

CREATE PROCEDURE	SP_REG_RINGGIFT_TEMP
	@AccountID		varchar(10),	-- 계정명
	@GiftKind		tinyint		-- 상품의 종류 (0:용사의반지드롭, 1:오크죽임)
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	DECLARE	@ToDay		DATETIME
	DECLARE	@strToDayStart		VARCHAR(32)
	DECLARE	@strToDayEnd		VARCHAR(32)
	DECLARE	@iToDayRegCount	INT
	DECLARE	@iMaxAllGiftNum	INT		-- 해당 번호 상품의 모든 개수
	DECLARE	@iMaxTodayGiftNum	INT		-- 해당 번호 상품의 오늘의 개수

	IF @GiftKind = 0
	BEGIN
		SET @iMaxAllGiftNum = 80		
		SET @iMaxTodayGiftNum = 2		
	END	
	ELSE
	BEGIN
		SET @iMaxAllGiftNum = 160		
		SET @iMaxTodayGiftNum = 3		
	END

	SELECT @iToDayRegCount = COUNT(*)
	FROM T_RingAttackEvent_Gift
	WHERE @GiftKind = GiftKind

	IF @iToDayRegCount >= @iMaxAllGiftNum		-- 전체 최대 상품 등록 수를 초과하면 나간다.
	BEGIN
		SELECT 3 As RegResult, @AccountID
	END
	ELSE
	BEGIN
		SET @ToDay = GetDate()
		
		SET @strToDayStart = CONVERT(char(4), YEAR(@ToDay)) + '-' + CONVERT(char(2), MONTH(@ToDay)) + '-' + CONVERT(char(2), DAY(@ToDay)) + ' 00:00:00'
		SET @strToDayEnd = CONVERT(char(4), YEAR(@ToDay)) + '-' + CONVERT(char(2), MONTH(@ToDay)) + '-' + CONVERT(char(2), DAY(@ToDay)) + ' 23:59:59'
		
		SELECT @iToDayRegCount = COUNT(*)
		FROM T_RingAttackEvent_Gift
		WHERE RegisterDate between @strToDayStart and @strToDayEnd
			and @GiftKind = GiftKind
	
		IF @iToDayRegCount >= @iMaxTodayGiftNum	-- 오늘의 최대 상품 등록 수를 초과하면 나간다.
		BEGIN
			SELECT 3 As RegResult, @AccountID
		END
		ELSE
		BEGIN
			IF EXISTS ( SELECT * FROM T_RingAttackEvent_Gift  WITH (READUNCOMMITTED) 
						WHERE AccountID = @AccountID)
			BEGIN	
				-- 이미 등록된 사람이므로 그사람의 계정명 정도만 보낸다.
				SELECT 2 As RegResult, @AccountID
			END
			ELSE
			BEGIN
				INSERT INTO T_RingAttackEvent_Gift
				VALUES (@AccountID, @GiftKind, default)
		
				-- 새로 등록하는 사람이며 등록 성공
				SELECT 1 As RegResult, @AccountID
			END
		END
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
SET ANSI_NULLS OFF 
GO



--//************************************************************************
--// 내   용 : 뮤 상용화 2주년 기념 복권 이벤트 관련 - 시리얼 등록
--// 부   서 : 게임개발팀 
--// 만들일 : 2003.10.20
--// 만들이 : 준일
--// 
--//************************************************************************

CREATE PROCEDURE	SP_REG_SERIAL
	@AccountID		varchar(10),	-- 계정명
	@MembGUID		int,		-- GUID
	@SERIAL1		varchar(4),	-- 시리얼1
	@SERIAL2		varchar(4),	-- 시리얼2
	@SERIAL3		varchar(4)	-- 시리얼3
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	-- 1 . T_RegCount_Check 테이블에서 해당 계정이 이미 등록했는지, 카운트를 넘었는지 체크한다.
	DECLARE @MAX_REGCOUNT	INT
	DECLARE @iREG_COUNT	INT
	DECLARE @iREG_ALREADY	BIT

	SET @MAX_REGCOUNT 	= 20
	SET @iREG_ALREADY		= 0
	
	IF EXISTS ( SELECT * FROM T_RegCount_Check  WITH (READUNCOMMITTED) 
				WHERE AccountID = @AccountID)
	BEGIN	
		-- T_RegCount_Check 에는 이미 계정명이 있을 것이므로 별도의 검증없이 등록여부를 변경한다.
		SELECT @iREG_ALREADY = RegAlready FROM T_RegCount_Check WHERE AccountID = @AccountID
		
/*		IF (@iREG_ALREADY = 1 )
		BEGIN
			SELECT 5 As RegResult, 0 As F_Register_Section
		END
		ELSE
		BEGIN
*/			SELECT @iREG_COUNT = RegCount 
			FROM T_RegCount_Check
			WHERE AccountID = @AccountID
		
			IF (@iREG_COUNT >= @MAX_REGCOUNT)
			BEGIN
				SET @iREG_ALREADY = 1

				SELECT 2 As RegResult, 0 As F_Register_Section
			END
			ELSE
			BEGIN
				UPDATE T_RegCount_Check
				SET RegCount = RegCount + 1
				WHERE AccountID = @AccountID
			END
--		END
	END
	ELSE
	BEGIN
		INSERT INTO T_RegCount_Check
		VALUES (@AccountID, default, default)
	END


/*	IF (@iREG_ALREADY =1)
	BEGIN
		IF(@@Error <> 0 )
			ROLLBACK TRANSACTION
		ELSE	
			COMMIT TRANSACTION
		
		SET NOCOUNT OFF	

		RETURN
	END
*/	

	-- 2 . T_Serial_Bank 테이블에 시리얼을 등록한다.
	DECLARE @REG_CHECK	BIT
	
	IF EXISTS ( SELECT F_RegisterCheck FROM T_Serial_Bank  WITH (READUNCOMMITTED) 
		WHERE  P_Serial_1 = @SERIAL1 and P_Serial_2 = @SERIAL2 and P_Serial_3 = @SERIAL3)
	BEGIN	
		SELECT @REG_CHECK = F_RegisterCheck FROM T_Serial_Bank  WITH (READUNCOMMITTED) 
		WHERE  P_Serial_1 = @SERIAL1 and P_Serial_2 = @SERIAL2 and P_Serial_3 = @SERIAL3

		IF (@REG_CHECK = 0)
		BEGIN
			UPDATE T_Serial_Bank
			SET F_Member_Guid = @MembGUID, F_Member_Id = @AccountID, F_RegisterCheck = 1, F_Register_Date = GetDate()
			WHERE  P_Serial_1 = @SERIAL1 and P_Serial_2 = @SERIAL2 and P_Serial_3 = @SERIAL3

			-- T_RegCount_Check 에는 이미 계정명이 있을 것이므로 별도의 검증없이 등록여부를 변경한다.
			UPDATE T_RegCount_Check
			SET RegAlready = 1
			WHERE AccountID = @AccountID
			
			SELECT 0 As RegResult, F_Register_Section
			FROM T_Serial_Bank
			WHERE  P_Serial_1 = @SERIAL1 and P_Serial_2 = @SERIAL2 and P_Serial_3 = @SERIAL3
		END
		ELSE
		BEGIN	-- 이미 등록되었다.
			SELECT 1 As RegResult, 0 As F_Register_Section
		END

	END
	ELSE
	BEGIN	-- 해당 시리얼은 존재하지 않는다.
		SELECT 3 As RegResult, 0  As F_Register_Section
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


CREATE PROCEDURE ShowResourceInfo
    AS
    SET NOCOUNT ON
    print '*********************************'
    print ' 5초간 사용된 시스템 자원량입니다.'
    print '*********************************'
    SELECT spid, cpu, physical_io 
    INTO #Temp1 FROM master..sysprocesses
    WAITFOR DELAY '0:00:05'  
    SELECT P.spid, P.cpu-T.cpu AS 'cpu 사용량(ms)', 
    P.physical_io-T.physical_io AS 'Disk R/W량(Page)',
    P.nt_username ' NT 사용자명', P.program_name '응용프로그램', 
    P.hostname, P.cmd
    FROM master..sysprocesses P, #Temp1 T
    WHERE P.spid=T.spid 
    AND P.cpu-T.cpu+P.physical_io-T.physical_io+P.memusage > 0
    DROP TABLE #Temp1
    Return
    


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROC UP_EMP6 @JOB VARCHAR(4), @YEAR CHAR(4), @SAL BIGINT
AS
	SELECT * FROM EMP
		WHERE JOB = @JOB AND DATEPART(YY,EDATE) = @YEAR
			AND SAL > @SAL


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

