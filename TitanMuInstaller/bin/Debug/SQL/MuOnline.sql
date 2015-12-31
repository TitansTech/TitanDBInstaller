if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_GuildMember_Guild]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[GuildMember] DROP CONSTRAINT FK_GuildMember_Guild
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[USP_SelectAdminFriendMail]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[USP_SelectAdminFriendMail]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[USP_SelectAdminFriendMailGuid]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[USP_SelectAdminFriendMailGuid]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_CheckSiegeGuildList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_CheckSiegeGuildList]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_GetAllGuildMarkRegInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_GetAllGuildMarkRegInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_GetCalcRegGuildList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_GetCalcRegGuildList]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_GetCastleMoneySts]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_GetCastleMoneySts]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_GetCastleMoneyStsRange]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_GetCastleMoneyStsRange]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_GetCastleNpcInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_GetCastleNpcInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_GetCastleTaxInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_GetCastleTaxInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_GetCastleTotalInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_GetCastleTotalInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_GetCsGuildUnionInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_GetCsGuildUnionInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_GetGuildMarkRegInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_GetGuildMarkRegInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_GetOwnerGuildMaster]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_GetOwnerGuildMaster]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_GetSiegeGuildInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_GetSiegeGuildInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ModifyCastleOwnerInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ModifyCastleOwnerInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ModifyCastleSchedule]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ModifyCastleSchedule]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ModifyGuildGiveUp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ModifyGuildGiveUp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ModifyGuildMarkRegCount]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ModifyGuildMarkRegCount]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ModifyGuildMarkReset]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ModifyGuildMarkReset]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ModifyMoney]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ModifyMoney]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ModifySiegeEnd]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ModifySiegeEnd]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ModifyTaxRate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ModifyTaxRate]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ReqNpcBuy]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ReqNpcBuy]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ReqNpcRemove]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ReqNpcRemove]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ReqNpcRepair]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ReqNpcRepair]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ReqNpcUpdate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ReqNpcUpdate]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ReqNpcUpgrade]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ReqNpcUpgrade]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ReqRegAttackGuild]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ReqRegAttackGuild]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ReqRegGuildMark]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ReqRegGuildMark]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ResetCastleSiege]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ResetCastleSiege]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ResetCastleTaxInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ResetCastleTaxInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ResetRegSiegeInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ResetRegSiegeInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_ResetSiegeGuildInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_ResetSiegeGuildInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_SetSiegeGuildInfo]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_SetSiegeGuildInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CS_SetSiegeGuildOK]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CS_SetSiegeGuildOK]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CharMoveReset]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CharMoveReset]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CreateCharacter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CreateCharacter]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CreateCharacter_GetVersion]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CreateCharacter_GetVersion]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_DelMail]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_DelMail]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_FriendAdd]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_FriendAdd]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_FriendDel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_FriendDel]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_GetItemSerial]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_GetItemSerial]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_GetItemSerial2]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_GetItemSerial2]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_GuildCreate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_GuildCreate]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_MoveCharacter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_MoveCharacter]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_RenameCharacter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_RenameCharacter]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_SetGuildDelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_SetGuildDelete]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_UserGuidCreate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_UserGuidCreate]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_WaitFriendAdd]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_WaitFriendAdd]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_WaitFriendDel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_WaitFriendDel]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_WriteMail]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_WriteMail]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vCharacterPreview]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vCharacterPreview]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AccountCharacter]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[AccountCharacter]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BK_AccountCharacter]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BK_AccountCharacter]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BK_warehouse]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BK_warehouse]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Back_AccountCharacter]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Back_AccountCharacter]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Back_Character]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Back_Character]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Back_OptionData]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Back_OptionData]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Back_T_CGuid]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Back_T_CGuid]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CharPreview]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CharPreview]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Character]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Character]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DefaultClassType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DefaultClassType]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GameServerInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[GameServerInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Guild]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Guild]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GuildMember]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[GuildMember]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MuCastle_DATA]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MuCastle_DATA]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MuCastle_MONEY_STATISTICS]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MuCastle_MONEY_STATISTICS]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MuCastle_NPC]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MuCastle_NPC]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MuCastle_REG_SIEGE]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MuCastle_REG_SIEGE]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MuCastle_SIEGE_GUILDLIST]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MuCastle_SIEGE_GUILDLIST]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[OptionData]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[OptionData]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_CGuid]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_CGuid]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_CurCharName]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_CurCharName]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_FriendList]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_FriendList]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_FriendMail]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_FriendMail]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_FriendMain]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_FriendMain]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_PetItem_Info]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_PetItem_Info]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_WaitFriend]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_WaitFriend]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ZenEvent]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ZenEvent]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[warehouse]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[warehouse]
GO

