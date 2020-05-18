IF OBJECT_ID('[dbo].[spGetChangeTracking]') IS NOT NULL
	DROP PROCEDURE [dbo].[spGetChangeTracking];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
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
'REQUEST_OFFICE_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS CHANGE_REQUEST_OFFICE_ID,
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
'REQUESTING_DIRECTORY_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS REQUESTING_DIRECTORY_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'OM_LOGIN_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS OM_LOGIN_ID,
CHANGE_TRACKING_IS_COLUMN_IN_MASK(COLUMNPROPERTY(OBJECT_ID('USR_DEV.EA.T_USR'),
'USR_ATTACHMENTS_ID', 'ColumnId'), SYS_CHANGE_COLUMNS) AS USR_ATTACHMENTS_ID
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
