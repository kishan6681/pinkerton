CREATE TABLE [EA].[T_USR_SERVICE_TYPE]
(
[USR_SERVICE_TYPE_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[SERVICE_ID] [int] NULL,
[SUB_SERVICE_ID] [int] NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
ALTER TABLE [EA].[T_USR_SERVICE_TYPE] ADD CONSTRAINT [PK_T_USR_SERVICE_TYPE] PRIMARY KEY CLUSTERED  ([USR_SERVICE_TYPE_ID])
GO
ALTER TABLE [EA].[T_USR_SERVICE_TYPE] ADD CONSTRAINT [FK_T_USR_SERVICE_TYPE_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
