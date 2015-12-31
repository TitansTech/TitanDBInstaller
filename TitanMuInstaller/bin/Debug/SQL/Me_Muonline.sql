USE Me_MuOnline
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BLOCKING]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BLOCKING]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BLOCKING_LOG]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BLOCKING_LOG]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MEMB_DETA]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MEMB_DETA]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MEMB_INFO]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MEMB_INFO]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MEMB_STAT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MEMB_STAT]
GO

CREATE TABLE [dbo].[BLOCKING] (
	[block_guid] [int] IDENTITY (1, 1) NOT NULL ,
	[memb_guid] [int] NOT NULL ,
	[serv_guid] [int] NOT NULL ,
	[char_name] [varchar] (20)   NULL ,
	[take_code] [char] (1)   NOT NULL ,
	[take_cont] [varchar] (1000)   NOT NULL ,
	[memb_cont] [varchar] (2000)   NULL ,
	[appl_days] [char] (8)   NOT NULL ,
	[rels_days] [char] (8)   NOT NULL ,
	[ctl1_code] [char] (1)   NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BLOCKING_LOG] (
	[appl_days] [datetime] NOT NULL ,
	[admin_guid] [int] NOT NULL ,
	[block_guid] [int] NOT NULL ,
	[dist_code] [char] (2)   NOT NULL ,
	[admin_name] [varchar] (50)   NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MEMB_DETA] (
	[memb_guid] [int] NOT NULL ,
	[desc_text] [varchar] (5000)   NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MEMB_INFO] (
	[memb_guid] [int] IDENTITY (1, 1) NOT NULL ,
	[memb___id] [varchar] (10) NOT NULL ,
	[memb__pwd] [varbinary] (16) NULL ,
	[memb_name] [varchar] (10) NOT NULL ,
	[sno__numb] [char] (13) NOT NULL ,
	[post_code] [char] (6) NULL ,
	[addr_info] [varchar] (50) NULL ,
	[addr_deta] [varchar] (50) NULL ,
	[tel__numb] [varchar] (20) NULL ,
	[phon_numb] [varchar] (15) NULL ,
	[mail_addr] [varchar] (50) NULL ,
	[fpas_ques] [varchar] (50) NULL ,
	[fpas_answ] [varchar] (50) NULL ,
	[job__code] [char] (2) NULL ,
	[appl_days] [datetime] NULL ,
	[modi_days] [datetime] NULL ,
	[out__days] [datetime] NULL ,
	[true_days] [datetime] NULL ,
	[mail_chek] [char] (1) NULL ,
	[bloc_code] [char] (1) NOT NULL ,
	[ctl1_code] [char] (1) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MEMB_STAT] (
	[memb___id] [varchar] (10)   NOT NULL ,
	[ConnectStat] [tinyint] NULL ,
	[ServerName] [varchar] (10)   NULL ,
	[IP] [varchar] (15)   NULL ,
	[ConnectTM] [smalldatetime] NULL ,
	[DisConnectTM] [smalldatetime] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BLOCKING] WITH NOCHECK ADD 
	CONSTRAINT [PK_BLOCKING] PRIMARY KEY  CLUSTERED 
	(
		[block_guid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[BLOCKING_LOG] WITH NOCHECK ADD 
	CONSTRAINT [PK_BLOCKING_LOG] PRIMARY KEY  CLUSTERED 
	(
		[appl_days] DESC ,
		[admin_guid] DESC ,
		[dist_code] DESC 
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MEMB_STAT] WITH NOCHECK ADD 
	CONSTRAINT [PK_MEMB_STAT] PRIMARY KEY  CLUSTERED 
	(
		[memb___id]
	)  ON [PRIMARY] 
GO

 CREATE  CLUSTERED  INDEX [IX_MEMB_INFO_1] ON [dbo].[MEMB_INFO]([memb___id] DESC ) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

ALTER TABLE [dbo].[BLOCKING] ADD 
	CONSTRAINT [DF_BLOCKING_ctl1_code] DEFAULT (5) FOR [ctl1_code]
GO

 CREATE  INDEX [IX_BLOCKING] ON [dbo].[BLOCKING]([char_name] DESC , [take_code] DESC , [appl_days] DESC , [rels_days] DESC ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MEMB_INFO] ADD 
	CONSTRAINT [DF_MEMB_INFO_mail_chek] DEFAULT (0) FOR [mail_chek],
	CONSTRAINT [PK_MEMB_INFO_1] PRIMARY KEY  NONCLUSTERED 
	(
		[memb_guid] DESC 
	)  ON [PRIMARY] 
GO

 CREATE  INDEX [IX_MEMB_DETAIL] ON [dbo].[MEMB_INFO]([sno__numb] DESC , [memb_name] DESC ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MEMB_DETA] ADD 
	CONSTRAINT [FK_MEMB_DETA_MEMB_INFO] FOREIGN KEY 
	(
		[memb_guid]
	) REFERENCES [dbo].[MEMB_INFO] (
		[memb_guid]
	)
GO


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[USP_Block_CanCel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[USP_Block_CanCel]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_CONNECT_MEMB]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_CONNECT_MEMB]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WZ_DISCONNECT_MEMB]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[WZ_DISCONNECT_MEMB]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

