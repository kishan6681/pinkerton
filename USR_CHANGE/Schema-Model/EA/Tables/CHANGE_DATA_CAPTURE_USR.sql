CREATE TABLE [EA].[CHANGE_DATA_CAPTURE_USR]
(
[DATA_CHANGE_ID] [int] NOT NULL IDENTITY(1, 1),
[CHANGE_DATE] [datetime] NULL,
[USER_NAME] [varchar] (50) NULL,
[APPLICATION] [nvarchar] (max) NULL,
[TABLE_NAME] [varchar] (50) NULL,
[OPERATION] [char] (1) NULL,
[VERSION_ID] [nvarchar] (max) NULL,
[DESCRIPTION] [varchar] (max) NULL,
[COLUMN_NAME] [varchar] (max) NULL,
[OLDVALUE] [varchar] (50) NULL,
[NEWVALUE] [varchar] (50) NULL
)
GO