CREATE TABLE [dbo].[AccountCharacter] (
	[Number] [int] IDENTITY (1, 1) NOT NULL ,
	[Id] [varchar] (10) NOT NULL ,
	[GameID1] [varchar] (10) NULL ,
	[GameID2] [varchar] (10) NULL ,
	[GameID3] [varchar] (10) NULL ,
	[GameID4] [varchar] (10) NULL ,
	[GameID5] [varchar] (10) NULL ,
	[GameIDC] [varchar] (10) NULL ,
	[MoveCnt] [tinyint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BK_AccountCharacter] (
	[Number] [int] NOT NULL ,
	[Id] [varchar] (10) NOT NULL ,
	[GameID1] [varchar] (10) NULL ,
	[GameID2] [varchar] (10) NULL ,
	[GameID3] [varchar] (10) NULL ,
	[GameID4] [varchar] (10) NULL ,
	[GameID5] [varchar] (10) NULL ,
	[GameIDC] [varchar] (10) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BK_warehouse] (
	[AccountID] [varchar] (10) NOT NULL ,
	[Items] [varbinary] (1200) NULL ,
	[Money] [int] NULL ,
	[EndUseDate] [smalldatetime] NULL ,
	[DbVersion] [tinyint] NULL ,
	[pw] [smallint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Back_AccountCharacter] (
	[Number] [int] NOT NULL ,
	[Id] [varchar] (10) NOT NULL ,
	[GameID1] [varchar] (10) NULL ,
	[GameID2] [varchar] (10) NULL ,
	[GameID3] [varchar] (10) NULL ,
	[GameID4] [varchar] (10) NULL ,
	[GameID5] [varchar] (10) NULL ,
	[GameIDC] [varchar] (10) NULL ,
	[MoveCnt] [tinyint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Back_Character] (
	[AccountID] [varchar] (10) NOT NULL ,
	[Name] [varchar] (10) NOT NULL ,
	[cLevel] [int] NULL ,
	[LevelUpPoint] [int] NULL ,
	[Class] [tinyint] NULL ,
	[Experience] [int] NULL ,
	[Strength] [smallint] NULL ,
	[Dexterity] [smallint] NULL ,
	[Vitality] [smallint] NULL ,
	[Energy] [smallint] NULL ,
	[Inventory] [varbinary] (1080) NULL ,
	[MagicList] [varbinary] (180) NULL ,
	[Money] [int] NULL ,
	[Life] [real] NULL ,
	[MaxLife] [real] NULL ,
	[Mana] [real] NULL ,
	[MaxMana] [real] NULL ,
	[MapNumber] [smallint] NULL ,
	[MapPosX] [smallint] NULL ,
	[MapPosY] [smallint] NULL ,
	[MapDir] [tinyint] NULL ,
	[PkCount] [int] NULL ,
	[PkLevel] [int] NULL ,
	[PkTime] [int] NULL ,
	[MDate] [smalldatetime] NULL ,
	[LDate] [smalldatetime] NULL ,
	[CtlCode] [tinyint] NULL ,
	[DbVersion] [tinyint] NULL ,
	[Quest] [varbinary] (50) NULL ,
	[Leadership] [smallint] NULL ,
	[ChatLimitTime] [smallint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Back_OptionData] (
	[Name] [varchar] (10) NOT NULL ,
	[SkillKey] [binary] (10) NULL ,
	[GameOption] [tinyint] NULL ,
	[Qkey] [tinyint] NULL ,
	[Wkey] [tinyint] NULL ,
	[Ekey] [tinyint] NULL ,
	[ChatWindow] [tinyint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Back_T_CGuid] (
	[GUID] [int] NOT NULL ,
	[Name] [varchar] (10) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CharPreview] (
	[Name] [varchar] (10) NOT NULL ,
	[cLevel] [int] NULL ,
	[Class] [tinyint] NOT NULL ,
	[Inventory] [varbinary] (84) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Character] (
	[AccountID] [varchar] (10) NOT NULL ,
	[Name] [varchar] (10) NOT NULL ,
	[cLevel] [int] NULL ,
	[LevelUpPoint] [int] NULL ,
	[Class] [tinyint] NULL ,
	[Experience] [int] NULL ,
	[Strength] [smallint] NULL ,
	[Dexterity] [smallint] NULL ,
	[Vitality] [smallint] NULL ,
	[Energy] [smallint] NULL ,
	[Inventory] [varbinary] (1080) NULL ,
	[MagicList] [varbinary] (180) NULL ,
	[Money] [int] NULL ,
	[Life] [real] NULL ,
	[MaxLife] [real] NULL ,
	[Mana] [real] NULL ,
	[MaxMana] [real] NULL ,
	[MapNumber] [smallint] NULL ,
	[MapPosX] [smallint] NULL ,
	[MapPosY] [smallint] NULL ,
	[MapDir] [tinyint] NULL ,
	[PkCount] [int] NULL ,
	[PkLevel] [int] NULL ,
	[PkTime] [int] NULL ,
	[MDate] [smalldatetime] NULL ,
	[LDate] [smalldatetime] NULL ,
	[CtlCode] [tinyint] NULL ,
	[DbVersion] [tinyint] NULL ,
	[Quest] [varbinary] (50) NULL ,
	[Leadership] [smallint] NULL ,
	[ChatLimitTime] [smallint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DefaultClassType] (
	[Class] [tinyint] NOT NULL ,
	[Strength] [smallint] NULL ,
	[Dexterity] [smallint] NULL ,
	[Vitality] [smallint] NULL ,
	[Energy] [smallint] NULL ,
	[Inventory] [varbinary] (1080) NULL ,
	[MagicList] [varbinary] (180) NULL ,
	[Life] [real] NULL ,
	[MaxLife] [real] NULL ,
	[Mana] [real] NULL ,
	[MaxMana] [real] NULL ,
	[MapNumber] [smallint] NULL ,
	[MapPosX] [smallint] NULL ,
	[MapPosY] [smallint] NULL ,
	[Quest] [varbinary] (50) NULL ,
	[DbVersion] [tinyint] NULL ,
	[Leadership] [smallint] NULL ,
	[Level] [smallint] NULL ,
	[LevelUpPoint] [smallint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[GameServerInfo] (
	[Number] [int] NOT NULL ,
	[ItemCount] [int] NOT NULL ,
	[ZenCount] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Guild] (
	[G_Name] [varchar] (8) NOT NULL ,
	[G_Mark] [varbinary] (32) NULL ,
	[G_Score] [int] NULL ,
	[G_Master] [varchar] (10) NULL ,
	[G_Count] [int] NULL ,
	[G_Notice] [varchar] (60) NULL ,
	[Number] [int] IDENTITY (1, 1) NOT NULL ,
	[G_Type] [int] NOT NULL ,
	[G_Rival] [int] NOT NULL ,
	[G_Union] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[GuildMember] (
	[Name] [varchar] (10) NOT NULL ,
	[G_Name] [varchar] (8) NOT NULL ,
	[G_Level] [tinyint] NULL ,
	[G_Status] [tinyint] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MuCastle_DATA] (
	[MAP_SVR_GROUP] [int] NOT NULL ,
	[SIEGE_START_DATE] [datetime] NOT NULL ,
	[SIEGE_END_DATE] [datetime] NOT NULL ,
	[SIEGE_GUILDLIST_SETTED] [bit] NOT NULL ,
	[SIEGE_ENDED] [bit] NOT NULL ,
	[CASTLE_OCCUPY] [bit] NOT NULL ,
	[OWNER_GUILD] [varchar] (8) NOT NULL ,
	[MONEY] [money] NOT NULL ,
	[TAX_RATE_CHAOS] [int] NOT NULL ,
	[TAX_RATE_STORE] [int] NOT NULL ,
	[TAX_HUNT_ZONE] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MuCastle_MONEY_STATISTICS] (
	[MAP_SVR_GROUP] [int] NOT NULL ,
	[LOG_DATE] [datetime] NOT NULL ,
	[MONEY_CHANGE] [money] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MuCastle_NPC] (
	[MAP_SVR_GROUP] [int] NOT NULL ,
	[NPC_NUMBER] [int] NOT NULL ,
	[NPC_INDEX] [int] NOT NULL ,
	[NPC_DF_LEVEL] [int] NOT NULL ,
	[NPC_RG_LEVEL] [int] NOT NULL ,
	[NPC_MAXHP] [int] NOT NULL ,
	[NPC_HP] [int] NOT NULL ,
	[NPC_X] [tinyint] NOT NULL ,
	[NPC_Y] [tinyint] NOT NULL ,
	[NPC_DIR] [tinyint] NOT NULL ,
	[NPC_CREATEDATE] [datetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MuCastle_REG_SIEGE] (
	[MAP_SVR_GROUP] [int] NOT NULL ,
	[REG_SIEGE_GUILD] [varchar] (8) NOT NULL ,
	[REG_MARKS] [int] NOT NULL ,
	[IS_GIVEUP] [tinyint] NOT NULL ,
	[SEQ_NUM] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MuCastle_SIEGE_GUILDLIST] (
	[MAP_SVR_GROUP] [int] NOT NULL ,
	[GUILD_NAME] [varchar] (10) NOT NULL ,
	[GUILD_ID] [int] NOT NULL ,
	[GUILD_INVOLVED] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OptionData] (
	[Name] [varchar] (10) NOT NULL ,
	[SkillKey] [binary] (10) NULL ,
	[GameOption] [tinyint] NULL ,
	[Qkey] [tinyint] NULL ,
	[Wkey] [tinyint] NULL ,
	[Ekey] [tinyint] NULL ,
	[ChatWindow] [tinyint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_CGuid] (
	[GUID] [int] IDENTITY (1, 1) NOT NULL ,
	[Name] [varchar] (10) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_CurCharName] (
	[Name] [char] (10) NOT NULL ,
	[cDate] [smalldatetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_FriendList] (
	[GUID] [int] NOT NULL ,
	[FriendGuid] [int] NULL ,
	[FriendName] [varchar] (10) NULL ,
	[Del] [tinyint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_FriendMail] (
	[MemoIndex] [int] NOT NULL ,
	[GUID] [int] NOT NULL ,
	[FriendName] [varchar] (10) NULL ,
	[wDate] [smalldatetime] NOT NULL ,
	[Subject] [varchar] (50) NULL ,
	[bRead] [bit] NOT NULL ,
	[Memo] [varbinary] (1000) NULL ,
	[Photo] [binary] (13) NULL ,
	[Dir] [tinyint] NULL ,
	[Act] [tinyint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_FriendMain] (
	[GUID] [int] NOT NULL ,
	[Name] [varchar] (10) NOT NULL ,
	[FriendCount] [tinyint] NULL ,
	[MemoCount] [int] NULL ,
	[MemoTotal] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_PetItem_Info] (
	[ItemSerial] [int] NOT NULL ,
	[Pet_Level] [smallint] NULL ,
	[Pet_Exp] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_WaitFriend] (
	[GUID] [int] NOT NULL ,
	[FriendGuid] [int] NOT NULL ,
	[FriendName] [varchar] (10) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ZenEvent] (
	[Guid] [int] IDENTITY (1, 1) NOT NULL ,
	[AccountID] [varchar] (10) NOT NULL ,
	[Zen] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[warehouse] (
	[AccountID] [varchar] (10) NOT NULL ,
	[Items] [varbinary] (1200) NULL ,
	[Money] [int] NULL ,
	[EndUseDate] [smalldatetime] NULL ,
	[DbVersion] [tinyint] NULL ,
	[pw] [smallint] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BK_AccountCharacter] WITH NOCHECK ADD 
	CONSTRAINT [PK_BK_AccountCharacter] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BK_warehouse] WITH NOCHECK ADD 
	CONSTRAINT [PK_BK_warehouse] PRIMARY KEY  CLUSTERED 
	(
		[AccountID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CharPreview] WITH NOCHECK ADD 
	CONSTRAINT [PK_CharPreview] PRIMARY KEY  CLUSTERED 
	(
		[Name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DefaultClassType] WITH NOCHECK ADD 
	CONSTRAINT [PK_DefaultClassType] PRIMARY KEY  CLUSTERED 
	(
		[Class]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Guild] WITH NOCHECK ADD 
	CONSTRAINT [PK_Guild] PRIMARY KEY  CLUSTERED 
	(
		[G_Name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[GuildMember] WITH NOCHECK ADD 
	CONSTRAINT [PK_GuildMember] PRIMARY KEY  CLUSTERED 
	(
		[Name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MuCastle_DATA] WITH NOCHECK ADD 
	CONSTRAINT [PK_MuCastle_DATA] PRIMARY KEY  CLUSTERED 
	(
		[MAP_SVR_GROUP]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[OptionData] WITH NOCHECK ADD 
	CONSTRAINT [PK_OptionData] PRIMARY KEY  CLUSTERED 
	(
		[Name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_CGuid] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_CGuid] PRIMARY KEY  CLUSTERED 
	(
		[GUID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_FriendMail] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_FriendMemo] PRIMARY KEY  CLUSTERED 
	(
		[GUID],
		[MemoIndex]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_FriendMain] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_FriendMain] PRIMARY KEY  CLUSTERED 
	(
		[GUID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_PetItem_Info] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Pet_Info] PRIMARY KEY  CLUSTERED 
	(
		[ItemSerial]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ZenEvent] WITH NOCHECK ADD 
	CONSTRAINT [PK_ZenEvent] PRIMARY KEY  CLUSTERED 
	(
		[Guid],
		[AccountID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[warehouse] WITH NOCHECK ADD 
	CONSTRAINT [PK_warehouse] PRIMARY KEY  CLUSTERED 
	(
		[AccountID]
	)  ON [PRIMARY] 
GO

 CREATE  CLUSTERED  INDEX [IX_MuCastle_MONEY_STATISTICS] ON [dbo].[MuCastle_MONEY_STATISTICS]([MAP_SVR_GROUP]) ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_NPC_PK] ON [dbo].[MuCastle_NPC]([MAP_SVR_GROUP]) ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_ATTACK_GUILD_KEY] ON [dbo].[MuCastle_REG_SIEGE]([MAP_SVR_GROUP]) ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_MuCastle_SIEGE_GUILDLIST] ON [dbo].[MuCastle_SIEGE_GUILDLIST]([MAP_SVR_GROUP]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AccountCharacter] ADD 
	CONSTRAINT [DF__AccountCh__MoveC__7A3223E8] DEFAULT (0) FOR [MoveCnt],
	CONSTRAINT [PK_AccountCharacter] PRIMARY KEY  NONCLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BK_warehouse] ADD 
	CONSTRAINT [DF_BK_warehouse_Money] DEFAULT (0) FOR [Money],
	CONSTRAINT [DF__BK_warehouse__DbVer__6E01572D] DEFAULT (0) FOR [DbVersion],
	CONSTRAINT [DF__BK_warehouse__pw__38996AB5] DEFAULT (0) FOR [pw]
GO

ALTER TABLE [dbo].[Back_AccountCharacter] ADD 
	CONSTRAINT [DF__AccountCh__MoveC__7A3223E81] DEFAULT (0) FOR [MoveCnt]
GO

ALTER TABLE [dbo].[Back_Character] ADD 
	CONSTRAINT [DF_Character_cLevel1] DEFAULT (1) FOR [cLevel],
	CONSTRAINT [DF_Character_LevelUpPoint1] DEFAULT (0) FOR [LevelUpPoint],
	CONSTRAINT [DF_Character_Experience1] DEFAULT (0) FOR [Experience],
	CONSTRAINT [DF_Character_Money1] DEFAULT (0) FOR [Money],
	CONSTRAINT [DF_Character_MapDir1] DEFAULT (0) FOR [MapDir],
	CONSTRAINT [DF_Character_PkCount1] DEFAULT (0) FOR [PkCount],
	CONSTRAINT [DF_Character_PkLevel1] DEFAULT (3) FOR [PkLevel],
	CONSTRAINT [DF_Character_PkTime1] DEFAULT (0) FOR [PkTime],
	CONSTRAINT [DF_Character_CtlCode1] DEFAULT (0) FOR [CtlCode],
	CONSTRAINT [DF__Character__DbVer__3A4CA8FD1] DEFAULT (0) FOR [DbVersion],
	CONSTRAINT [DF__Character__Quest__40F9A68C1] DEFAULT (0) FOR [Quest],
	CONSTRAINT [DF__Character__Leade__6FB495751] DEFAULT (0) FOR [Leadership],
	CONSTRAINT [DF__Character__ChatL__70A8B9AE1] DEFAULT (0) FOR [ChatLimitTime]
GO

ALTER TABLE [dbo].[Character] ADD 
	CONSTRAINT [DF_Character_cLevel] DEFAULT (1) FOR [cLevel],
	CONSTRAINT [DF_Character_LevelUpPoint] DEFAULT (0) FOR [LevelUpPoint],
	CONSTRAINT [DF_Character_Experience] DEFAULT (0) FOR [Experience],
	CONSTRAINT [DF_Character_Money] DEFAULT (0) FOR [Money],
	CONSTRAINT [DF_Character_MapDir] DEFAULT (0) FOR [MapDir],
	CONSTRAINT [DF_Character_PkCount] DEFAULT (0) FOR [PkCount],
	CONSTRAINT [DF_Character_PkLevel] DEFAULT (3) FOR [PkLevel],
	CONSTRAINT [DF_Character_PkTime] DEFAULT (0) FOR [PkTime],
	CONSTRAINT [DF_Character_CtlCode] DEFAULT (0) FOR [CtlCode],
	CONSTRAINT [DF__Character__DbVer__3A4CA8FD] DEFAULT (0) FOR [DbVersion],
	CONSTRAINT [DF__Character__Quest__40F9A68C] DEFAULT (0) FOR [Quest],
	CONSTRAINT [DF__Character__Leade__6FB49575] DEFAULT (0) FOR [Leadership],
	CONSTRAINT [DF__Character__ChatL__70A8B9AE] DEFAULT (0) FOR [ChatLimitTime],
	CONSTRAINT [PK_Character] PRIMARY KEY  NONCLUSTERED 
	(
		[Name]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DefaultClassType] ADD 
	CONSTRAINT [DF__DefaultCl__Leade__719CDDE7] DEFAULT (0) FOR [Leadership],
	CONSTRAINT [DF__DefaultCl__Level__72910220] DEFAULT (0) FOR [Level],
	CONSTRAINT [DF__DefaultCl__Level__73852659] DEFAULT (0) FOR [LevelUpPoint]
GO

ALTER TABLE [dbo].[GameServerInfo] ADD 
	CONSTRAINT [DF_GameServerInfo_Number] DEFAULT (0) FOR [Number],
	CONSTRAINT [DF_GameServerInfo_ZenCount] DEFAULT (0) FOR [ZenCount],
	CONSTRAINT [PK_GameServerInfo] PRIMARY KEY  NONCLUSTERED 
	(
		[Number]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Guild] ADD 
	CONSTRAINT [DF__Guild__G_Type__7EF6D905] DEFAULT (0) FOR [G_Type],
	CONSTRAINT [DF__Guild__G_Rival__7FEAFD3E] DEFAULT (0) FOR [G_Rival],
	CONSTRAINT [DF__Guild__G_Union__00DF2177] DEFAULT (0) FOR [G_Union]
GO

 CREATE  INDEX [IDX_GUILD_NUMBER] ON [dbo].[Guild]([Number]) ON [PRIMARY]
GO

 CREATE  INDEX [IDX_GUILD_G_UNION] ON [dbo].[Guild]([G_Union]) ON [PRIMARY]
GO

 CREATE  INDEX [IDX_GUILD_G_RIVAL] ON [dbo].[Guild]([G_Rival]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[GuildMember] ADD 
	CONSTRAINT [DF__GuildMemb__G_Sta__01D345B0] DEFAULT (0) FOR [G_Status]
GO

 CREATE  INDEX [IX_GuildMember] ON [dbo].[GuildMember]([G_Name]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MuCastle_DATA] ADD 
	CONSTRAINT [DF_MuCastle_Data_SEIGE_ENDED] DEFAULT (0) FOR [SIEGE_ENDED],
	CONSTRAINT [DF_MuCastle_Data_CASTLE_OCCUPY] DEFAULT (0) FOR [CASTLE_OCCUPY],
	CONSTRAINT [DF_MuCastle_Data_MONEY] DEFAULT (0) FOR [MONEY],
	CONSTRAINT [DF_MuCastle_Data_TAX_RATE] DEFAULT (0) FOR [TAX_RATE_CHAOS],
	CONSTRAINT [DF_MuCastle_DATA_TAX_RATE_STORE] DEFAULT (0) FOR [TAX_RATE_STORE],
	CONSTRAINT [DF_MuCastle_DATA_TAX_HUNT_ZONE] DEFAULT (0) FOR [TAX_HUNT_ZONE]
GO

 CREATE  INDEX [IX_MuCastle_MONEY_STATISTICS_NC] ON [dbo].[MuCastle_MONEY_STATISTICS]([MAP_SVR_GROUP], [LOG_DATE]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MuCastle_NPC] ADD 
	CONSTRAINT [IX_NPC_SUBKEY] UNIQUE  NONCLUSTERED 
	(
		[MAP_SVR_GROUP],
		[NPC_NUMBER],
		[NPC_INDEX]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MuCastle_REG_SIEGE] ADD 
	CONSTRAINT [IX_ATTACK_GUILD_SUBKEY] UNIQUE  NONCLUSTERED 
	(
		[MAP_SVR_GROUP],
		[REG_SIEGE_GUILD]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[OptionData] ADD 
	CONSTRAINT [DF__OptionDat__ChatW__4A8310C6] DEFAULT (255) FOR [ChatWindow]
GO

 CREATE  INDEX [IX_T_CGuid_Name] ON [dbo].[T_CGuid]([Name]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_CurCharName] ADD 
	CONSTRAINT [DF__T_CurChar__cDate__6BE40491] DEFAULT (getdate()) FOR [cDate]
GO

ALTER TABLE [dbo].[T_FriendList] ADD 
	CONSTRAINT [DF_T_FriendList_Del] DEFAULT (0) FOR [Del]
GO

 CREATE  INDEX [IX_T_FriendList] ON [dbo].[T_FriendList]([GUID], [FriendGuid]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_FriendMail] ADD 
	CONSTRAINT [DF_T_FriendMemo_MemoIndex] DEFAULT (10) FOR [MemoIndex],
	CONSTRAINT [DF_T_FriendMemo_wDate] DEFAULT (getdate()) FOR [wDate],
	CONSTRAINT [DF_T_FriendMemo_MemoRead] DEFAULT (0) FOR [bRead],
	CONSTRAINT [DF_T_FriendMemo_Dir] DEFAULT (0) FOR [Dir],
	CONSTRAINT [DF_T_FriendMemo_Action] DEFAULT (0) FOR [Act]
GO

ALTER TABLE [dbo].[T_FriendMain] ADD 
	CONSTRAINT [DF_T_FriendMain_MemoCount] DEFAULT (10) FOR [MemoCount],
	CONSTRAINT [DF_T_FriendMain_MemoTotal] DEFAULT (0) FOR [MemoTotal]
GO

 CREATE  INDEX [IX_T_FriendMain] ON [dbo].[T_FriendMain]([Name]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_PetItem_Info] ADD 
	CONSTRAINT [DF_T_Pet_Info_Pet_Level] DEFAULT (0) FOR [Pet_Level],
	CONSTRAINT [DF_T_Pet_Info_Pet_Exp] DEFAULT (0) FOR [Pet_Exp]
GO

 CREATE  INDEX [IX_T_WaitFriend] ON [dbo].[T_WaitFriend]([GUID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ZenEvent] ADD 
	CONSTRAINT [DF_ZenEvent_Zen] DEFAULT (0) FOR [Zen]
GO

ALTER TABLE [dbo].[warehouse] ADD 
	CONSTRAINT [DF_warehouse_Money] DEFAULT (0) FOR [Money],
	CONSTRAINT [DF__warehouse__DbVer__3B40CD36] DEFAULT (0) FOR [DbVersion],
	CONSTRAINT [DF__warehouse__pw__40058253] DEFAULT (0) FOR [pw]
GO

ALTER TABLE [dbo].[GuildMember] ADD 
	CONSTRAINT [FK_GuildMember_Guild] FOREIGN KEY 
	(
		[G_Name]
	) REFERENCES [dbo].[Guild] (
		[G_Name]
	)
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW vCharacterPreview 
AS SELECT Name, cLevel, Class, Inventory, CtlCode, DbVersion FROM Character

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


/*********************************************************************
	작성일:		2005-05-10		
	작성자:		정종현
	SP명:		USP_SelectAdminFriendMail
	SP내용:
			-서버상의 친구 메일을 가져오고 메일은 삭제 처리 한다.
			
	예제:
			EXEC dbo.USP_SelectAdminFriendMail
	입력변수(값):

	반환변수(값):
			[MemoIndex]
		,	[GUID]
		,	[FriendName]
		,	[wDate]
		,	[Subject]
		,	[bRead]
		,	[Memo]


	참조문서:

	비고:

	EDIT HISTORY:
			
			050510	초기구현 (연구개발 정종현)

**********************************************************************/


CREATE  PROC dbo.USP_SelectAdminFriendMail
	@i_MailAdminGuid	INT

AS
SET NOCOUNT ON

	
	DECLARE @i_AdminMailCount INT
	
	--현재 메일 갯수 확인
	SELECT @i_AdminMailCount = MemoCount FROM T_FriendMain WHERE GUID = @i_MailAdminGuid
	
	IF(@i_AdminMailCount > 0)
	BEGIN
		SELECT 
			MemoIndex, GUID, FriendName, wDate, Subject, bRead,Memo 
		FROM 
			T_FriendMail 
		WHERE 
			GUID =  @i_MailAdminGuid



		/* 트랜잭션 시작 */
		BEGIN TRANSACTION
		
			/*관리자 메일 모두 삭제 */
			DELETE 
			FROM
				T_FriendMail 
			WHERE 
				GUID = @i_MailAdminGuid
		
			/* 현재 받은 총 메일수 초기화 */
			UPDATE
				T_FriendMain
			SET
				MemoTotal = 0
			WHERE
				GUID = @i_MailAdminGuid

		IF @@ERROR = 0 
		BEGIN
			COMMIT TRANSACTION
		END
		ELSE
		BEGIN
			ROLLBACK TRANSACTION
		END



	END			
	


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


/*********************************************************************
	작성일:		2005-05-10		
	작성자:		정종현
	SP명:		USP_SelectAdminFriendMailGuid
	SP내용:
			-서버상의 관리자의 GUID 를 가져온다.
			
	예제:
			EXEC dbo.USP_SelectAdminFriendMailGuid 'webzen'
	입력변수(값):

	반환변수(값):
			[AdminName]

	참조문서:

	비고:

	EDIT HISTORY:
			
			050510	초기구현 (연구개발 정종현)

**********************************************************************/


CREATE  PROC dbo.USP_SelectAdminFriendMailGuid
	@vc_AdminName	VARCHAR(10)

AS
SET NOCOUNT ON

	

	/* 관리자 GUID 가져오기*/
	SELECT GUID from T_FriendMain where Name = @vc_AdminName;	
	


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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 공성서버리스트에 있는지 검사한다.
--// 부서	: MuStudio 
--// 만든날	: 2005.01.11
--// 수정일	: 2005.03.15
--// 만들이	: 안준석
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_CheckSiegeGuildList
	@szGuildName		varchar(8)
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	DECLARE @iEnd INT

	SELECT @iEnd = SIEGE_ENDED FROM MuCastle_DATA

	IF @iEnd = 1
	BEGIN
		SELECT 0 As QueryResult
	END
	ELSE IF EXISTS ( SELECT GUILD_NAME FROM MuCastle_SIEGE_GUILDLIST  WITH (READUNCOMMITTED) 
				WHERE GUILD_NAME = @szGuildName)
	BEGIN
		SELECT 1 As QueryResult	
	END
	ELSE
	BEGIN
		IF EXISTS ( SELECT REG_SIEGE_GUILD FROM MuCastle_REG_SIEGE WITH (READUNCOMMITTED) 
				WHERE REG_SIEGE_GUILD = @szGuildName AND IS_GIVEUP = 0)
		BEGIN
			SELECT 1 As QueryResult
		END
		ELSE
		BEGIN
			SELECT 0 As QueryResult	
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







--//************************************************************************
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 모든 공성측 길드의 마크등록 정보를 얻어온다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_GetAllGuildMarkRegInfo
	@iMapSvrGroup		SMALLINT	-- 맵서버 그룹
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	SELECT TOP 100 * FROM MuCastle_REG_SIEGE WITH (READUNCOMMITTED)
	WHERE MAP_SVR_GROUP = @iMapSvrGroup
	ORDER BY SEQ_NUM DESC

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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 공성 신청 길드들의 모든 필요한 정보들을 정리해서 리스트를 만들어준다. (상위 N개만)
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_GetCalcRegGuildList
	@iMapSvrGroup		SMALLINT	-- 맵서버 그룹
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	DECLARE T_CURSOR CURSOR FAST_FORWARD
	FOR SELECT TOP 100 * FROM MuCastle_REG_SIEGE	WHERE MAP_SVR_GROUP = @iMapSvrGroup AND IS_GIVEUP = 0 ORDER BY SEQ_NUM DESC
	
	OPEN T_CURSOR
	
	DECLARE	@iMapSvrNum			INT
	DECLARE	@szRegGuild			VARCHAR(8)
	DECLARE	@iRegMarks			INT
	DECLARE	@iIsGiveUp			INT
	DECLARE	@iSeqNum			INT

	DECLARE	@iGuildMemberCount		INT
	DECLARE	@iGuildMasterLevel		INT

	CREATE TABLE #T_REG_GUILDLIST  (
		[REG_SIEGE_GUILD] [varchar] (8) NOT NULL ,
		[REG_MARKS] [int] NOT NULL ,
		[GUILD_MEMBER] [int] NOT NULL ,
		[GM_LEVEL] [int] NOT NULL ,
		[SEQ_NUM] [int] NOT NULL 
	) ON [PRIMARY]
	
	FETCH FROM T_CURSOR INTO @iMapSvrNum, @szRegGuild, @iRegMarks, @iIsGiveUp, @iSeqNum
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		IF EXISTS ( SELECT G_Name FROM Guild  WITH (READUNCOMMITTED) WHERE G_Name = @szRegGuild)
		BEGIN
			DECLARE @szGuildMaster	VARCHAR(10)
			SELECT @szGuildMaster = G_Master FROM Guild  WHERE G_Name = @szRegGuild

			IF EXISTS ( SELECT Name FROM Character WITH (READUNCOMMITTED) WHERE Name = @szGuildMaster)
			BEGIN
				-- 여기까지 오면 길드가 정상적으로 존재하는 것이므로 정보를 얻는다.
				SELECT @iGuildMemberCount = COUNT(*) FROM GuildMember WHERE G_Name = @szRegGuild
				SELECT @iGuildMasterLevel = cLevel FROM Character WHERE Name = @szGuildMaster

				INSERT INTO #T_REG_GUILDLIST VALUES (@szRegGuild, @iRegMarks, @iGuildMemberCount, @iGuildMasterLevel, @iSeqNum)
			END
		END
		
		FETCH FROM T_CURSOR INTO @iMapSvrGroup, @szRegGuild, @iRegMarks, @iIsGiveUp, @iSeqNum
	END
	
	CLOSE T_CURSOR
	
	DEALLOCATE T_CURSOR

	SELECT * FROM #T_REG_GUILDLIST

	DROP TABLE #T_REG_GUILDLIST

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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 특정 날짜의 세율 통계정보를 얻어온다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2005.02.22
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_GetCastleMoneySts
	@iMapSvrGroup		SMALLINT,		-- 맵서버 그룹
	@iTaxDate		DATETIME
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON
	
	DECLARE	@iTaxInc		MONEY
	DECLARE	@iTaxDec		MONEY
	
	DECLARE	@iYEAR		INT
	DECLARE	@iMONTH		INT
	DECLARE	@iDAY			INT
	
	DECLARE	@dtLogDateStart	DATETIME
	DECLARE	@dtLogDateEnd	DATETIME
	
	SELECT	@iYEAR		= DATEPART(YY, @iTaxDate)
	SELECT	@iMONTH		= DATEPART(MM, @iTaxDate)
	SELECT	@iDAY			= DATEPART(DD, @iTaxDate)
	
	SET		@dtLogDateStart	= CAST(@iYEAR AS VARCHAR(4)) + '-' + CAST(@iMONTH AS VARCHAR(2))  + '-' + CAST(@iDAY AS VARCHAR(4)) + ' 00:00:00'
	SET		@dtLogDateEnd	= CAST(@iYEAR AS VARCHAR(4)) + '-' + CAST(@iMONTH AS VARCHAR(2))  + '-' + CAST(@iDAY AS VARCHAR(4)) + ' 23:59:59'
	
	SELECT @iTaxInc = SUM(MONEY_CHANGE) FROM MuCastle_MONEY_STATISTICS  WITH (READUNCOMMITTED) 
	WHERE MAP_SVR_GROUP = 0 and LOG_DATE BETWEEN @dtLogDateStart AND @dtLogDateEnd and MONEY_CHANGE >= 0
	
	SELECT @iTaxDec = SUM(MONEY_CHANGE) FROM MuCastle_MONEY_STATISTICS  WITH (READUNCOMMITTED) 
	WHERE MAP_SVR_GROUP = 0 and LOG_DATE BETWEEN @dtLogDateStart AND @dtLogDateEnd and MONEY_CHANGE < 0
	
	IF @iTaxInc IS NULL
		SET @iTaxInc = 0
	IF @iTaxDec IS NULL
		SET @iTaxDec = 0

	SELECT @dtLogDateStart As TaxDate, @iTaxInc As TaxInc, @iTaxDec As TaxDec

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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 특정 날짜의 세율 통계정보를 얻어온다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2005.02.22
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_GetCastleMoneyStsRange
	@iMapSvrGroup		SMALLINT,		-- 맵서버 그룹
	@iTaxDateStart		DATETIME,
	@iTaxDateEnd		DATETIME
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	CREATE TABLE #T_REG_TAXSTT  (
		[TaxDate] [datetime] NOT NULL ,
		[TaxInc] [money] NOT NULL ,
		[TaxDec] [money] NOT NULL 
	) ON [PRIMARY]
	
	IF (@iTaxDateStart <= @iTaxDateEnd)
	BEGIN
		DECLARE	@iTaxDate		DATETIME
		SET		@iTaxDate		= @iTaxDateStart

		WHILE(@iTaxDate <= @iTaxDateEnd)
		BEGIN
			DECLARE	@dtLogDateStart	DATETIME
			DECLARE	@dtLogDateEnd	DATETIME

			DECLARE	@iTaxInc		MONEY
			DECLARE	@iTaxDec		MONEY
		
			DECLARE	@iYEAR		INT
			DECLARE	@iMONTH		INT
			DECLARE	@iDAY			INT
		
			SELECT	@iYEAR		= DATEPART(YY, @iTaxDate)
			SELECT	@iMONTH		= DATEPART(MM, @iTaxDate)
			SELECT	@iDAY			= DATEPART(DD, @iTaxDate)
			
			SET		@dtLogDateStart	= CAST(@iYEAR AS VARCHAR(4)) + '-' + CAST(@iMONTH AS VARCHAR(2))  + '-' + CAST(@iDAY AS VARCHAR(4)) + ' 00:00:00'
			SET		@dtLogDateEnd	= CAST(@iYEAR AS VARCHAR(4)) + '-' + CAST(@iMONTH AS VARCHAR(2))  + '-' + CAST(@iDAY AS VARCHAR(4)) + ' 23:59:59'
					
			SELECT @iTaxInc = SUM(MONEY_CHANGE) FROM MuCastle_MONEY_STATISTICS  WITH (READUNCOMMITTED) 
			WHERE MAP_SVR_GROUP = 0 and LOG_DATE BETWEEN @dtLogDateStart AND @dtLogDateEnd and MONEY_CHANGE >= 0
			
			SELECT @iTaxDec = SUM(MONEY_CHANGE) FROM MuCastle_MONEY_STATISTICS  WITH (READUNCOMMITTED) 
			WHERE MAP_SVR_GROUP = 0 and LOG_DATE BETWEEN @dtLogDateStart AND @dtLogDateEnd and MONEY_CHANGE < 0

			IF @iTaxInc IS NULL
				SET @iTaxInc = 0
			IF @iTaxDec IS NULL
				SET @iTaxDec = 0
						
			INSERT INTO #T_REG_TAXSTT VALUES (@dtLogDateStart, @iTaxInc, @iTaxDec)

			SET @iTaxDate				= DATEADD(DD, 1, @iTaxDate)
		END
	END
	
	SELECT * FROM #T_REG_TAXSTT

	DROP TABLE #T_REG_TAXSTT

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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 모든 수성측 NPC 정보를 얻어온다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_GetCastleNpcInfo
	@iMapSvrGroup		SMALLINT	-- 맵서버 그룹
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	SELECT * FROM MuCastle_NPC WITH (READUNCOMMITTED)
	WHERE MAP_SVR_GROUP = @iMapSvrGroup

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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 세율정보를 얻어온다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_GetCastleTaxInfo
	@iMapSvrGroup		SMALLINT	-- 맵서버 그룹
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	SELECT MONEY, TAX_RATE_CHAOS, TAX_RATE_STORE, TAX_HUNT_ZONE FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
	WHERE MAP_SVR_GROUP = @iMapSvrGroup

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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 전체정보를 얻어온다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_GetCastleTotalInfo
	@iMapSvrGroup		SMALLINT,			-- 맵서버 그룹
	@iCastleEventCycle	INT				-- 공성전 주기
As
Begin
	DECLARE	@iCastleSiegeTerm			INT
	SET		@iCastleSiegeTerm			= @iCastleEventCycle		-- 공성전 주기 (평균 14일)
	DECLARE	@iFirstCreate				INT
	SET		@iFirstCreate				= 0
	
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF NOT EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		DECLARE	@dtStartDate			datetime
		DECLARE	@dtEndDate			datetime
		DECLARE	@dtStartDateString		varchar(32)
		DECLARE	@dtEndDateString		varchar(32)

		SET		@dtStartDate			= GetDate()
		SET		@dtEndDate			= DATEADD(dd, @iCastleSiegeTerm, GetDate())
		SET		@dtStartDateString		= CAST(DATEPART(YY, @dtStartDate) AS char(4)) + '-' + CAST(DATEPART(MM, @dtStartDate) AS char(2)) + '-' + CAST(DATEPART(DD, @dtStartDate) AS char(2)) + ' 00:00:00'
		SET		@dtEndDateString		= CAST(DATEPART(YY, @dtEndDate) AS char(4)) + '-' + CAST(DATEPART(MM, @dtEndDate) AS char(2)) + '-' + CAST(DATEPART(DD, @dtEndDate) AS char(2)) + ' 00:00:00'


		INSERT INTO MuCastle_DATA  VALUES (
			@iMapSvrGroup,			-- MAP_SVR_GROUP
			@dtStartDateString,			-- SIEGE_START_DATE
			@dtEndDateString,			-- SIEGE_END_DATE
			0,					-- SIEGE_GUILDLIST_SETTED
			0,					-- SIEGE_ENDED
			0,					-- CASTLE_OCCUPY
			'',					-- OWNER_GUILD
			0,					-- MONEY
			0,					-- TAX_RATE_CHAOS
			0,					-- TAX_RATE_STORE
			0					-- TAX_HUNT_ZONE
		)

		SET @iFirstCreate				= 1
	END

	SELECT	 MAP_SVR_GROUP, 
			DATEPART(YY,SIEGE_START_DATE)	As SYEAR, 
			DATEPART(MM,SIEGE_START_DATE)	As SMONTH, 
			DATEPART(DD,SIEGE_START_DATE)	As SDAY, 
			DATEPART(YY,SIEGE_END_DATE)	As EYEAR, 
			DATEPART(MM,SIEGE_END_DATE)	As EMONTH, 
			DATEPART(DD,SIEGE_END_DATE)	As EDAY, 
			SIEGE_GUILDLIST_SETTED, 
			SIEGE_ENDED, 
			CASTLE_OCCUPY, 
			OWNER_GUILD, 
			MONEY, 
			TAX_RATE_CHAOS,
			TAX_RATE_STORE,
			TAX_HUNT_ZONE,
			@iFirstCreate As FIRST_CREATE
	FROM MuCastle_DATA  WITH (READUNCOMMITTED)
	WHERE MAP_SVR_GROUP = @iMapSvrGroup

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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 길드의 연합길드의 리스트를 얻어온다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.12.03
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_GetCsGuildUnionInfo
	@szGuildName		VARCHAR(8)	-- 연합정보를 알고자 하는 길드명
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	DECLARE	@iG_Union	INT
	SET		@iG_Union	= -1	-- 존재할 수 없는 연합값으로 기본세팅
	
	IF EXISTS ( SELECT G_Name FROM Guild  WITH (READUNCOMMITTED) 
				WHERE G_Name = @szGuildName)
	BEGIN				-- 해당 길드의 정보가 존재한다.
		SELECT @iG_Union = G_Union
		FROM Guild WITH (READUNCOMMITTED) 
		WHERE G_Name = @szGuildName
	END

	-- 특정 길드의 연합길드 이름들을 얻어온다.
	IF (@iG_Union = 0)
	BEGIN
		SELECT @szGuildName As GUILD_NAME
	END
	ELSE
	BEGIN
		-- 연합이 존재하므로 연합의 길드이름을 얻어온다.
		SELECT G_Name As GUILD_NAME
		FROM Guild WITH (READUNCOMMITTED) 
		WHERE G_Union = @iG_Union
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 특정 공성측 길드의 마크등록 정보를 얻어온다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_GetGuildMarkRegInfo
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@szGuildName		VARCHAR(8)	-- 공성등록을 한 길드이름
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	SELECT * FROM MuCastle_REG_SIEGE WITH (READUNCOMMITTED)
	WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName
	ORDER BY SEQ_NUM ASC

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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 수성측 길드의 길드마스터 이름을 얻어온다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.22
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_GetOwnerGuildMaster
	@iMapSvrGroup		SMALLINT	-- 맵서버 그룹
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON	

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN				-- 맵서버군의 정보가 존재한다.
		DECLARE	@iIsCastleOccupied	TINYINT
		DECLARE	@szGuildName		VARCHAR(8)

		SELECT @iIsCastleOccupied = CASTLE_OCCUPY, @szGuildName = OWNER_GUILD FROM MuCastle_DATA WHERE MAP_SVR_GROUP = @iMapSvrGroup

		IF (@iIsCastleOccupied = 1)
		BEGIN
			IF (@szGuildName <> '')			
			BEGIN		-- 이제 길드가 실재로 존재하는지 확인한다.
				IF EXISTS ( SELECT G_Master FROM Guild  WITH (READUNCOMMITTED)
							WHERE G_Name = @szGuildName)
				BEGIN
					SELECT 1 As QueryResult, @szGuildName As OwnerGuild, G_Master As OwnerGuildMaster FROM Guild  WITH (READUNCOMMITTED) WHERE G_Name = @szGuildName
				END
				ELSE
				BEGIN	-- 존재해야 할 길드가 존재하지 않는다. (길드가 삭제되는 등)
					SELECT 4 As QueryResult, '' As OwnerGuild, '' As OwnerGuildMaster
				END
			END
			ELSE
			BEGIN		-- 성데이터가 잘못되었다.
				SELECT 3 As QueryResult, '' As OwnerGuild, '' As OwnerGuildMaster
			END
		END
		ELSE
		BEGIN			-- 성의 주인이 없다.
			SELECT 2 As QueryResult, '' As OwnerGuild, '' As OwnerGuildMaster
		END
	END
	ELSE
	BEGIN				-- 맵서버군의 정보가 존재하지 않는다.
		SELECT 0 As QueryResult, '' As OwnerGuild, '' As OwnerGuildMaster
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 최종 공성관련 길드들의 정보를 가져온다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.12.04
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_GetSiegeGuildInfo
	@iMapSvrGroup		SMALLINT	-- 맵서버 그룹
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	SELECT * 
	FROM MuCastle_SIEGE_GUILDLIST  WITH (READUNCOMMITTED) 
	WHERE MAP_SVR_GROUP = @iMapSvrGroup

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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 소유주 정보를 변경한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ModifyCastleOwnerInfo
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@iCastleOccupied	INT,		-- 성의 사용자 소유여부 (0:NPC 소유)
	@szOwnGuildName	VARCHAR(8)	-- 성을 소유한 길드의 이름
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		UPDATE MuCastle_DATA 
		SET CASTLE_OCCUPY = @iCastleOccupied, OWNER_GUILD = @szOwnGuildName
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult	-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult	-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 공성스케쥴 (시작날짜, 종료날짜) 을 변경한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ModifyCastleSchedule
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@dtStartDate		DATETIME,	-- 시작날짜
	@dtEndDate		DATETIME	-- 종료날짜
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		UPDATE MuCastle_DATA 
		SET SIEGE_START_DATE = @dtStartDate, SIEGE_END_DATE = @dtEndDate
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult	-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult	-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 특정 길드의 공성등록의 포기 상태를 변경한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ModifyGuildGiveUp
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@szGuildName		VARCHAR(8),	-- 공성등록을 한 길드이름
	@iIsGiveUp		INT		-- 공성 포기 여부
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName)
	BEGIN
		DECLARE	@iMarkCount	INT
		SELECT @iMarkCount = REG_MARKS FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName

		UPDATE MuCastle_REG_SIEGE 
		SET IS_GIVEUP = @iIsGiveUp, REG_MARKS = 0
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName

		SELECT 1 As QueryResult, @iMarkCount As DEL_MARKS	-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
	END
	ELSE
	BEGIN
		SELECT 2 As QueryResult, 0 As DEL_MARKS			-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 특정 길드의 길드마크 등록개수를 조정한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ModifyGuildMarkRegCount
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@szGuildName		VARCHAR(8),	-- 공성등록을 한 길드이름
	@iMarkCount		INT		-- 길드마크 개수
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName)
	BEGIN
		UPDATE MuCastle_REG_SIEGE 
		SET REG_MARKS = @iMarkCount
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName

		SELECT 1 As QueryResult	-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult	--맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 특정 길드의 길드마크 등록개수를 초기화 한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ModifyGuildMarkReset
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@szGuildName		VARCHAR(8)	-- 공성등록을 한 길드이름
As
Begin
	BEGIN TRANSACTION

	DECLARE		@iMarkCount	INT	-- 길드마크 개수
	DECLARE		@bIsGiveUp	INT	-- 공성 포기여부

	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName)
	BEGIN
		SELECT @iMarkCount = REG_MARKS, @bIsGiveUp = IS_GIVEUP
		FROM MuCastle_REG_SIEGE
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName

		IF (@iMarkCount > 0)
		BEGIN
			IF (@bIsGiveUp = 0)
			BEGIN
				UPDATE MuCastle_REG_SIEGE 
				SET REG_MARKS = 0
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName
		
				SELECT 1 As QueryResult, @iMarkCount As DEL_MARKS	--마크개수를 초기화 하고 등록된 마크를 초기화 한다.
			END
			ELSE
			BEGIN
				SELECT 2 As QueryResult, 0 As DEL_MARKS			--이미 마크가 지불되었다. (포기 -> 지불 됨)
			END
		END
		ELSE
		BEGIN
			SELECT 1 As QueryResult, 0 As DEL_MARKS				--마크가 없는것일 뿐이므로 현재 상태를 성공으로 인식
		END
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult, 0 As DEL_MARKS					--맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 돈 액수를 수정한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ModifyMoney
	@iMapSvrGroup		SMALLINT,			-- 맵서버 그룹
	@iMoneyChange	MONEY				-- 상대수치인 변화될 돈
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		DECLARE	@iTotMoney	MONEY
		SELECT @iTotMoney = MONEY FROM MuCastle_DATA
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		IF (@iTotMoney + @iMoneyChange < 0)
		BEGIN
			SELECT 2 As QueryResult, MONEY	--  현재 있는 돈의 액수가 너무 작으므로 변경하지 않는다.
			FROM MuCastle_DATA
			WHERE MAP_SVR_GROUP = @iMapSvrGroup		
		END
		ELSE
		BEGIN
			UPDATE MuCastle_DATA 
			SET MONEY = @iTotMoney + @iMoneyChange
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
	
			SELECT 1 As QueryResult, MONEY	-- 맵서버군의 정보가 존재하며 돈계산 시 에러가 없으므로 업데이트에 성공했다.
			FROM MuCastle_DATA
			WHERE MAP_SVR_GROUP = @iMapSvrGroup		
		END

		-- 만약 성의 자금통계를 내지 않는다면 이 부분은 주석 처리
		INSERT MuCastle_MONEY_STATISTICS VALUES (@iMapSvrGroup, GetDate(), @iMoneyChange)
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult, 0 As MONEY		-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 공성 종료 여부를 변경한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ModifySiegeEnd
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@iSiegeEnded		INT		-- 공성 종료 여부
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		UPDATE MuCastle_DATA 
		SET SIEGE_ENDED = @iSiegeEnded
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult	-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult	-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 세율을 조정한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ModifyTaxRate
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@iTaxKind		INT,		-- 세율의 종류 (1:카오스조합 / 2:상점)
	@iTaxRate		INT		-- 변경될 세율
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF (@iTaxKind = 1)			-- 카오스 조합 세율조정
	BEGIN
		IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
					WHERE MAP_SVR_GROUP = @iMapSvrGroup)
		BEGIN
			UPDATE MuCastle_DATA 
			SET TAX_RATE_CHAOS = @iTaxRate
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
	
			SELECT @iTaxKind As TaxKind, 1 As QueryResult, TAX_RATE_CHAOS As TaxRate	-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
			FROM MuCastle_DATA
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
		END
		ELSE
		BEGIN
			SELECT @iTaxKind As TaxKind, 0 As QueryResult, 0 As TaxRate				-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
		END
	END
	ELSE IF (@iTaxKind = 2)			-- 상점 세율 조정
	BEGIN
		IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
					WHERE MAP_SVR_GROUP = @iMapSvrGroup)
		BEGIN
			UPDATE MuCastle_DATA 
			SET TAX_RATE_STORE = @iTaxRate
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
	
			SELECT @iTaxKind As TaxKind, 1 As QueryResult, TAX_RATE_STORE As TaxRate	-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
			FROM MuCastle_DATA
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
		END
		ELSE
		BEGIN
			SELECT @iTaxKind As TaxKind, 0 As QueryResult, 0 As TaxRate				-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
		END
	END
	ELSE IF (@iTaxKind = 3)			-- 사냥터 입장료 세율 조정
	BEGIN
		IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
					WHERE MAP_SVR_GROUP = @iMapSvrGroup)
		BEGIN
			UPDATE MuCastle_DATA 
			SET TAX_HUNT_ZONE = @iTaxRate
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
	
			SELECT @iTaxKind As TaxKind, 1 As QueryResult, TAX_HUNT_ZONE As TaxRate	-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
			FROM MuCastle_DATA
			WHERE MAP_SVR_GROUP = @iMapSvrGroup
		END
		ELSE
		BEGIN
			SELECT @iTaxKind As TaxKind, 0 As QueryResult, 0 As TaxRate				-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
		END
	END
	ELSE
	BEGIN
		SELECT @iTaxKind As TaxKind, 0 As QueryResult, 0 As TaxRate					-- 세율종류가 존재하지 않는다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 수성측 NPC를 구입한다. (NPC 정보를 삽입한다.)
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ReqNpcBuy
	@iMapSvrGroup		SMALLINT,		-- 맵서버 그룹
	@iNpcNumber		INT,			-- NPC번호
	@iNpcIndex		INT,			-- NPC인덱스
	@iNpcDfLevel		INT,			-- 방어력 레벨
	@iNpcRgLevel		INT,			-- 생명회복 레벨
	@iNpcMaxHp		INT,			-- 최대 HP
	@iNpcHp		INT,			-- HP
	@btNpcX		TINYINT,		-- 좌표 - X
	@btNpcY		TINYINT,		-- 좌표 - Y
	@btNpcDIR		TINYINT		-- 방향
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_NPC  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex)
	BEGIN
		SELECT 4 As QueryResult		-- 해당 NPC가 이미 존재하고 있다.
	END
	ELSE
	BEGIN
		INSERT INTO MuCastle_NPC VALUES (
			@iMapSvrGroup	,		-- MAP_SVR_GROUP
			@iNpcNumber,			-- NPC_NUMBER
			@iNpcIndex,			-- NPC_INDEX
			@iNpcDfLevel,			-- NPC_DF_LEVEL
			@iNpcRgLevel,			-- NPC_RG_LEVEL
			@iNpcMaxHp,			-- NPC_MAXHP
			@iNpcHp,			-- NPC_HP
			@btNpcX,			-- NPC_X
			@btNpcY,			-- NPC_Y
			@btNpcDIR,			-- NPC_DIR
			GetDate()			-- NPC_CREATEDATE
		)
		
		SELECT 1 As QueryResult		-- NPC추가 성공
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 수성측 NPC를 제거한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.26
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ReqNpcRemove
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@iNpcNumber		INT,		-- NPC번호
	@iNpcIndex		INT		-- NPC인덱스
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_NPC  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex)
	BEGIN
		DELETE MuCastle_NPC
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex

		SELECT 1 As QueryResult	-- NPC가 존재하여 업데이트에 성공했다.
	END
	ELSE
	BEGIN
		SELECT 2 As QueryResult	-- NPC가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 수성측 NPC를 수리한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ReqNpcRepair
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@iNpcNumber		INT,		-- NPC번호
	@iNpcIndex		INT		-- NPC인덱스
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_NPC  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex)
	BEGIN
		UPDATE MuCastle_NPC 
		SET  NPC_HP = NPC_MAXHP
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex

		SELECT 1 As QueryResult, NPC_HP, NPC_MAXHP		-- NPC가 존재하여 업데이트에 성공했다.
		FROM MuCastle_NPC  WITH (READUNCOMMITTED) 
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex
	END
	ELSE
	BEGIN
		SELECT 2 As QueryResult, 0 As NPC_HP, 0 As NPC_MAXHP	-- NPC가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 수성측 NPC 정보를 갱신한다 -> NPC 정보가 없다면 추가한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.12.15
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ReqNpcUpdate
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@iNpcNumber		INT,		-- NPC번호
	@iNpcIndex		INT,		-- NPC인덱스
	@iNpcDfLevel		INT,		-- 방어력 레벨
	@iNpcRgLevel		INT,		-- 생명회복 레벨
	@iNpcMaxHp		INT,		-- 최대 HP
	@iNpcHp		INT,		-- HP
	@btNpcX		TINYINT,	-- 좌표 - X
	@btNpcY		TINYINT,	-- 좌표 - Y
	@btNpcDIR		TINYINT	-- 방향
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_NPC  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex)
	BEGIN
		-- 해당 NPC가 존재한다 -> 정보 갱신
		
		UPDATE MuCastle_NPC
		SET	NPC_NUMBER		= @iNpcNumber, 
			NPC_INDEX		= @iNpcIndex, 
			NPC_DF_LEVEL	= @iNpcDfLevel, 
			NPC_RG_LEVEL	= @iNpcRgLevel, 
			NPC_MAXHP		= @iNpcMaxHp, 
			NPC_HP		= @iNpcHp,
			NPC_X			= @btNpcX,
			NPC_Y			= @btNpcY, 
			NPC_DIR		= @btNpcDIR
		WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex
	END
	ELSE
	BEGIN
		-- 해당 NPC가 존재하지 않는다 -> 정보 추가

		INSERT INTO MuCastle_NPC VALUES (
			@iMapSvrGroup	,	-- MAP_SVR_GROUP
			@iNpcNumber,		-- NPC_NUMBER
			@iNpcIndex,		-- NPC_INDEX
			@iNpcDfLevel,		-- NPC_DF_LEVEL
			@iNpcRgLevel,		-- NPC_RG_LEVEL
			@iNpcMaxHp,		-- NPC_MAXHP
			@iNpcHp,		-- NPC_HP
			@btNpcX,		-- NPC_X
			@btNpcY,		-- NPC_Y
			@btNpcDIR,		-- NPC_DIR
			GetDate()		-- NPC_CREATEDATE
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

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO







--//************************************************************************
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 수성측 NPC를 업그레이드 한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ReqNpcUpgrade
	@iMapSvrGroup		SMALLINT,		-- 맵서버 그룹
	@iNpcNumber		INT,			-- NPC번호
	@iNpcIndex		INT,			-- NPC인덱스
	@iNpcUpType		INT,			-- NPC업그레이드 타입 (1:방어력/2:회복력/3:최대HP)
	@iNpcUpValue		INT			-- NPC업그레이드 수치
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_NPC  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex)
	BEGIN
		IF (@iNpcUpType = 1)			-- 방어력
		BEGIN
			UPDATE MuCastle_NPC 
			SET NPC_DF_LEVEL = @iNpcUpValue
			WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex
	
			SELECT 1 As QueryResult	-- NPC가 존재하여 업데이트에 성공했다.
		END
		ELSE IF (@iNpcUpType = 2) 		-- 회복력
		BEGIN
			UPDATE MuCastle_NPC 
			SET NPC_RG_LEVEL = @iNpcUpValue
			WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex
	
			SELECT 1 As QueryResult	-- NPC가 존재하여 업데이트에 성공했다.
		END
		ELSE IF (@iNpcUpType = 3) 		-- 최대HP
		BEGIN
			UPDATE MuCastle_NPC 
			SET NPC_MAXHP = @iNpcUpValue, NPC_HP = @iNpcUpValue
			WHERE MAP_SVR_GROUP = @iMapSvrGroup and NPC_NUMBER = @iNpcNumber and NPC_INDEX = @iNpcIndex
	
			SELECT 1 As QueryResult	-- NPC가 존재하여 업데이트에 성공했다.
		END
		ELSE
		BEGIN
			SELECT 2 As QueryResult	-- 업그레이드 타입이 잘못되었다.
		END
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult		-- NPC가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 공성신청 길드의 공성전 등록을 한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.22
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ReqRegAttackGuild
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@szGuildName		VARCHAR(8)	-- 공성등록을 한 길드이름
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	DECLARE	@iMaxRegGuildCount	INT					-- 공성에 최대 등록할 수 있는 길드 수
	DECLARE	@iCurRegGuildCount	INT					-- 현재 공성에 등록한 길드 수
	SET 		@iMaxRegGuildCount	= 100

	SELECT @iCurRegGuildCount = COUNT(*) FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED)  WHERE MAP_SVR_GROUP = @iMapSvrGroup
	IF (@iCurRegGuildCount >= @iMaxRegGuildCount)
	BEGIN
			SELECT 6 As QueryResult					-- 등록한 길드가 이미 N개를 넘었음
	END
	ELSE
	BEGIN
		IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
					WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName)
		BEGIN
			SELECT 2 As QueryResult					-- 이미 등록되어 있음
		END
		ELSE
		BEGIN
			DECLARE @szOwnGuildName		VARCHAR(8)
			SELECT @szOwnGuildName = OWNER_GUILD FROM MuCastle_DATA WHERE MAP_SVR_GROUP = @iMapSvrGroup
	
			-- 혹시 수성측 길드가 아닌지 점검
			IF (@szOwnGuildName = @szGuildName)
			BEGIN
				SELECT 3 As QueryResult				-- 수성측 길드임
			END
			ELSE
			BEGIN
				IF NOT EXISTS ( SELECT G_Name FROM Guild  WITH (READUNCOMMITTED) WHERE G_Name = @szGuildName)
				BEGIN
					SELECT 4 As QueryResult			-- 길드정보가 존재하지 않음
				END
				ELSE
				BEGIN
					DECLARE @szGuildMaster			VARCHAR(10)
					DECLARE @iGuildMasterLevel			INT
					DECLARE @iGuildMemberCount			INT
					
					SELECT @szGuildMaster = G_Master FROM Guild WHERE G_Name = @szGuildName
					SELECT @iGuildMasterLevel = cLevel FROM Character WHERE Name = @szGuildMaster
					SELECT @iGuildMemberCount = COUNT(*) FROM GuildMember WHERE G_Name = @szGuildName
					
					IF (@iGuildMasterLevel < 200)
					BEGIN
						SELECT 5 As QueryResult		-- 길드마스터의 레벨이 낮음
					END
					ELSE
					BEGIN
						IF (@iGuildMemberCount < 20)
						BEGIN
							SELECT 8 As QueryResult	-- 길드원 수가 부족
						END
						ELSE
						BEGIN
							DECLARE @iMAX_SEQNUM	INT	-- 현재 최대 등록번호
							DECLARE @iNXT_SEQNUM	INT	-- 다음 등록번호
							SELECT @iMAX_SEQNUM = MAX(SEQ_NUM) FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED)  WHERE MAP_SVR_GROUP = @iMapSvrGroup
							
							IF (@iMAX_SEQNUM IS NULL)
								SET @iNXT_SEQNUM	= 1
							ELSE
								SET @iNXT_SEQNUM	= @iMAX_SEQNUM + 1

							INSERT INTO MuCastle_REG_SIEGE 
							VALUES (@iMapSvrGroup, @szGuildName, 0, 0, @iNXT_SEQNUM)
					
							SELECT 1 As QueryResult	-- 등록 성공
						END
					END
				END
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 공성신청 길드의 마크를 등록한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ReqRegGuildMark
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@szGuildName		VARCHAR(8)	-- 공성등록을 한 길드이름
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName)
	BEGIN
		DECLARE	@bIS_GIVEUP	INT
		SELECT @bIS_GIVEUP = IS_GIVEUP FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName

		-- 공성포기 길드는 등록이 되면 않된다.
		IF (@bIS_GIVEUP = 0)
		BEGIN
			UPDATE MuCastle_REG_SIEGE 
			SET REG_MARKS = REG_MARKS + 1
			WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName
	
			SELECT 1 As QueryResult, REG_MARKS
			FROM MuCastle_REG_SIEGE  WITH (READUNCOMMITTED)
			WHERE MAP_SVR_GROUP = @iMapSvrGroup and REG_SIEGE_GUILD = @szGuildName
		END
		ELSE
		BEGIN
			SELECT 0 As QueryResult, 0 As REG_MARKS
		END
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult, 0 As REG_MARKS
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 공성주기를 초기화한다 (새로 시작할 준비를 함)
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ResetCastleSiege
	@iMapSvrGroup		SMALLINT	-- 맵서버 그룹
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		-- 1 . 공성 시간을 변경하고 필요한 정보들을 초기화 한다.
		UPDATE MuCastle_DATA 
		SET 	SIEGE_GUILDLIST_SETTED = 0,
			SIEGE_ENDED = 0
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		-- 2 . 공성 등록길드 정보를 초기화 한다.
		-- 시작하자 마자 초기화 시킬 때 호출이 되므로 이 구문은 빠져야 한다 -> 공성주기 종료 때 따로 지움
--		DELETE MuCastle_REG_SIEGE
--		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		--DBCC CHECKIDENT ('MuCastle_REG_SIEGE', RESEED, 0)

		-- 3 . 공성관련 길드리스트 정보를 초기화 한다.
		DELETE MuCastle_SIEGE_GUILDLIST
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult	-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult	-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 돈과 세율을 초기화 한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.12.21
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ResetCastleTaxInfo
	@iMapSvrGroup		SMALLINT			-- 맵서버 그룹
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		UPDATE MuCastle_DATA 
		SET MONEY = 0, TAX_RATE_CHAOS = 0, TAX_RATE_STORE = 0, TAX_HUNT_ZONE = 0
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult			-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult			-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 공성 참여신청 길드 리스트를 초기화 한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ResetRegSiegeInfo
	@iMapSvrGroup		SMALLINT	-- 맵서버 그룹
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		-- 공성관련 길드리스트 정보를 초기화 한다.
		DELETE MuCastle_REG_SIEGE
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult	-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult	-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 공성 참여길드 리스트를 초기화 한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.11.09
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_ResetSiegeGuildInfo
	@iMapSvrGroup		SMALLINT	-- 맵서버 그룹
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN
		-- 공성관련 길드리스트 정보를 초기화 한다.
		DELETE MuCastle_SIEGE_GUILDLIST
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult	-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult	-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 최종 공성관련 길드들의 정보를 세팅한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.12.04
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_SetSiegeGuildInfo
	@iMapSvrGroup		SMALLINT,	-- 맵서버 그룹
	@szGuildName		VARCHAR(8),	-- 공성등록을 한 길드이름
	@iGuildID		INT,		-- 공/수의 어느 편인지 ?
	@iGuildInvolved		INT		-- 공성에 직접 개입된 당사자인지 ?
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	INSERT INTO MuCastle_SIEGE_GUILDLIST
	VALUES (@iMapSvrGroup, @szGuildName, @iGuildID, @iGuildInvolved)
	
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
--// << 뮤 공성전 - 저장 프로시저 >>
--// 
--// 내용	: 특정 성 (맵서버군) 의 최종 공성관련 길드들의 정보를 성공적으로 세팅했다는 체크를 한다.
--// 부서	: 게임개발 1팀 
--// 만든날	: 2004.12.04
--// 만들이	: 황준일
--// 
--//************************************************************************

CREATE PROCEDURE	WZ_CS_SetSiegeGuildOK
	@iMapSvrGroup		SMALLINT	-- 맵서버 그룹
As
Begin
	BEGIN TRANSACTION
	
	SET NOCOUNT ON

	IF EXISTS ( SELECT MAP_SVR_GROUP FROM MuCastle_DATA  WITH (READUNCOMMITTED) 
				WHERE MAP_SVR_GROUP = @iMapSvrGroup)
	BEGIN					-- 맵서버군의 정보가 존재한다.
		UPDATE MuCastle_DATA
		SET SIEGE_GUILDLIST_SETTED = 1
		WHERE MAP_SVR_GROUP = @iMapSvrGroup

		SELECT 1 As QueryResult	-- 맵서버군의 정보가 존재하여 업데이트에 성공했다.
	END
	ELSE
	BEGIN
		SELECT 0 As QueryResult	-- 맵서버군의 정보가 존재하지 않으므로 업데이트에 실패했다.
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



CREATE Procedure dbo.WZ_CharMoveReset 
	@AccountID			varchar(10),		-- 계정명 
	@Name				varchar(10)			-- 캐릭터명
AS
Begin

	SET NOCOUNT ON
	SET	XACT_ABORT ON					-- 에러발생시 모든 트랜잭션 취소  
	
	DECLARE	@Result				tinyint	
	DECLARE	@ResultLowCount		int
	DECLARE	@Class				tinyint
	DECLARE	@Ctl1_Code			tinyint
	DECLARE	@SQLEXEC			varchar(1000)
	DECLARE	@ErrorCheck			INT
	DECLARE 	@g1 varchar(10), @g2 varchar(10), @g3 varchar(10), @g4 varchar(10), @g5 varchar(10)
	DECLARE 	@MoveCnt tinyint		
	DECLARE 	@ChangeMoveCnt	tinyint		
	DECLARE	@SqlStmt			VARCHAR(700)		
	DECLARE	@SqlStmt2			VARCHAR(700)		

	SET LOCK_TIMEOUT	1000			-- 트랜잭션 장기 잠금처리를 막기 위해서 	
	SET @Result = 0x00	
	SET @ErrorCheck = 0x00

	--====================================================================================
	-- 캐릭터 존재여부 확인 
	--====================================================================================
	SELECT @Class = Class, @Ctl1_Code = CtlCode  FROM  Character  WHERE Name = @Name
	
	-- 처리결과 체크 	
	SELECT @ResultLowCount = @@rowcount, @ErrorCheck = @@error

	-- 캐릭터가 존재하지 않는다.  						
	IF @ResultLowCount = 0 
	begin
		SET @Result	= 0x02			
		GOTO ON_ERROR						
	end

	-- 에러발생(트랜잭션 잠금이나 또는 기타 문제 발생시 처리) 
	IF @ErrorCheck  <> 0 GOTO ON_ERROR

	-------------------------------------------------------------------------------------
	-- 캐릭터의 상태가 이동할 수 없는 상태(0x80)
	-- 이동상태의 캐릭터 또는 기타 블럭상태의 캐릭터의 경우 이동이 불가능 							
	-------------------------------------------------------------------------------------
	if  ( (@Ctl1_Code & 127 ) > 0 )
	BEGIN
		SET @Result	= 0x03			
		GOTO ON_ERROR						
	END 

	--====================================================================================
	-- 원본 캐릭터 슬롯정보 체크 
	--====================================================================================
	SELECT  @g1=GameID1, @g2=GameID2, @g3=GameID3, @g4=GameID4, @g5=GameID5, @MoveCnt = MoveCnt 
	FROM dbo.AccountCharacter 	Where Id = @AccountID 		
	
	-- 처리결과 체크 	
	SELECT @ResultLowCount = @@rowcount, @ErrorCheck = @@error

	--// 계정이 존재하지 않는다. 
	if @ResultLowCount = 0 
	begin
		SET @Result	= 0x02			
		GOTO ON_ERROR						
	end

	-- 에러발생(트랜잭션 잠금이나 기나 문제 발생시 처리) 
	IF @ErrorCheck  <> 0 GOTO ON_ERROR


	-------------------------------------------------------------------------------------
	-- 이동횟수 체크 
	-------------------------------------------------------------------------------------
	SET @MoveCnt =  0

	-------------------------------------------------------------------------------------
	-- 원본 캐릭터 클리어  & 이동횟수 UPDATE 
	-------------------------------------------------------------------------------------
	SET @SqlStmt = 'UPDATE AccountCharacter  '

	IF ( @g1 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  '
	ELSE IF ( @g2 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  '
	ELSE IF ( @g3 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  '
	ELSE IF ( @g4 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  '
	ELSE IF ( @g5 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  '
	ELSE 				
		SET @Result	= 0x05--// 해당 계정에 대한 캐릭터가 존재 하지 않는다. 

	IF ( @Result <> 0 )
		GOTO ON_ERROR

	SET @SqlStmt = @SqlStmt + ' MoveCnt =  ' + CONVERT(VARCHAR, @MoveCnt )					
	SET @SqlStmt = @SqlStmt + ' WHERE Id =  ''' + @AccountID	 + ''''				

	--====================================================================================
	-- 캐릭터의 변경 
	--====================================================================================
	SET @SqlStmt2 = 'UPDATE Character '
	SET @SqlStmt2 = @SqlStmt2 + 'SET  '
	SET @SqlStmt2 = @SqlStmt2 + 'CtlCode = ' + CONVERT(VARCHAR, @Ctl1_Code & 127	)	-- 캐릭터 이동상태를 원본으로 변경[ 이동캐릭 코드는 0x80 ]
	SET @SqlStmt2 = @SqlStmt2 + ' WHERE Name = ''' +  @Name + ''''


	--====================================================================================
	--트랜잭션 작업 처리  
	--====================================================================================
	BEGIN TRANSACTION 

	-- 계정캐릭터 정보 변경 처리 
	EXEC(@SqlStmt)
	SELECT @ResultLowCount = @@rowcount,  @ErrorCheck = @@error
	IF  @ResultLowCount = 0  GOTO ON_TRN_ERROR
	IF  @ErrorCheck  <> 0 GOTO ON_TRN_ERROR

	-- 캐릭터 정보 변경 처리 
	EXEC(@SqlStmt2)
	SELECT @ResultLowCount = @@rowcount,  @ErrorCheck = @@error
	IF  @ResultLowCount = 0  GOTO ON_TRN_ERROR
	IF  @ErrorCheck  <> 0 GOTO ON_TRN_ERROR

	--====================================================================================
	-- 트랜잭션 결과 처리 
	--====================================================================================
ON_TRN_ERROR:
	IF ( @Result  <> 0 ) OR (@ErrorCheck <> 0)
	BEGIN
		IF @Result = 0 
			SET @Result = 0x09 		--// DB Error

		ROLLBACK TRAN
	END
	ELSE
		COMMIT	TRAN

ON_ERROR:
	IF @ErrorCheck <> 0
	BEGIN
		SET @Result = 0x09 			--// DB Error 
	END 


	SELECT @Result	

	SET NOCOUNT OFF
	SET	XACT_ABORT OFF
END


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


/*
	1) 프로시져명 : WZ_CreateCharacter
	2) 작업일 : 2003. 09. 15.
	3) 작업자명 :  추숙 
	4) 전달인자 :
			계정정보, 캐릭터명, 클래스 타입, 성공여부 반환정보 
	5) 반환인자(Result) :
			1 : 동일 캐릭터명 존재 			
			2 : 빈슬롯이 존재 하지 않음
			3 부터  ~ : SQL Error Code
	6) 클래스 타입
			0 : 흑마법사
			16 : 흑기사
			32 : 요정 
			48 : 마검사
			64:다크로드	
	7) VERSION
		1 

	8) Last Update Date : 2004.06.15
	
2003.10.16  : 트랜잭션 위치 오류  (SaemSong)
	BEGIN TRAN 문이 들어가기 전에 동일캐릭명 존재시 ProcEnd 로 GOTO 한다 
   	이때, ProcEnd에선 롤백이나 커밋을 실행하므로 인해
	TranProcEnd를 추가하여 트랜젝션 처리를 하지 않는 곳으로 GOTO한다. 
*/

CREATE Procedure WZ_CreateCharacter 
	@AccountID		varchar(10),		--// 계정 정보 
	@Name			varchar(10),		--// 캐릭터 
	@Class			tinyint			--// Class Type
AS
Begin

	SET NOCOUNT ON
	SET	XACT_ABORT ON
	DECLARE		@Result		tinyint

	--//  결과값 초기화 
	SET @Result = 0x00	

	--====================================================================================
	--	 캐릭터 존재여부 확인 
	--====================================================================================
	If EXISTS ( SELECT  Name  FROM  Character WHERE Name = @Name )
	begin
		SET @Result	= 0x01				--// 동일 캐릭터명 존재 						
		GOTO ProcEnd						
	end 

	BEGIN TRAN
	--====================================================================================
	--	 계정 존재 여부 확인  및 빈 슬롯 정보 확인하여 저장 		
	--====================================================================================
	If NOT EXISTS ( SELECT  Id  FROM  AccountCharacter WHERE Id = @AccountID )
		begin
			INSERT INTO dbo.AccountCharacter(Id, GameID1, GameID2, GameID3, GameID4, GameID5, GameIDC) 
			VALUES(@AccountID, @Name, NULL, NULL, NULL, NULL, NULL)

			SET @Result  = @@Error
		end 
	else
		begin
			--// 캐릭터 빈 슬롯 설정 
			Declare @g1 varchar(10), @g2 varchar(10), @g3 varchar(10), @g4 varchar(10), @g5 varchar(10)						
			SELECT @g1=GameID1, @g2=GameID2, @g3=GameID3, @g4=GameID4, @g5=GameID5 FROM dbo.AccountCharacter Where Id = @AccountID 			

			if( ( @g1 Is NULL) OR (Len(@g1) = 0))
				begin
					UPDATE AccountCharacter SET  GameID1 = @Name
					WHERE Id = @AccountID
										
					SET @Result  = @@Error
				end 
			else	 if( @g2  Is NULL OR Len(@g2) = 0)
				begin
					UPDATE AccountCharacter SET  GameID2 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 
			else	 if( @g3  Is NULL OR Len(@g3) = 0)
				begin			
					UPDATE AccountCharacter SET  GameID3 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 
			else	 if( @g4 Is NULL OR Len(@g4) = 0)
				begin
					UPDATE AccountCharacter SET  GameID4 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 
			else	 if( @g5 Is NULL OR Len(@g5) = 0)
				begin
					UPDATE AccountCharacter SET  GameID5 = @Name
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 		
			else 
				--// 해당 빈 슬롯 정보가 존재 하지 않다. 	
				begin					
					SET @Result	= 0x03							
					GOTO TranProcEnd								
				end 			 
		end 

	
	

	--====================================================================================
	--	 캐릭터 정보 저장 
	--====================================================================================
	if( @Result <> 0 )
		begin
			GOTO TranProcEnd		
		end 
	else
		begin
			INSERT INTO dbo.Character(AccountID, Name, cLevel, LevelUpPoint, Class, Strength, Dexterity, Vitality, Energy, Inventory,MagicList, 
					Life, MaxLife, Mana, MaxMana, MapNumber, MapPosX, MapPosY,  MDate, LDate, Quest, DbVersion, Leadership )
			SELECT @AccountID As AccountID, @Name As Name, Level, LevelUpPoint, @Class As Class, 
				Strength, Dexterity, Vitality, Energy, Inventory,MagicList,  Life, MaxLife, Mana, MaxMana, MapNumber, MapPosX, MapPosY,
				getdate() As MDate, getdate() As LDate, Quest, DbVersion, Leadership
			FROM  DefaultClassType WHERE Class = @Class					

			SET @Result  = @@Error
		end 

TranProcEnd:	-- GOTO
	IF ( @Result  <> 0 )
		ROLLBACK TRAN
	ELSE
		COMMIT	TRAN

ProcEnd:
	SET NOCOUNT OFF
	SET	XACT_ABORT OFF

	--====================================================================================
	--  결과값 반환 처리 
	-- 0x00 : 캐릭터 존재, 0x01 : 성공완료, 0x02 : 캐릭터 생성 실패 , 0x03 : 빈슬롯 존재하지 않는다   
	--====================================================================================
	SELECT
	   CASE @Result
	      WHEN 0x00 THEN 0x01		--// 성공 반환 
	      WHEN 0x01 THEN 0x00		--// 캐릭터 존재 
	      WHEN 0x03 THEN 0x03		--// 빈슬롯이 존재하지 않는다. 
	      ELSE 0x02				--// 기타 에러코드는 생성 샐패 반환  
	   END AS Result 
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



--//***********************************************************************************************************************
--// Version Procedure 
/*
	1) 프로시져명 : WZ_CreateCharacter_Version
	2) 작업일 : 2003. 10. 15.
	3) 작업자명 :  추숙 
	4) 전달인자 :			
	5) 반환인자(Result) : 버젼		
	6) Last Update Date : 2003.10.20	
*/
CREATE PROCEDURE WZ_CreateCharacter_GetVersion
AS
BEGIN
	SELECT 1
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

CREATE procedure WZ_DelMail
	@Name varchar(10),  @MemoIndex int
as 

BEGIN
	DECLARE @ErrorCode int
	DECLARE @UserGuid  int

	SET	XACT_ABORT ON
	Set	nocount on 	

	SET @ErrorCode = 0

	-- Name GUID가 존재하는가?
	if NOT EXISTS ( select GUID FROM T_FriendMain where Name=@Name)
	  BEGIN
		SET @ErrorCode = 2
		GOTO EndProc

	  END
	else
	  BEGIN
		select @UserGuid = GUID FROM T_FriendMain where Name=@Name
	
		IF ( @@Error  <> 0   )
		begin
			SET @ErrorCode = 3
			GOTO EndProc
		end
	
	  END

	if NOT EXISTS ( select MemoIndex FROM T_FriendMail  where MemoIndex=@MemoIndex AND GUID=@UserGuid)
	  BEGIN
		SET @ErrorCode = 4
		GOTO EndProc
	  END

	BEGIN TRAN

	-- 메일을 삭제시킨다.
	DELETE FROM T_FriendMail where MemoIndex=@MemoIndex AND GUID=@UserGuid
	IF ( @@Error  <> 0 )
		SET @ErrorCode	= 5
	else 
	  BEGIN
		update T_FriendMain set MemoTotal=MemoTotal-1 where GUID = @UserGuid
		IF ( @@Error  <> 0 )
		begin
			SET @ErrorCode	= 6
		end
	  END

	IF ( @ErrorCode  <> 0 )
	  BEGIN
		ROLLBACK TRAN
	  END
	ELSE
	  BEGIN
		COMMIT TRAN
		SET @ErrorCode	= 1
	  END
	
EndProc:

	SET	XACT_ABORT OFF
	Set		nocount off
	select @ErrorCode
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


-- 친구 목록에 추가한다.
/* 에러 : 
 1 : 성공
 2 : 이미 친구 리스트에 등록되어 있다
 3 : 나의  GUID가 존재하지 않는다.
 4 : 나의 GUID를 얻는데 실패했다.
 5 : 친구의 GUID가 존재하지 않는다.
 6 : 친구의 GUID를 얻는데 실패했다.
*/
CREATE procedure WZ_FriendAdd
	@Name varchar(10),  @FriendName varchar(10)

as 

BEGIN
	DECLARE @ErrorCode int
	DECLARE @UserGuid  int
	DECLARE @FriendGuid  int

	Set		nocount on 	
	SET	XACT_ABORT ON


	SET @ErrorCode = 0

	-- FriendName GUID가 존재하는가?
	if NOT EXISTS ( select GUID FROM T_FriendMain where Name=@FriendName )
	  BEGIN
		SET @ErrorCode = 5
		GOTO EndProc
	  END
 	ELSE
	  BEGIN
		select @FriendGuid = GUID FROM T_FriendMain where Name=@FriendName

		IF ( @@Error  <> 0 )
		begin
			SET @ErrorCode = 6
			GOTO EndProc
		end

	end


	-- Name GUID가 존재하는가?
	if NOT EXISTS ( select GUID FROM T_FriendMain where Name=@Name)
	  BEGIN
		SET @ErrorCode = 3
		GOTO EndProc

	  END
	else
	  BEGIN
		select @UserGuid = GUID FROM T_FriendMain where Name=@Name
	
		IF ( @@Error  <> 0   )
		begin
			SET @ErrorCode = 4
			GOTO EndProc
		end
	
	  END

	-- 이미 친구리스트에 등록되어 있다면 취소시킨다.
	if EXISTS (SELECT GUID FROM T_FriendList where GUID = @UserGuid AND FriendGuid = @FriendGuid  )
	begin
		SET @ErrorCode = 2
		GOTO EndProc
	end

	/*-- 이미 친구리스트에 등록되어 있다면 취소시킨다.
	if EXISTS (SELECT GUID FROM T_FriendList where GUID = @FriendGuid AND FriendGuid = @UserGuid  )
	begin
		SET @ErrorCode = 2
		GOTO EndProc
	end
	*/
	BEGIN TRAN

	-- 친구를 추가시킨다.
	INSERT INTO T_FriendList (GUID, FriendGuid, FriendName ) 
		VALUES ( @UserGuid, @FriendGuid, @FriendName)
	
	IF ( @@Error  <> 0 )
		SET @ErrorCode	= @@Error
	else 
	  BEGIN
		DELETE FROM T_WaitFriend where GUID = @UserGuid AND FriendGuid = @FriendGuid
		IF ( @@Error  <> 0 )
		begin
			SET @ErrorCode	= @@Error
		end
	  END

	/*-- 다른 친구에 추가시킨다.
	INSERT INTO T_FriendList (GUID, FriendGuid, FriendName ) 
		VALUES ( @FriendGuid, @UserGuid,  @Name)

	IF ( @@Error  <> 0 )
		SET @ErrorCode	= @@Error
	else 
	  BEGIN
		DELETE FROM T_WaitFriend where GUID = @FriendGuid AND FriendGuid = @UserGuid
		IF ( @@Error  <> 0 )
		begin
			SET @ErrorCode	= @@Error
		end
	  END
*/
--EndTranProc:
	IF ( @ErrorCode  <> 0 )
	  BEGIN
		ROLLBACK TRAN
	  END
	ELSE
	  BEGIN
		COMMIT TRAN
		SET @ErrorCode	= 1
	  END
	


EndProc:

	SET	XACT_ABORT OFF
	Set		nocount off
	select @ErrorCode
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


-- 친구를 목록에서 삭제한다.
CREATE procedure WZ_FriendDel
	@Name varchar(10),  @FriendName varchar(10)

as 

BEGIN
	DECLARE @ErrorCode int
	DECLARE @UserGuid  int
	DECLARE @FriendGuid  int

	Set		nocount on

	SET @ErrorCode = 0

	-- 나의 GUID를 얻는다.
	if NOT EXISTS ( select GUID FROM T_FriendMain where Name=@Name)
	  BEGIN
		SET @ErrorCode = 3
		GOTO EndProc

	  END
	else
	  BEGIN
		select @UserGuid = GUID FROM T_FriendMain where Name=@Name
	
		IF ( @@Error  <> 0   )
		begin
			SET @ErrorCode = 4
		end

	  END

	-- 친구의 GUID를 얻는다.
	if NOT EXISTS ( select GUID FROM T_FriendMain where Name=@FriendName )
	  BEGIN
		SET @ErrorCode = 5
		GOTO EndProc
	  END
 	ELSE
	  BEGIN
		select @FriendGuid = GUID FROM T_FriendMain where Name=@FriendName

		IF ( @@Error  <> 0 )
		begin
			SET @ErrorCode = 6
		end

	end

	-- 친구리스트에 등록되어 있는지 체크한다.
	if NOT EXISTS (SELECT GUID FROM T_FriendList where GUID = @UserGuid AND FriendGuid = @FriendGuid  )
	begin
		SET @ErrorCode = 2
		GOTO EndProc
	end
	
	-- 삭제한다.
	DELETE FROM T_FriendList where GUID = @UserGuid AND FriendGuid = @FriendGuid  
	
	IF ( @@Error  <> 0 )
		SET @ErrorCode	= @@Error
	else SET @ErrorCode	= 1

	IF( @ErrorCode = 1 )
	BEGIN
		UPDATE T_FriendList SET Del=1 where GUID=@FriendGuid AND FriendGuid=@UserGuid
	END

EndProc:

	Set		nocount off
	select @ErrorCode
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


CREATE procedure WZ_GetItemSerial
as
BEGIN	
	DECLARE @ItemSerial	int
	set nocount on
	begin transaction

		update GameServerInfo set @ItemSerial = ItemCount = ItemCount+1
			
		if ( @@error  <> 0 )
		begin	
			rollback transaction
			select -1
		end 
		else
		begin
			commit transaction				
			select @ItemSerial
		end
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

CREATE procedure WZ_GetItemSerial2
	@iAddSerialCount	int
as
BEGIN	
	DECLARE @ItemSerial	int

	set nocount on
	begin transaction

	update GameServerInfo 
	set @ItemSerial = ItemCount = ItemCount+@iAddSerialCount
		
	if ( @@error  <> 0 )
	begin	
		rollback transaction
		select -1
	end 
	else
	begin
		commit transaction				
		select @ItemSerial-@iAddSerialCount+1
	end

	set nocount off	
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

CREATE procedure WZ_GuildCreate
	@GuildName	varchar(8),
	@MasterName 	varchar(10)
as 
BEGIN
	DECLARE @ErrorCode int

	SET @ErrorCode = 0
	SET XACT_ABORT ON

	Set		nocount on 		
	begin transaction

	-- 길드를 생성한다.	
	INSERT	INTO Guild (G_Name, G_Master) VALUES (@GuildName, @MasterName)
	IF ( @@Error  <> 0 )
	BEGIN
		SET @ErrorCode	= 1
	END

       	-- 길드를 정상적으로 생성 했다면
	IF ( @ErrorCode  =  0 )
	BEGIN
		-- 길드 마스터로 추가한다.
		INSERT GuildMember (Name, G_Name, G_Level) VALUES (@MasterName, @GuildName, 1)
		IF ( @@Error  <> 0 )
		BEGIN
			SET @ErrorCode	= 2
		END
	END

	IF ( @ErrorCode  <> 0 )
		rollback transaction
	ELSE
		commit transaction

	select @ErrorCode

	Set 	nocount off 
	SET XACT_ABORT OFF
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



/*
	1) 프로시져명 : WZ_MoveCharacter
	2) 작업일 : 2004. 07. 30.
	3) 작업자명 :  추숙 
	4) 전달인자 :
			계정에 대한 캐릭터 이동 
	5) 반환인자(Result) :
		0x01 : 게임내에 접속중
		0x02 : 계정 OR 캐릭터가 존재하지 않는다.s
		0x03 : 캐릭터의 상태가 이동할 수 없는 상태		 
		0x04 : 이동횟수 초과 
		0x05 : 캐릭터가 계정캐릭터 슬롯에 존재하지 않는다.
		0x06 : 추가할 계정캐릭터 빈 슬롯이 존재하지 않는다.
		0x07 : 다크로드 이동 불가능
		0x08 : 레벨 제한, 인벤의 아이템, 젠 
		0x09 : DB 처리 실패 
		0x10 : 길드 가입되어 있다.
		
	6) VERSION
		1 

	7) Last Update Date : 2005.03.10 whatthehell(다크로드 이동 가능하게 변경)

	8) DESC
	    잠금에 대한 최소단위 1000(1초) 설정. 만약 1초안에 안 끝날경우 모든작업을 롤백처리 한다. 
           각 작업에 대한 에러정보 검사한다. 만약 에러 검사 안하고 넘어갈 경우 블러킹 걸릴 확률이 높다. 
	    여기서는 @ErrorCheck 변수를 이용하여 작업 

*/
CREATE Procedure dbo.WZ_MoveCharacter 
	@AccountID			varchar(10),		-- 계정명 
	@Name				varchar(10),		-- 이전 캐릭터 
	@ChangeAccountID	varchar(10), 		-- 변경할 계정명 
	@IsOriginalAccountID  bit				-- 원본 계정여부 체크 
AS
Begin

	SET NOCOUNT ON
	SET	XACT_ABORT ON					-- 에러발생시 모든 트랜잭션 취소  
	
	DECLARE	@Result				tinyint	
	DECLARE	@ResultLowCount		int
	DECLARE	@Class				tinyint
	DECLARE	@Ctl1_Code			tinyint
	DECLARE	@SQLEXEC			varchar(1000)
	DECLARE	@ErrorCheck			INT
	DECLARE 	@g1 varchar(10), @g2 varchar(10), @g3 varchar(10), @g4 varchar(10), @g5 varchar(10)
	DECLARE 	@MoveCnt tinyint		
	DECLARE 	@ChangeMoveCnt	tinyint		
	DECLARE	@SqlStmt			VARCHAR(700)		
	DECLARE	@SqlStmt2			VARCHAR(700)		
	DECLARE	@SqlStmt3			VARCHAR(700)		


	SET LOCK_TIMEOUT	1000			-- 트랜잭션 장기 잠금처리를 막기 위해서 	
	SET @Result = 0x00	
	SET @ErrorCheck = 0x00


	If EXISTS( SELECT Name FROM GuildMember   WHERE Name = @Name )
	BEGIN
		SET @Result	= 0x10			--// 가입된 길드 존재 
		GOTO ON_ERROR
	End	

	--====================================================================================
	-- 캐릭터 존재여부 확인 
	--====================================================================================
	SELECT @Class = Class, @Ctl1_Code = CtlCode  FROM  Character  WHERE Name = @Name
	
	-- 처리결과 체크 	
	SELECT @ResultLowCount = @@rowcount, @ErrorCheck = @@error

	-- 캐릭터가 존재하지 않는다.  						
	IF @ResultLowCount = 0 
	begin
		SET @Result	= 0x02			
		GOTO ON_ERROR						
	end

	-- 에러발생(트랜잭션 잠금이나 또는 기타 문제 발생시 처리) 
	IF @ErrorCheck  <> 0 GOTO ON_ERROR

	-------------------------------------------------------------------------------------
	-- 캐릭터의 상태가 이동할 수 없는 상태(0x80)
	-- 이동상태의 캐릭터 또는 기타 블럭상태의 캐릭터의 경우 이동이 불가능 							
	-------------------------------------------------------------------------------------
	if  ( (@Ctl1_Code & 127 ) > 0 )
	BEGIN
		SET @Result	= 0x03			
		GOTO ON_ERROR						
	END 

	--====================================================================================
	-- 원본 캐릭터 슬롯정보 체크 
	--====================================================================================
	SELECT  @g1=GameID1, @g2=GameID2, @g3=GameID3, @g4=GameID4, @g5=GameID5, @MoveCnt = MoveCnt 
	FROM dbo.AccountCharacter 	Where Id = @AccountID 		
	
	-- 처리결과 체크 	
	SELECT @ResultLowCount = @@rowcount, @ErrorCheck = @@error

	--// 계정이 존재하지 않는다. 
	if @ResultLowCount = 0 
	begin
		SET @Result	= 0x02			
		GOTO ON_ERROR						
	end

	-- 에러발생(트랜잭션 잠금이나 기나 문제 발생시 처리) 
	IF @ErrorCheck  <> 0 GOTO ON_ERROR


	-------------------------------------------------------------------------------------
	-- 이동횟수 체크 
	-------------------------------------------------------------------------------------
	IF @MoveCnt IS NULL 
	BEGIN
		SET @MoveCnt  =0 
	END
	
	-- 마검사 캐릭터(상위 4비트)	
	IF  @Class = 48 
		BEGIN
			IF ((@MoveCnt&240) > 0) 
				BEGIN	
					SET @Result	= 0x04			-- 이동할 수 없는 상태(이미 이전에 이동한 상태) 					
					GOTO ON_ERROR				
				END 
			ELSE
				BEGIN
					SET @MoveCnt =  @MoveCnt | 16	
				END 
		END
	ELSE
		BEGIN
			-- 다크로드(상위 4비트) - 마검사와 동일하게 취급(2005.03.10 whatthehell)
			IF @Class = 64
				BEGIN
					IF ((@MoveCnt&240) > 0) 
						BEGIN	
							SET @Result	= 0x04			-- 이동할 수 없는 상태(이미 이전에 이동한 상태) 					
						GOTO ON_ERROR				
						END 
					ELSE
						BEGIN
							SET @MoveCnt =  @MoveCnt | 16	
						END 
				END
			ELSE 	-- 일반 캐릭터(하위 4비트)
				BEGIN
					IF  ((@MoveCnt&15) > 0)
						BEGIN	
							SET @Result	= 0x04			-- 이동할 수 없는 상태(이미 이전에 이동한 상태) 					
							GOTO ON_ERROR				
						END 
					ELSE
						BEGIN
							SET @MoveCnt =  @MoveCnt | 1	
						END 
				END 
		END


	-------------------------------------------------------------------------------------
	-- 원본 캐릭터 클리어  & 이동횟수 UPDATE 
	-------------------------------------------------------------------------------------
	SET @SqlStmt = 'UPDATE AccountCharacter  '

	IF ( @g1 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  GameID1 = NULL,'
	ELSE IF ( @g2 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  GameID2 = NULL,'
	ELSE IF ( @g3 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  GameID3 = NULL,'
	ELSE IF ( @g4 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  GameID4 = NULL,'
	ELSE IF ( @g5 = @Name )
		SET @SqlStmt = @SqlStmt + ' SET  GameID5 = NULL,'
	ELSE 				
		SET @Result	= 0x05--// 해당 계정에 대한 캐릭터가 존재 하지 않는다. 

	IF ( @Result <> 0 )
		GOTO ON_ERROR

	SET @SqlStmt = @SqlStmt + ' MoveCnt =  ' + CONVERT(VARCHAR, @MoveCnt )					
	SET @SqlStmt = @SqlStmt + ' WHERE Id =  ''' + @AccountID	 + ''''				

	--====================================================================================
	--   이동  캐릭터 슬롯정보 체크 
	--====================================================================================
	SELECT  @g1=GameID1, @g2=GameID2, @g3=GameID3, @g4=GameID4, @g5=GameID5, @ChangeMoveCnt = MoveCnt  
	FROM dbo.AccountCharacter  Where Id = @ChangeAccountID 			

	-- 처리결과 체크 	
	SELECT @ResultLowCount = @@rowcount, @ErrorCheck = @@error

	-- 에러발생(트랜잭션 잠금이나 기나 문제 발생시 처리) 
	IF @ErrorCheck  <> 0 GOTO ON_ERROR

	IF @ResultLowCount = 0 
	BEGIN
		-------------------------------------------------------------------------------------
		-- 이동 계정캐릭터 존재하지 않을 경우 AccountCharacter 생성
		-------------------------------------------------------------------------------------
		SET @SqlStmt2 ='INSERT INTO dbo.AccountCharacter(Id, GameID1, GameID2, GameID3, GameID4, GameID5, GameIDC) '
		SET @SqlStmt2 = @SqlStmt2 + ' VALUES( ''' +  @ChangeAccountID + ''', '
		SET @SqlStmt2 = @SqlStmt2 + '''' + @Name + ''', '
		SET @SqlStmt2 = @SqlStmt2 +  ' NULL, NULL, NULL, NULL, NULL) '

		PRINT @SqlStmt2
	END
	ELSE
	BEGIN
		-------------------------------------------------------------------------------------
		-- 이동 계정캐릭터 정보 업데이트 
		-------------------------------------------------------------------------------------
		SET @SqlStmt2 = 'UPDATE AccountCharacter SET '
	
		IF( ( @g1 Is NULL) OR (Len(@g1) = 0))
			SET @SqlStmt2 = @SqlStmt2 + '  GameID1 = '
		ELSE IF ( @g2  Is NULL OR Len(@g2) = 0)
			SET @SqlStmt2 = @SqlStmt2 + '  GameID2 = '
		ELSE IF ( @g3 Is NULL OR Len(@g3) = 0)
			SET @SqlStmt2 = @SqlStmt2 + '  GameID3 = ' 
		ELSE IF ( @g4 Is NULL OR Len(@g4) = 0)
			SET @SqlStmt2 = @SqlStmt2 + '  GameID4 = '
		ELSE IF ( @g5 Is NULL OR Len(@g5) = 0)
			SET @SqlStmt2 = @SqlStmt2 + '  GameID5 = '
		ELSE 		
			SET @Result	= 0x06			-- 해당 빈 슬롯 정보가 존재 하지 않다. 							
	
		if( @Result <> 0 )
			GOTO ON_ERROR
		
		SET @SqlStmt2 = @SqlStmt2 +  '''' + @Name + ''''
		SET @SqlStmt2 = @SqlStmt2 + ' WHERE Id =  ''' + @ChangeAccountID + ''''
	END

	--====================================================================================
	-- 캐릭터의 변경 
	--====================================================================================
	SET @SqlStmt3 = 'UPDATE Character '
	SET @SqlStmt3 = @SqlStmt3 + 'SET  AccountID = ''' + @ChangeAccountID + ''''
	
	IF @IsOriginalAccountID = 1
		SET @SqlStmt3 = @SqlStmt3 + ', CtlCode = ' + CONVERT(VARCHAR, @Ctl1_Code & 127	)	-- 캐릭터 이동상태를 원본으로 변경[ 이동캐릭 코드는 0x80 ]
	ELSE
		SET @SqlStmt3 = @SqlStmt3 + ', CtlCode = ' + CONVERT(VARCHAR,  @Ctl1_Code | 128	)	-- 이동캐릭터 상태로 변경 
	
	SET @SqlStmt3 = @SqlStmt3 + ' WHERE Name = ''' +  @Name + ''''


	--====================================================================================
	--트랜잭션 작업 처리  
	--====================================================================================
	BEGIN TRANSACTION 

	-- 원본 계정캐릭터 정보 변경 처리 
	EXEC(@SqlStmt)
	SELECT @ResultLowCount = @@rowcount,  @ErrorCheck = @@error
	IF  @ResultLowCount = 0  GOTO ON_TRN_ERROR
	IF  @ErrorCheck  <> 0 GOTO ON_TRN_ERROR

	-- 이동 계정캐릭터 정보 변경 처리 
	EXEC(@SqlStmt2)
	SELECT @ResultLowCount = @@rowcount,  @ErrorCheck = @@error
	IF  @ResultLowCount = 0  GOTO ON_TRN_ERROR
	IF  @ErrorCheck  <> 0 GOTO ON_TRN_ERROR
	
	-- 캐릭터 정보 변경 처리 
	EXEC(@SqlStmt3)
	SELECT @ResultLowCount = @@rowcount,  @ErrorCheck = @@error
	IF  @ResultLowCount = 0  GOTO ON_TRN_ERROR
	IF  @ErrorCheck  <> 0 GOTO ON_TRN_ERROR

	--====================================================================================
	-- 트랜잭션 결과 처리 
	--====================================================================================
ON_TRN_ERROR:
	IF ( @Result  <> 0 ) OR (@ErrorCheck <> 0)
	BEGIN
		IF @Result = 0 
			SET @Result = 0x09 		--// DB Error

		ROLLBACK TRAN
	END
	ELSE
		COMMIT	TRAN

ON_ERROR:
	IF @ErrorCheck <> 0
	BEGIN
		SET @Result = 0x09 			--// DB Error 
	END 


	SELECT @Result	

	SET NOCOUNT OFF
	SET	XACT_ABORT OFF
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









--////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
	1) 프로시져명 : WZ_RenameCharacter
	2) 수정일 : 2005. 03. 31.
	3) 작업자명 :  권두한 
	4) 전달인자 :
			서버코드, 캐릭터명
	5) 반환인자(Result) :
			0x01 : 캐릭터가 존재하지 않는다
			0x02 : 변경할 캐릭터 존재
			0x03 : 가입된 길드 존재
			0x04 : 게정 정보가 존재하지 않는다.
			0x05 : 변경할 캐릭터의 해당 슬롯이 존재하지 않는다. 
			2 : 캐릭터에 대한 해당 계정이 존재하지 않는다 
			
	6) VERSION
		3 

	7) Last Update Date : 2005.03.31
	
*/
CREATE Procedure WZ_RenameCharacter 
	@ServerCode	smallint,					--// 서버코드 
	@AccountID		varchar(10),				--// 계정명 
	@Name			varchar(10),				--// 이전 캐릭터 
	@ChangeName			varchar(10)		--// 변경할  캐릭터 
AS
Begin

	SET NOCOUNT ON
	SET	XACT_ABORT ON			-- 에러발생시 모두 취소 
	DECLARE		@Result		tinyint, 		@GUID 		int,@CGUID	int

	--// 트랜잭션 락처리 시간 10초 (이기종 서버간의 통신을 위해서 시간설정)
	SET LOCK_TIMEOUT	5000

	--//  결과값 초기화 
	SET @Result = 0x00	

	--====================================================================================
	-- 캐릭터 존재여부 확인 
	--====================================================================================
	If NOT EXISTS ( SELECT  Name  FROM  Character  (READUNCOMMITTED) WHERE Name = @Name )
	begin
		SET @Result	= 0x01				--// 캐릭터가 존재하지 않는다.  						
		GOTO ProcEnd						
	end 

	--====================================================================================
	-- 변경할 캐릭터 존재여부 확인 
	--====================================================================================
	If  not EXISTS ( SELECT  Name  FROM  Character (READUNCOMMITTED)  WHERE Name = @ChangeName )
	begin
		SET @Result	= 0x02				--// 변경할 캐릭터 존재   						
		GOTO ProcEnd						
	end 

	--====================================================================================
	-- 길드등록 여부 확인 
	--====================================================================================
	If EXISTS( SELECT Name FROM GuildMember (READUNCOMMITTED)  WHERE Name = @Name )
	BEGIN
		SET @Result	= 0x03			--// 가입된 길드 존재 
		GOTO ProcEnd
	End			
	
	select @GUID=GUID from T_CGuid where Name=@Name
	--************************************************************************************
	--// 분산 트랜잭션 실행 

	declare 	@cLevel int,@LevelUpPoint int,@Class tinyint  ,@Experience int ,@Strength smallint  ,@Dexterity smallint  ,@Vitality smallint  ,@Energy smallint  ,@Inventory varbinary (1080)  ,@MagicList varbinary (60)  ,@Money int  ,@Life real  ,@MaxLife real  ,@Mana real  ,@MaxMana real  ,@MapNumber smallint  ,@MapPosX smallint  ,@MapPosY smallint  ,@MapDir tinyint,@PkCount int ,@PkLevel int ,@PkTime int ,@MDate smalldatetime  ,@LDate smalldatetime  ,@CtlCode tinyint ,@DbVersion tinyint,@Quest varbinary (50)  ,@Leadership smallint,@ChatLimitTime smallint
	declare @O_Name varchar(10),@O_SkillKey binary(10),@O_GameOption tinyint,@O_Qkey tinyint,@O_Wkey tinyint,@O_Ekey tinyint,@O_ChatWindow tinyint
	declare @F_Name varchar(10),@F_FriendCount tinyint,@F_MemoCount int,@F_MemoTotal int

	select 	@cLevel=cLevel ,@LevelUpPoint=LevelUpPoint ,@Class=Class,@Experience=Experience  ,@Strength=Strength,@Dexterity=Dexterity,@Vitality=Vitality,@Energy=Energy,
		@Inventory=Inventory  ,@MagicList=MagicList  ,@Money=Money   ,@Life=Life   ,
		@MaxLife=MaxLife   ,@Mana=Mana   ,@MaxMana=MaxMana   ,@MapNumber=MapNumber,
		@MapPosX=MapPosX   ,@MapPosY=MapPosY   ,@MapDir=MapDir ,@PkCount=PkCount  ,
		@PkLevel=PkLevel  ,@PkTime=PkTime  ,@MDate=MDate   ,@LDate=LDate   ,@CtlCode=CtlCode,
		@DbVersion=DbVersion ,@Quest=Quest  ,@Leadership=Leadership ,@ChatLimitTime=ChatLimitTime 
		from Character where Name=@Name

	select 	@O_Name=Name, @O_SkillKey=SkillKey, @O_GameOption=GameOption,  @O_Qkey=Qkey, @O_Wkey=Wkey, @O_Ekey=Ekey ,@O_ChatWindow=ChatWindow 
		from OptionData where Name=@Name

	--select @F_Name =Name,@F_FriendCount =FriendCount, @F_MemoCount =MemoCount  from T_FriendMain where GUID=@GUID

	BEGIN DISTRIBUTED TRAN

	--====================================================================================
	-- 계정 존재여부 확인
	-- 필요성 : 분할서버로 캐릭터 이동시 AccountCharacter 의 데이타를 삭제 시키기 때문에 확인 하기 위한 
	-- 캐릭터이름에 해당 슬롯에 변경할 캐릭터명으로 수정 
	--====================================================================================
	If NOT EXISTS ( SELECT  Id  FROM  AccountCharacter  WHERE Id = @AccountID )
		begin						
			SET @Result  = 0x04			--// 계정정보가 존재 하지 않는다 
			GOTO ProcTrnEnd
		end 
	else
		begin
			--// 이전 캐릭터가 존재하던 슬롯에 변경할 캐릭터병을 수정처리 한다. 
			Declare @g1 varchar(10), @g2 varchar(10), @g3 varchar(10), @g4 varchar(10), @g5 varchar(10)						
			SELECT @g1=GameID1, @g2=GameID2, @g3=GameID3, @g4=GameID4, @g5=GameID5 FROM dbo.AccountCharacter Where Id = @AccountID 			

			if( @g1 = @Name )
				begin
					UPDATE AccountCharacter SET  GameID1 = @ChangeName
					WHERE Id = @AccountID
		
					SET @Result  = @@Error
				end 
			else if( @g2 = @Name )
				begin
					UPDATE AccountCharacter SET  GameID2 = @ChangeName
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 
			else if( @g3 = @Name )
				begin			
					UPDATE AccountCharacter SET  GameID3 = @ChangeName
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 
			else if( @g4 = @Name )
				begin
					UPDATE AccountCharacter SET  GameID4 = @ChangeName
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 
			else if( @g5 = @Name )
				begin
					UPDATE AccountCharacter SET  GameID5 = @ChangeName
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 		
			else 				
				begin					
					SET @Result	= 0x05	--// 해당 캐릭터에 대한 슬롯이 존재 하지 않는다. 						
					GOTO ProcTrnEnd								
				end 		

			if( @g1 = @ChangeName )
				begin
					UPDATE AccountCharacter SET  GameID1 = ''
					WHERE Id = @AccountID
		
					SET @Result  = @@Error
				end 
			else if( @g2 = @ChangeName )
				begin
					UPDATE AccountCharacter SET  GameID2 = ''
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 
			else if( @g3 = @ChangeName )
				begin			
					UPDATE AccountCharacter SET  GameID3 = ''
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 
			else if( @g4 = @ChangeName )
				begin
					UPDATE AccountCharacter SET  GameID4 = ''
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 
			else if( @g5 = @ChangeName )
				begin
					UPDATE AccountCharacter SET  GameID5 = ''
					WHERE Id = @AccountID

					SET @Result  = @@Error
				end 		
			else 				
				begin					
					SET @Result	= 0x05	--// 해당 캐릭터에 대한 슬롯이 존재 하지 않는다. 						
					GOTO ProcTrnEnd								
				end 			

	 
		end 

	--====================================================================================
	-- 처리된 정보가 버그가 있을 경우 반환처리  
	--====================================================================================
	If ( @Result <> 0 )
	begin
		GOTO ProcTrnEnd	
	end

	--====================================================================================
	-- 캐릭터 기본정보 변경 
	--====================================================================================


	If ( @Result = 0 )
	begin
		
		UPDATE Character	
		SET
		cLevel=@cLevel ,LevelUpPoint=@LevelUpPoint ,Class=@Class,Experience=@Experience  ,
		Strength=@Strength,Dexterity=@Dexterity,Vitality=@Vitality,Energy=@Energy,
		Inventory=@Inventory  ,MagicList=@MagicList  ,Money=@Money   ,Life=@Life   ,
		MaxLife=@MaxLife   ,Mana=@Mana   ,MaxMana=@MaxMana   ,MapNumber=@MapNumber,
		MapPosX=@MapPosX   ,MapPosY=@MapPosY   ,MapDir=@MapDir ,PkCount=@PkCount  ,
		PkLevel=@PkLevel  ,PkTime=@PkTime  ,MDate=@MDate   ,LDate=@LDate   ,CtlCode=@CtlCode,
		DbVersion=@DbVersion ,Quest=@Quest  ,Leadership=@Leadership ,ChatLimitTime=@ChatLimitTime 
		from Character where Name=@ChangeName


		update OptionData set SkillKey=@O_SkillKey,GameOption= @O_GameOption, Qkey= @O_Qkey, Wkey=@O_Wkey, Ekey=@O_Ekey ,ChatWindow=@O_ChatWindow 
		where Name=@ChangeName
		
		
		--변경 캐릭터 수정 ---------------------------------
--		update T_FriendMain set FriendCount=@F_FriendCount, MemoCount=@F_MemoCount, MemoTotal=@F_MemoTotal where Name=@ChangeName


		SET @Result =  @@Error
		IF @Result <> 0 
			GOTO ProcTrnEnd	
	end 



ProcTrnEnd:
	IF ( @Result  <> 0 )
		ROLLBACK TRAN
	ELSE
		COMMIT	TRAN


ProcEnd:


	--// 결과정보를 반환 처리 
	SELECT @Result	

	SET NOCOUNT OFF
	SET	XACT_ABORT OFF
	
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



SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE  WZ_SetGuildDelete
	@GuildName		varchar(10)
As
Begin
	SET NOCOUNT ON
	Declare		@Result		int
	Set @Result	= 1 

	Begin Transaction									
		--// Guild member db delete
		DELETE GuildMember WHERE G_Name = @GuildName		
		If @@Error <> 0 
		begin			
			Set @Result	= 0 -- DB Error 
			goto PROBLEM	
		end

		--// Guild  Main DB를 삭제
		DELETE Guild WHERE G_Name = @GuildName		
		If @@Error <> 0 
			begin
				Set @Result	= 0  --  DB Error
				goto PROBLEM	
			end	
		else goto SUCESS

	PROBLEM:
		rollback transaction
 
	SUCESS:
   		commit transaction		
				
	-- 결과를 RETURN
	SELECT @Result  As Result
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


/*
-- 사용자 고유 GUID가 존재하지 않는다면 GUID를 생성한다.

*/
CREATE procedure WZ_UserGuidCreate
	@Name varchar(10)
as 
BEGIN
	DECLARE @ErrorCode int
	DECLARE @UserGuid  int

	SET @ErrorCode = 1
	SET @UserGuid = -1

	SET	XACT_ABORT ON
	Set		nocount on 		


	-- GUID가 존재하는가?
	if EXISTS ( select GUID FROM T_CGuid where Name=@Name ) 
	  BEGIN
		SET @ErrorCode = 0
		goto EndProc
	  END

	BEGIN TRAN

	-- 존재하지 않을경우엔 GUID를 생성한다.
	INSERT INTO T_CGuid (Name) VALUES(@Name)

	IF ( @@Error  <> 0 )
	  BEGIN
		SET @ErrorCode	= 2
	  END
	ELSE 
	  BEGIN
		select @UserGuid = GUID FROM T_CGuid where Name=@Name
		IF ( @@Error  <> 0 )
		  BEGIN
			SET @ErrorCode	= 3
		  END
		ELSE 
		  BEGIN
			INSERT INTO T_FriendMain ( GUID, Name, FriendCount, MemoCount) VALUES(@UserGuid, @Name,1,10)
			IF ( @@Error  <> 0 )
				SET @ErrorCode	= 4
		  END
	  END

EndTranProc:
	IF ( @@Error  <> 0 )
		ROLLBACK TRAN
	ELSE COMMIT TRAN

EndProc:
	select @ErrorCode
	SET	XACT_ABORT OFF

	Set		nocount off
END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


/*  친구 대기 목록에 자신을 추가한다.
-- Name :자기 이름 
-- FriendName : 친구 이름

return : 
	0 : 성공,
 	2 : 유저 GUID 읽기 실패
       	3 : 친구 GUID 읽기 실패
	4 : 친구 추가 실패
	5 : 친구 찾기 실패
	6 : 친구 레벨이 6 이하다

-- ** 중복 추가되는 문제 해결해야 함
*/
CREATE procedure WZ_WaitFriendAdd
	@Name varchar(10), @FriendName varchar(10)
as 
BEGIN
	DECLARE @ErrorCode int
	DECLARE @UserGuid  int
	DECLARE @FriendGuid  int
	DECLARE @FriendLevel  int

	SET NOCOUNT ON
	SET	XACT_ABORT ON
	

	SET @ErrorCode = 0

	-- GUID를 얻는다.
	if EXISTS (select  GUID FROM T_FriendMain where Name=@Name)
  	  BEGIN
		select @UserGuid = GUID FROM T_FriendMain where Name=@Name
		IF ( @@Error  <> 0 )
		BEGIN
			SET @ErrorCode	= 2
			GOTO EndProc
		END
	  END
	else
	  BEGIN
		SET @ErrorCode	= 3
		GOTO EndProc
	  END

	-- GUID를 얻는다.
	if EXISTS (select  GUID FROM T_FriendMain where Name=@FriendName)
	  BEGIN
		select @FriendGuid = GUID FROM T_FriendMain where Name=@FriendName
		IF ( @@Error  <> 0 )
		BEGIN
			SET @ErrorCode	= 4
			GOTO EndProc
		END
  	  END
	else
	  BEGIN
		SET @ErrorCode	= 5
		GOTO EndProc
  	  END

	-- 친구의 레벨을 얻는다. 
	select  @FriendLevel=cLevel FROM Character where Name=@FriendName
	IF( @@Error <> 0 )
	  begin
		SET @ErrorCode = 5		
		GOTO EndProc
	  end
	ELSE 
	  BEGIN
		-- 레벨이 6보다 작다면 
		if( @FriendLevel < 6 )
		  begin
			SET @ErrorCode = 6
			GOTO EndProc
		  end
	  END

	BEGIN TRAN

	-- 나의 친구 리스트에 추가시킨다.
	INSERT INTO T_FriendList (GUID, FriendGuid, FriendName ) 
		VALUES ( @UserGuid, @FriendGuid, @FriendName)
	
	IF ( @@Error  <> 0 )
	BEGIN
		SET @ErrorCode	= 7
		GOTO EndTranProc
	END

	-- 친구의 목록에 이미 등록되어 있다면..
	if EXISTS (SELECT GUID FROM T_FriendList where GUID = @FriendGuid AND FriendGuid =  @UserGuid )
	begin
		UPDATE T_FriendList SET Del=0 where GUID=@FriendGuid AND FriendGuid=@UserGuid
		SET @ErrorCode = 8
		GOTO EndTranProc
	end	

	-- 친구의 대기 목록에 등록해 놓는다
	INSERT INTO T_WaitFriend (GUID, FriendName, FriendGuid ) 
				VALUES ( @FriendGuid, @Name, @UserGuid)
	
	IF ( @@Error  <> 0 )
	BEGIN
		SET @ErrorCode	= 6
		GOTO EndTranProc
	END


EndTranProc:
	IF ( (@ErrorCode  = 0) OR (@ErrorCode  = 8) )
	  BEGIN
		COMMIT TRAN
	  END
	ELSE
	  BEGIN
		ROLLBACK TRAN
	  END
	
EndProc:

	SET	XACT_ABORT OFF

	SET NOCOUNT OFF

	select @ErrorCode
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

-- 친구를 목록에서 삭제한다.
CREATE procedure WZ_WaitFriendDel
	@Name varchar(10),  @FriendName varchar(10)

as 

BEGIN
	DECLARE @ErrorCode int
	DECLARE @UserGuid  int
	DECLARE @FriendGuid  int

	Set		nocount on 	

	SET @ErrorCode = 0

	-- 나의 GUID를 얻는다.
	if NOT EXISTS ( select GUID FROM T_FriendMain where Name=@Name)
	  BEGIN
		SET @ErrorCode = 3
		GOTO EndProc

	  END
	else
	  BEGIN
		select @UserGuid = GUID FROM T_FriendMain where Name=@Name
	
		IF ( @@Error  <> 0   )
		begin
			SET @ErrorCode = 4
		end

	  END

	-- 친구의 GUID를 얻는다.
	if NOT EXISTS ( select GUID FROM T_FriendMain where Name=@FriendName )
	  BEGIN
		SET @ErrorCode = 5
		GOTO EndProc
	  END
 	ELSE
	  BEGIN
		select @FriendGuid = GUID FROM T_FriendMain where Name=@FriendName

		IF ( @@Error  <> 0 )
		begin
			SET @ErrorCode = 6
		end

	end

	-- 친구리스트에 등록되어 있는지 체크한다.
	if NOT EXISTS (SELECT GUID FROM T_WaitFriend where GUID = @UserGuid AND FriendGuid = @FriendGuid  )
	begin
		SET @ErrorCode = 2
		GOTO EndProc
	end
	
	-- 삭제한다.
	DELETE FROM T_WaitFriend where GUID = @UserGuid AND FriendGuid = @FriendGuid  
	
	IF ( @@Error  <> 0 )
		SET @ErrorCode	= @@Error

	-- ■ #BUG_FIX_20040421_03
	IF( @ErrorCode = 0 )
	BEGIN
		UPDATE T_FriendList SET Del=1 where GUID=@FriendGuid AND FriendGuid=@UserGuid
	END
	-- ■ #BUG_FIX_20040421_03	

EndProc:

	Set		nocount off
	select @ErrorCode
END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



-- 편지를 저장한다.
/*
 return 
 
 2 : 받는 사용자의 GUID가 존재하지 않는다.
 3 : 받는 사용자의 편지 카운트를 업데이트 할 수 없다.
 4 : 편지를 추가하는데 실패했다
 5 : 편지의 최대 개수를 초과하였다.
 6 : 상대가 레벨 6 이하다
 10 이상 : 성공
*/
CREATE procedure WZ_WriteMail
	@SendName 	varchar(10), 
	@RecvName 	varchar(10),
	@Subject	varchar(32),
	@Dir		tinyint,
	@Act		tinyint

as
BEGIN
	Set		nocount on 	

	DECLARE 	@userguid	int
	DECLARE 	@memocount	int
	DECLARE	@return		int
	DECLARE	@MemoTotal	int
	DECLARE 	@FriendLevel  	int

	SET	XACT_ABORT ON

	SET @return	= 0

	-- 받는 사용자의 GUID를 얻는다
	SELECT @userguid=GUID, @MemoTotal=MemoTotal FROM T_FriendMain where Name= @RecvName
	if( @@ROWCOUNT < 1 )
	BEGIN
		SET @return = 2
		GOTO EndProc
	END

	IF( @MemoTotal > 49 )
	BEGIN
		SET @return = 5
		GOTO EndProc
	END

	-- 친구의 레벨을 얻는다. 
	select  @FriendLevel=cLevel FROM Character where Name=@RecvName
	IF( @@Error <> 0 )
	  begin
		SET @return = 2		
		GOTO EndProc
	  end
	ELSE 
	  BEGIN
		-- 레벨이 6보다 작다면 
		if( @FriendLevel < 6 )
		  begin
			SET @return = 6
			GOTO EndProc
		  end
	  END

	begin transaction

	-- 받는 사용자의 편지 번호를 얻는다.
	update T_FriendMain set @memocount = MemoCount = MemoCount+1, MemoTotal=MemoTotal+1 where Name = @RecvName
	if( @@error <> 0 )
	BEGIN
		SET @return = 3
		GOTO EndProcTran
	END	

		
	-- 편지를 추가한다.
	INSERT INTO T_FriendMail (MemoIndex, GUID, FriendName, wDate, Subject,bRead,  Dir,  Act) VALUES(@memocount,@userguid, @SendName, getdate(), @Subject, 0,  @Dir, @Act)
	if( @@error <> 0 )
	BEGIN
		SET @return = 4
		GOTO EndProcTran
	END

EndProcTran:
	if ( @return  <> 0 )
	begin	
		rollback transaction
	end 
	else
	begin
		commit transaction
		SET @return = @memocount
	end	
	
EndProc:
	SET	XACT_ABORT OFF
	Set		nocount off
	
	SELECT @return, @userguid
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


-- 공성전 세금관련 스케쥴
-- 2005-07-20 오후 4:22에서 생성된 스크립트
-- 계정: WZMU_DB_01\Administrator
-- 서버: WZMU_DB_01

BEGIN TRANSACTION            
  DECLARE @JobID BINARY(16)  
  DECLARE @ReturnCode INT    
  SELECT @ReturnCode = 0     
IF (SELECT COUNT(*) FROM msdb.dbo.syscategories WHERE name = N'[Uncategorized (Local)]') < 1 
  EXECUTE msdb.dbo.sp_add_category @name = N'[Uncategorized (Local)]'

 -- 동일한 이름을 가진 작업이 있으면 삭제
  SELECT @JobID = job_id     
  FROM   msdb.dbo.sysjobs    
  WHERE (name = N'MuCastleTaxLogManage')       
  IF (@JobID IS NOT NULL)    
  BEGIN  
  -- 작업이 다중 서버 작업인지 점검  
  IF (EXISTS (SELECT  * 
              FROM    msdb.dbo.sysjobservers 
              WHERE   (job_id = @JobID) AND (server_id <> 0))) 
  BEGIN 
    -- 스크립트를 중단하십시오. 
    -- RAISERROR (N'이 이름으로 된 다중 서버 작업이 이미 존재하기 때문에 MuCastleTaxLogManage' 작업을 가져올 수 없습니다.', 16, 1) 
    GOTO QuitWithRollback  
  END 
  ELSE 
    -- [로컬] 작업 삭제 
    EXECUTE msdb.dbo.sp_delete_job @job_name = N'MuCastleTaxLogManage' 
    SELECT @JobID = NULL
  END 

BEGIN 

 -- 작업 추가
  EXECUTE @ReturnCode = msdb.dbo.sp_add_job @job_id = @JobID OUTPUT , @job_name = N'MuCastleTaxLogManage', @owner_login_name = N'sa', @description = N'설명이 없습니다.', @category_name = N'[Uncategorized (Local)]', @enabled = 1, @notify_level_email = 0, @notify_level_page = 0, @notify_level_netsend = 0, @notify_level_eventlog = 2, @delete_level= 0
  IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 

 -- 작업 단계 추가
  EXECUTE @ReturnCode = msdb.dbo.sp_add_jobstep @job_id = @JobID, @step_id = 1, @step_name = N'MuCastleLogManage', @command = N'-- 2달이 지난 로그는 삭제한다. 임시

DELETE MuCastle_MONEY_STATISTICS
WHERE LOG_DATE < DATEADD(MM, -2, GetDate())
', @database_name = N'MuOnline', @server = N'', @database_user_name = N'', @subsystem = N'TSQL', @cmdexec_success_code = 0, @flags = 0, @retry_attempts = 0, @retry_interval = 1, @output_file_name = N'', @on_success_step_id = 0, @on_success_action = 1, @on_fail_step_id = 0, @on_fail_action = 2
  IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 
  EXECUTE @ReturnCode = msdb.dbo.sp_update_job @job_id = @JobID, @start_step_id = 1 

  IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 

 -- 작업 일정 추가
  EXECUTE @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id = @JobID, @name = N'Schedule1', @enabled = 1, @freq_type = 8, @active_start_date = 20050307, @active_start_time = 60000, @freq_interval = 2, @freq_subday_type = 1, @freq_subday_interval = 0, @freq_relative_interval = 0, @freq_recurrence_factor = 1, @active_end_date = 99991231, @active_end_time = 235959
  IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 

 -- 대상 서버 추가
  EXECUTE @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @JobID, @server_name = N'(local)' 
  IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 

END
COMMIT TRANSACTION          
GOTO   EndSave              
QuitWithRollback:
  IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION 
EndSave: 


