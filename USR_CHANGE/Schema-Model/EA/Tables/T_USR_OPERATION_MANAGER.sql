CREATE TABLE [EA].[T_USR_OPERATION_MANAGER]
(
[USR_OM_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[USR_RECIPENT_ID] [int] NULL,
[OM_NAME] [varchar] (255) NULL,
[START_DATE] [datetime] NULL,
[END_DATE] [datetime] NULL,
[DESCRIPTION] [varchar] (max) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
ALTER TABLE [EA].[T_USR_OPERATION_MANAGER] ADD CONSTRAINT [PK_T_USR_OPERATION_MANAGER] PRIMARY KEY CLUSTERED  ([USR_OM_ID])
GO
ALTER TABLE [EA].[T_USR_OPERATION_MANAGER] ADD CONSTRAINT [FK_T_USR_OPERATION_MANAGER_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
ALTER TABLE [EA].[T_USR_OPERATION_MANAGER] ADD CONSTRAINT [FK_T_USR_OPERATION_MANAGER_T_USR_RECIPIENTS] FOREIGN KEY ([USR_RECIPENT_ID]) REFERENCES [EA].[T_USR_RECIPIENTS] ([USR_RECIPIENTS_ID])
GO