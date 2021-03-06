CREATE TABLE [EA].[L_CLIENT_REQUESTING_OFFICE]
(
[CLIENT_REQUESTING_OFFICE_ID] [int] NOT NULL IDENTITY(1, 1),
[CLIENT_ID] [int] NOT NULL,
[REQUESTING_OFFICE_ID] [int] NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
ALTER TABLE [EA].[L_CLIENT_REQUESTING_OFFICE] ADD CONSTRAINT [PK_L_CLIENT_REQUESTING_OFFICE] PRIMARY KEY CLUSTERED  ([CLIENT_REQUESTING_OFFICE_ID])
GO
ALTER TABLE [EA].[L_CLIENT_REQUESTING_OFFICE] ADD CONSTRAINT [FK_L_CLIENT_REQUESTING_OFFICE_L_CLIENT] FOREIGN KEY ([CLIENT_ID]) REFERENCES [EA].[L_CLIENT] ([CLIENT_ID])
GO
ALTER TABLE [EA].[L_CLIENT_REQUESTING_OFFICE] ADD CONSTRAINT [FK_L_CLIENT_REQUESTING_OFFICE_L_REQUESTING_OFFICE] FOREIGN KEY ([CLIENT_REQUESTING_OFFICE_ID]) REFERENCES [EA].[L_REQUESTING_OFFICE] ([REQUESTING_OFFICE_ID])
GO
