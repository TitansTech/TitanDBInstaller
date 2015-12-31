BEGIN TRANSACTION            
  DECLARE @JobID BINARY(16)  
  DECLARE @ReturnCode INT    
  SELECT @ReturnCode = 0     
IF (SELECT COUNT(*) FROM msdb.dbo.syscategories WHERE name = N'[Uncategorized (Local)]') < 1 
  EXECUTE msdb.dbo.sp_add_category @name = N'[Uncategorized (Local)]'

 -- 동일한 이름을 가진 작업이 있으면 삭제
  SELECT @JobID = job_id     
  FROM   msdb.dbo.sysjobs    
  WHERE (name = N'CreateLogTable')       
  IF (@JobID IS NOT NULL)    
  BEGIN  
  -- 작업이 다중 서버 작업인지 점검  
  IF (EXISTS (SELECT  * 
              FROM    msdb.dbo.sysjobservers 
              WHERE   (job_id = @JobID) AND (server_id <> 0))) 
  BEGIN 
    -- 스크립트를 중단하십시오. 
    RAISERROR (N'이 이름으로 된 다중 서버 작업이 이미 존재하기 때문에 CreateLogTable 작업을 가져올 수 없습니다.', 16, 1) 
    GOTO QuitWithRollback  
  END 
  ELSE 
    -- [로컬] 작업 삭제 
    EXECUTE msdb.dbo.sp_delete_job @job_name = N'CreateLogTable' 
    SELECT @JobID = NULL
  END 

BEGIN 

 -- 작업 추가
  EXECUTE @ReturnCode = msdb.dbo.sp_add_job @job_id = @JobID OUTPUT , @job_name = N'CreateLogTable', @owner_login_name = N'sa', @description = N'Not', @category_name = N'[Uncategorized (Local)]', @enabled = 1, @notify_level_email = 0, @notify_level_page = 0, @notify_level_netsend = 0, @notify_level_eventlog = 2, @delete_level= 0
  IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 

 -- 작업 단계 추가
  EXECUTE @ReturnCode = msdb.dbo.sp_add_jobstep @job_id = @JobID, @step_id = 1, @step_name = N'Log Table Create', @command = N'

DECLARE @today char(10), @fullname char(20), @stmt varchar(400)
DECLARE @Authority_Id  varchar(30)

SET @today = CONVERT(VARCHAR(10), dateadd(day,1,getdate()), 120)
SET @fullname = ''UseLog'' + substring(@today,1,4) + substring(@today,6,2) + substring(@today,9,2)

SELECT @stmt = ''CREATE TABLE '' + @fullname + 
'' ( '' +  ''[Number] int IDENTITY (1, 1) NOT NULL , '' +  
''[DateTime] datetime NOT NULL  Default Getdate() , '' + 
''[ServerName] varchar (20) NOT NULL , '' + 
''[Id] varchar (10) NOT NULL , '' + 
''[Ip] varchar (16) NOT NULL , '' + 
''[State] varchar (20) NULL , '' + 
''[IpGuid] int NOT NULL , '' + 
''[UsedTime] int NULL , '' + 
''[PayCode] tinyint NULL '' + 
'' ) ''

EXEC (@stmt)

SET @stmt = ''ALTER TABLE '' + @fullname + '' WITH NOCHECK ADD '' +
''CONSTRAINT [PK_'' + @fullname + '' ] PRIMARY KEY  CLUSTERED '' +
''('' +
''[Number] '' +
'')  ON [PRIMARY]''

EXEC (@stmt)

SET @stmt = ''CREATE  INDEX [IX_'' + @fullname + ''] ON [dbo].['' + @fullname + '']([ServerName]) ON [PRIMARY]''
EXEC (@stmt)

SET @stmt = ''CREATE  INDEX [IX_'' + @fullname + ''_1] ON [dbo].['' + @fullname + '']([Id]) ON [PRIMARY]''
EXEC (@stmt)

SET @stmt = ''CREATE  INDEX [IX_'' + @fullname + ''_2] ON [dbo].['' + @fullname + '']([Ip]) ON [PRIMARY]''
EXEC (@stmt)

SET @stmt = ''CREATE  INDEX [IX_'' + @fullname + ''_3] ON [dbo].['' + @fullname + '']([IpGuid]) ON [PRIMARY]''
EXEC (@stmt)


', @database_name = N'MuLog', @server = N'', @database_user_name = N'', @subsystem = N'TSQL', @cmdexec_success_code = 0, @flags = 4, @retry_attempts = 0, @retry_interval = 1, @output_file_name = N'', @on_success_step_id = 0, @on_success_action = 1, @on_fail_step_id = 0, @on_fail_action = 2
  IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 
  EXECUTE @ReturnCode = msdb.dbo.sp_update_job @job_id = @JobID, @start_step_id = 1 

  IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback 

 -- 작업 일정 추가
  EXECUTE @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id = @JobID, @name = N'CreateTable', @enabled = 1, @freq_type = 4, @active_start_date = 20020128, @active_start_time = 230000, @freq_interval = 1, @freq_subday_type = 1, @freq_subday_interval = 1, @freq_relative_interval = 0, @freq_recurrence_factor = 0, @active_end_date = 99991231, @active_end_time = 235959
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