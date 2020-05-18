﻿/*
Deployment script for USR_DEV_4

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "USR_DEV_4"
:setvar DefaultFilePrefix "USR_DEV_4"
:setvar DefaultDataPath "C:\Users\mkomaravolu\AppData\Local\Microsoft\VisualStudio\SSDT\USR_DEV"
:setvar DefaultLogPath "C:\Users\mkomaravolu\AppData\Local\Microsoft\VisualStudio\SSDT\USR_DEV"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Altering [EA].[T_USR]...';


GO
ALTER TABLE [EA].[T_USR] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON);


GO
PRINT N'Creating [EA].[FK_L_CLIENT_REQUESTING_OFFICE_L_CLIENT]...';


GO
ALTER TABLE [EA].[L_CLIENT_REQUESTING_OFFICE] WITH NOCHECK
    ADD CONSTRAINT [FK_L_CLIENT_REQUESTING_OFFICE_L_CLIENT] FOREIGN KEY ([CLIENT_ID]) REFERENCES [EA].[L_CLIENT] ([CLIENT_ID]);


GO
PRINT N'Creating [EA].[FK_L_CLIENT_REQUESTING_OFFICE_L_REQUESTING_OFFICE]...';


GO
ALTER TABLE [EA].[L_CLIENT_REQUESTING_OFFICE] WITH NOCHECK
    ADD CONSTRAINT [FK_L_CLIENT_REQUESTING_OFFICE_L_REQUESTING_OFFICE] FOREIGN KEY ([CLIENT_REQUESTING_OFFICE_ID]) REFERENCES [EA].[L_REQUESTING_OFFICE] ([REQUESTING_OFFICE_ID]);


GO
PRINT N'Creating [EA].[FK_L_MASTER_VALUE_L_MASTER_TYPE]...';


GO
ALTER TABLE [EA].[L_MASTER_VALUE] WITH NOCHECK
    ADD CONSTRAINT [FK_L_MASTER_VALUE_L_MASTER_TYPE] FOREIGN KEY ([MASTER_TYPE_ID]) REFERENCES [EA].[L_MASTER_TYPE] ([MASTER_TYPE_ID]);


GO
PRINT N'Creating [EA].[FK_L_REQUESTING_OFFICE_L_REQUESTING_REGION]...';


GO
ALTER TABLE [EA].[L_REQUESTING_OFFICE] WITH NOCHECK
    ADD CONSTRAINT [FK_L_REQUESTING_OFFICE_L_REQUESTING_REGION] FOREIGN KEY ([REGION_ID]) REFERENCES [EA].[L_REQUESTING_REGION] ([REQUESTING_REGION_ID]);


GO
PRINT N'Creating [EA].[FK_L_SERVICE_TYPE_CATEGORY_L_SERVICE_TYPE]...';


GO
ALTER TABLE [EA].[L_SERVICE_TYPE_CATEGORY] WITH NOCHECK
    ADD CONSTRAINT [FK_L_SERVICE_TYPE_CATEGORY_L_SERVICE_TYPE] FOREIGN KEY ([SERVICE_TYPE_ID]) REFERENCES [EA].[L_SERVICE_TYPE] ([SERVICE_TYPE_ID]);


GO
PRINT N'Creating [EA].[FK_L_SUB_SERVICES_L_SERVICES]...';


GO
ALTER TABLE [EA].[L_SUB_SERVICES] WITH NOCHECK
    ADD CONSTRAINT [FK_L_SUB_SERVICES_L_SERVICES] FOREIGN KEY ([SERVICES_ID]) REFERENCES [EA].[L_SERVICES] ([SERVICES_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_L_CLIENT]...';


GO
ALTER TABLE [EA].[T_USR] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_L_CLIENT] FOREIGN KEY ([CLIENT_ID]) REFERENCES [EA].[L_CLIENT] ([CLIENT_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_REQUESTING_DIRECTOR_DEPARTMENT]...';


GO
ALTER TABLE [EA].[T_USR] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_REQUESTING_DIRECTOR_DEPARTMENT] FOREIGN KEY ([REQUESTING_DIRECTOR_DEPARTMENT_ID]) REFERENCES [EA].[L_REQUESTING_DIRECTOR_DEPARTMENT] ([REQUESTING_DIRECTOR_DEPARTMENT_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_REQUESTING_REGION]...';


GO
ALTER TABLE [EA].[T_USR] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_REQUESTING_REGION] FOREIGN KEY ([REQUESTING_REGION_ID]) REFERENCES [EA].[L_REQUESTING_REGION] ([REQUESTING_REGION_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ALERT_CATEGORY_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_ALERT_CATEGORY] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ALERT_CATEGORY_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ALERT_CERTAINTY_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_ALERT_CERTAINTY] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ALERT_CERTAINTY_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ALERT_CHANNEL_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_ALERT_CHANNEL] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ALERT_CHANNEL_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ALERT_RECIPENT_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_ALERT_RECIPENT] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ALERT_RECIPENT_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ALERT_SEVERITY_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_ALERT_SEVERITY] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ALERT_SEVERITY_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ALERT_URGENCY_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_ALERT_URGENCY] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ALERT_URGENCY_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ALERT_WARNE_TYPE_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_ALERT_WARNE_TYPE] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ALERT_WARNE_TYPE_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ASSET_L_GROUP]...';


GO
ALTER TABLE [EA].[T_USR_ASSET] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ASSET_L_GROUP] FOREIGN KEY ([GROUP_ID]) REFERENCES [EA].[L_GROUP] ([GROUP_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ASSET_T_USER_TYPE]...';


GO
ALTER TABLE [EA].[T_USR_ASSET] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ASSET_T_USER_TYPE] FOREIGN KEY ([USER_TYPE_ID]) REFERENCES [EA].[L_USER_TYPE] ([USER_TYPE_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ASSET_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_ASSET] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ASSET_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ASSET_NOTIFICATION]...';


GO
ALTER TABLE [EA].[T_USR_ASSET_NOTIFICATION] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ASSET_NOTIFICATION] FOREIGN KEY ([USR_ASSET_ID]) REFERENCES [EA].[T_USR_ASSET] ([USR_ASSET_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ASSET_SOS_DETAILS]...';


GO
ALTER TABLE [EA].[T_USR_ASSET_SOS_DETAILS] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ASSET_SOS_DETAILS] FOREIGN KEY ([USR_ASSET_ID]) REFERENCES [EA].[T_USR_ASSET] ([USR_ASSET_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_ATTACHMENTS_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_ATTACHMENTS] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_ATTACHMENTS_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_AUTHOR_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_AUTHOR] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_AUTHOR_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_LOCATION_L_COUNTRY]...';


GO
ALTER TABLE [EA].[T_USR_LOCATION] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_LOCATION_L_COUNTRY] FOREIGN KEY ([COUNTRY_ID]) REFERENCES [EA].[L_COUNTRY] ([COUNTRY_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_LOCATION_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_LOCATION] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_LOCATION_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_PURPOSE_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_PURPOSE] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_PURPOSE_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_RECIPIENTS_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_RECIPIENTS] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_RECIPIENTS_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [EA].[FK_T_USR_SERVICE_TYPE_T_USR]...';


GO
ALTER TABLE [EA].[T_USR_SERVICE_TYPE] WITH NOCHECK
    ADD CONSTRAINT [FK_T_USR_SERVICE_TYPE_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID]);


GO
PRINT N'Creating [dbo].[fn_diagramobjects]...';


GO

	CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO
PRINT N'Creating [dbo].[spGetChangeTracking]...';


GO
-- Batch submitted through debugger: spGetChangeTracking.sql|8|0|C:\Users\mkomaravolu\Desktop\Local-Pinkerton-DB\Source\SourceCode\Database\Test_local\pinkerton\USR_C\USR_C\Programmable Objects\dbo\Stored Procedures\spGetChangeTracking.sql

CREATE PROCEDURE [dbo].[spGetChangeTracking]
	AS
BEGIN
DECLARE @LAST_SYNC_VERSION  bigint;
DECLARE @CURRENT_SYNC_VERSION bigint;
SET @LAST_SYNC_VERSION =0
SET @CURRENT_SYNC_VERSION=CHANGE_TRACKING_CURRENT_VERSION()

SELECT @CURRENT_SYNC_VERSION

SELECT CHANGE_TRACKING_CURRENT_VERSION() AS CURRENT_SYNC_VERSION,
CHANGE_TRACKING_MIN_VALID_VERSION (OBJECT_ID('EA.T_USR')) AS MIN_VALID_VERSION

SELECT CT.SYS_CHANGE_OPERATION,
CT.SYS_CHANGE_VERSION,CT.SYS_CHANGE_COLUMNS,CT.SYS_CHANGE_CREATION_VERSION,CT.SYS_CHANGE_CONTEXT
 FROM CHANGETABLE(CHANGES EA.T_USR,@LAST_SYNC_VERSION)
  AS CT ORDER BY SYS_CHANGE_VERSION DESC

select 
CT.SYS_CHANGE_OPERATION,CT.SYS_CHANGE_VERSION,CT.USR_ID,TU.*,
CT.SYS_CHANGE_COLUMNS,CT.SYS_CHANGE_CONTEXT,CT.SYS_CHANGE_CREATION_VERSION,
convert(varchar,CT.SYS_CHANGE_CONTEXT) as CHANGE_CONTEXT,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'USR_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_USR_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'USR_CODE', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_USR_CODE,
 CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'REQUESTING_OFFICE_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_REQUESTING_OFFICE_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'CLIENT_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_CLIENT_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'SERVICE_DESCRIPTION', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_SERVICE_DESCRIPTION,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'USR_START_DATE', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_USR_START_DATE,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'USR_END_DATE', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_USR_END_DATE,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'OM_LOGIN_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_OM_LOGIN_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'REVIEWER_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_REVIEWER_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'REVIEWER_START_DATE', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_REVIEWER_START_DATE,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'REVIEWER_END_DATE', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_REVIEWER_END_DATE,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'REVIEWER_COMMENTS', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_REVIEWER_COMMENTS,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'KEYWORDS', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_KEYWORDS,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'USR_STATUS_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_USR_STATUS_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'IS_DELETED', 'ColumnId'), SYS_CHANGE_COLUMNS) AS IS_DELETED,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'CREATE_DATE', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CREATE_DATE,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'UPDATE_LOGIN_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS UPDATE_LOGIN_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'UPDATE_DATE', 'ColumnId'), SYS_CHANGE_COLUMNS) AS UPDATE_DATE,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'CREATE_LOGIN_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CREATE_LOGIN_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'REQUESTING_DIRECTOR_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CREATE_LOGIN_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'SERVICE_TYPE_CATEGORY_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS SERVICE_TYPE_CATEGORY_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'ASSET_TYPE', 'ColumnId'), SYS_CHANGE_COLUMNS) AS ASSET_TYPE,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'ALERT_START_DATE', 'ColumnId'), SYS_CHANGE_COLUMNS) AS ALERT_START_DATE,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'ALERT_END_DATE', 'ColumnId'), SYS_CHANGE_COLUMNS) AS ALERT_END_DATE,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'REQUESTING_REGION_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS REQUESTING_REGION_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'OM_POC_EMAIL_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS OM_POC_EMAIL_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'OM_POC_MOBILE', 'ColumnId'), SYS_CHANGE_COLUMNS) AS OM_POC_MOBILE,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'OM_POC_NOTES', 'ColumnId'), SYS_CHANGE_COLUMNS) AS OM_POC_NOTES,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'IS_ONGOING', 'ColumnId'), SYS_CHANGE_COLUMNS) AS IS_ONGOING,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'OM_POC_NAME', 'ColumnId'), SYS_CHANGE_COLUMNS) AS OM_POC_NAME,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'REQUESTING_DIRECTOR_DEPARTMENT_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS REQUESTING_DIRECTOR_DEPARTMENT_ID
from CHANGETABLE (CHANGES EA.T_USR,@LAST_SYNC_VERSION) ct
left outer join EA.T_USR TU on TU.USR_ID= CT.USR_ID
ORDER BY SYS_CHANGE_VERSION DESC

BEGIN TRAN
    DECLARE @CONTEXT VARBINARY(100)
	SET @CONTEXT = CONVERT( VARBINARY,'ServerChange-' + CONVERT(VARCHAR,GETUTCDATE(),112));	
	WITH CHANGE_TRACKING_CONTEXT( @CONTEXT)
	UPDATE EA.T_USR SET UPDATE_LOGIN_ID=UPDATE_LOGIN_ID;
COMMIT TRAN 
END
GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [EA].[L_CLIENT_REQUESTING_OFFICE] WITH CHECK CHECK CONSTRAINT [FK_L_CLIENT_REQUESTING_OFFICE_L_CLIENT];

ALTER TABLE [EA].[L_CLIENT_REQUESTING_OFFICE] WITH CHECK CHECK CONSTRAINT [FK_L_CLIENT_REQUESTING_OFFICE_L_REQUESTING_OFFICE];

ALTER TABLE [EA].[L_MASTER_VALUE] WITH CHECK CHECK CONSTRAINT [FK_L_MASTER_VALUE_L_MASTER_TYPE];

ALTER TABLE [EA].[L_REQUESTING_OFFICE] WITH CHECK CHECK CONSTRAINT [FK_L_REQUESTING_OFFICE_L_REQUESTING_REGION];

ALTER TABLE [EA].[L_SERVICE_TYPE_CATEGORY] WITH CHECK CHECK CONSTRAINT [FK_L_SERVICE_TYPE_CATEGORY_L_SERVICE_TYPE];

ALTER TABLE [EA].[L_SUB_SERVICES] WITH CHECK CHECK CONSTRAINT [FK_L_SUB_SERVICES_L_SERVICES];

ALTER TABLE [EA].[T_USR] WITH CHECK CHECK CONSTRAINT [FK_T_USR_L_CLIENT];

ALTER TABLE [EA].[T_USR] WITH CHECK CHECK CONSTRAINT [FK_T_USR_REQUESTING_DIRECTOR_DEPARTMENT];

ALTER TABLE [EA].[T_USR] WITH CHECK CHECK CONSTRAINT [FK_T_USR_REQUESTING_REGION];

ALTER TABLE [EA].[T_USR_ALERT_CATEGORY] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ALERT_CATEGORY_T_USR];

ALTER TABLE [EA].[T_USR_ALERT_CERTAINTY] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ALERT_CERTAINTY_T_USR];

ALTER TABLE [EA].[T_USR_ALERT_CHANNEL] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ALERT_CHANNEL_T_USR];

ALTER TABLE [EA].[T_USR_ALERT_RECIPENT] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ALERT_RECIPENT_T_USR];

ALTER TABLE [EA].[T_USR_ALERT_SEVERITY] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ALERT_SEVERITY_T_USR];

ALTER TABLE [EA].[T_USR_ALERT_URGENCY] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ALERT_URGENCY_T_USR];

ALTER TABLE [EA].[T_USR_ALERT_WARNE_TYPE] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ALERT_WARNE_TYPE_T_USR];

ALTER TABLE [EA].[T_USR_ASSET] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ASSET_L_GROUP];

ALTER TABLE [EA].[T_USR_ASSET] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ASSET_T_USER_TYPE];

ALTER TABLE [EA].[T_USR_ASSET] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ASSET_T_USR];

ALTER TABLE [EA].[T_USR_ASSET_NOTIFICATION] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ASSET_NOTIFICATION];

ALTER TABLE [EA].[T_USR_ASSET_SOS_DETAILS] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ASSET_SOS_DETAILS];

ALTER TABLE [EA].[T_USR_ATTACHMENTS] WITH CHECK CHECK CONSTRAINT [FK_T_USR_ATTACHMENTS_T_USR];

ALTER TABLE [EA].[T_USR_AUTHOR] WITH CHECK CHECK CONSTRAINT [FK_T_USR_AUTHOR_T_USR];

ALTER TABLE [EA].[T_USR_LOCATION] WITH CHECK CHECK CONSTRAINT [FK_T_USR_LOCATION_L_COUNTRY];

ALTER TABLE [EA].[T_USR_LOCATION] WITH CHECK CHECK CONSTRAINT [FK_T_USR_LOCATION_T_USR];

ALTER TABLE [EA].[T_USR_PURPOSE] WITH CHECK CHECK CONSTRAINT [FK_T_USR_PURPOSE_T_USR];

ALTER TABLE [EA].[T_USR_RECIPIENTS] WITH CHECK CHECK CONSTRAINT [FK_T_USR_RECIPIENTS_T_USR];

ALTER TABLE [EA].[T_USR_SERVICE_TYPE] WITH CHECK CHECK CONSTRAINT [FK_T_USR_SERVICE_TYPE_T_USR];


GO
PRINT N'Update complete.';


GO