--=======================================================================--
--	시  스  템  :  블럭해제 
--	프로젝트  :   ME_Muonline
--	함  수  명  : USP_Block_CanCel
--	내      용  :   블럭강제 해제 
--	반  환  값  :  
--	작  성  자  :  추숙 
--	수  정  일  :  2002년 09월 03일
--=======================================================================--
CREATE PROCEDURE USP_Block_CanCel
(	
	
	-- 사용자 매개변수선언
	--========================================================================--
	@block_guid			 int ,	
	@memb_guid			int,
	@rels_days			char(8),
	@hand_meth			varchar(1000),
	@func_guid			int,
	@func_name			varchar(50),
	@Result_Data 		      	TINYINT OUTPUT	-- 반환되는 상태값 (실패코드:9  성공코드:1)
	--========================================================================-------------------------
	
)
AS
BEGIN	
	SET NOCOUNT ON

	BEGIN TRAN

            
        --========================================================================--=====================================
	-- T_Event_Drawing  테이블에서 내용 가져오기
	--========================================================================--=====================================
	
	UPDATE BLOCKING
		
		Set ctl1_code = '9',
		      rels_days = @rels_days ,
		      take_cont  = @hand_meth
                           WHERE block_guid = @block_guid

	
	UPDATE MEMB_INFO SET bloc_code ='0'  WHERE memb_guid = @memb_guid


	INSERT INTO BLOCKING_LOG(appl_days, admin_guid, block_guid, dist_code,admin_name) 
		
		VALUES(getdate(), @func_guid , @block_guid ,'88',@func_name)
			

		
           --========================================================================--=====================================
	-- 에러코드 리턴하기  9 : 에러코드  정상코드: 1
 	--========================================================================--=====================================
	IF (@@ERROR <> 0)
	        BEGIN
		SET @Result_Data = 9
		ROLLBACK TRAN
	        END
	ELSE
	          BEGIN
		SET @Result_Data = 1
		COMMIT TRAN
	           END
 --========================================================================--=====================================
	SET NOCOUNT OFF
 --========================================================================--=====================================
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

CREATE PROCEDURE WZ_CONNECT_MEMB
@memb___id varchar(10),
@ServerName  varchar(20),
@IP varchar(15)	
 AS
Begin	
set nocount on
	Declare  @find_id varchar(10)	
	Declare  @ConnectStat tinyint
	Set @find_id = 'NOT'
	Set @ConnectStat = 1		-- 접속 상태 값 1 = 접속, 0 = 접속X

	select @find_id = S.memb___id from MEMB_STAT S INNER JOIN MEMB_INFO I ON S.memb___id = I.memb___id 
	       where I.memb___id = @memb___id

	if( @find_id = 'NOT' )
	begin		
		insert into MEMB_STAT (memb___id,ConnectStat,ServerName,IP,ConnectTM)
		values(@memb___id,  @ConnectStat, @ServerName, @IP, getdate())
	end
	else		
		update MEMB_STAT set ConnectStat = @ConnectStat,
					 ServerName = @ServerName,IP = @IP,
					 ConnectTM = getdate()
       	 where memb___id = @memb___id
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE WZ_DISCONNECT_MEMB
@memb___id varchar(10)
 AS
Begin	
set nocount on
	Declare  @find_id varchar(10)	
	Declare @ConnectStat tinyint
	Set @ConnectStat = 0		-- 접속 상태 값 1 = 접속, 0 = 접속X
	Set @find_id = 'NOT'
	select @find_id = S.memb___id from MEMB_STAT S INNER JOIN MEMB_INFO I ON S.memb___id = I.memb___id 
	       where I.memb___id = @memb___id

	if( @find_id <> 'NOT' )	-- 접속 종료 처리는 접속 처리를 했을때만 유효하게 한다
	begin		
		update MEMB_STAT set ConnectStat = @ConnectStat, DisConnectTM = getdate()
		 where memb___id = @memb___id
	end
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

