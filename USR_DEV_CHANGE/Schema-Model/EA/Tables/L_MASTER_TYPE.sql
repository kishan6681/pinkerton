CREATE TABLE [EA].[L_MASTER_TYPE]
(
[MASTER_TYPE_ID] [int] NOT NULL IDENTITY(1, 1),
[REF_CODE] [varchar] (255) NULL,
[DESCRIPTION] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_USER_ID] [varchar] (255) NULL
)
GO
ALTER TABLE [EA].[L_MASTER_TYPE] ADD CONSTRAINT [PK_L_MASTER_TYPE] PRIMARY KEY CLUSTERED  ([MASTER_TYPE_ID])
GO