CREATE TABLE [EA].[L_CLIENT]
(
[CLIENT_ID] [int] NOT NULL IDENTITY(1, 1),
[EMAIL_ID] [varchar] (255) NULL,
[CLIENT_NAME] [varchar] (255) NULL,
[CLIENT_CODE] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
ALTER TABLE [EA].[L_CLIENT] ADD CONSTRAINT [PK_L_CLIENT] PRIMARY KEY CLUSTERED  ([CLIENT_ID])
GO
