CREATE TABLE [EA].[T_USR_ASSET]
(
[USR_ASSET_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NOT NULL,
[ASSET_TYPE] [int] NULL,
[LOGIN_ID] [varchar] (255) NULL,
[IMEI_WARNE] [varchar] (255) NULL,
[NAME] [varchar] (255) NULL,
[DISPLAY_NAME] [varchar] (255) NULL,
[MOBILE_NUMBER] [varchar] (255) NULL,
[DEVICE_INFO] [varchar] (255) NULL,
[USER_TYPE_ID] [int] NULL,
[GROUP_ID] [int] NULL,
[TRACK_START_DATE] [datetime] NULL,
[TRACK_END_DATE] [datetime] NULL,
[CLIENT] [varchar] (255) NULL,
[DEVICE_MODEL] [varchar] (255) NULL,
[DEVICE_ID] [varchar] (255) NULL,
[DEVICE_SERIAL] [varchar] (255) NULL,
[COLOR] [varchar] (255) NULL,
[TARCKING_FREQUENCY] [varchar] (255) NULL,
[LOW_BATTERY_ALERT] [varchar] (255) NULL,
[ADDRESS] [varchar] (max) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
ALTER TABLE [EA].[T_USR_ASSET] ADD CONSTRAINT [PK_T_USR_ASSET] PRIMARY KEY CLUSTERED  ([USR_ASSET_ID])
GO
ALTER TABLE [EA].[T_USR_ASSET] ADD CONSTRAINT [FK_T_USR_ASSET_L_GROUP] FOREIGN KEY ([GROUP_ID]) REFERENCES [EA].[L_GROUP] ([GROUP_ID])
GO
ALTER TABLE [EA].[T_USR_ASSET] ADD CONSTRAINT [FK_T_USR_ASSET_T_USER_TYPE] FOREIGN KEY ([USER_TYPE_ID]) REFERENCES [EA].[L_USER_TYPE] ([USER_TYPE_ID])
GO
ALTER TABLE [EA].[T_USR_ASSET] ADD CONSTRAINT [FK_T_USR_ASSET_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
