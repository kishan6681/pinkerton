﻿CREATE TABLE [EA].[T_USR_ASSET] (
    [USR_ASSET_ID]       INT           IDENTITY (1, 1) NOT NULL,
    [USR_ID]             INT           NOT NULL,
    [ASSET_TYPE]         INT           NULL,
    [LOGIN_ID]           VARCHAR (255) NULL,
    [IMEI_WARNE]         VARCHAR (255) NULL,
    [NAME]               VARCHAR (255) NULL,
    [DISPLAY_NAME]       VARCHAR (255) NULL,
    [MOBILE_NUMBER]      VARCHAR (255) NULL,
    [DEVICE_INFO]        VARCHAR (255) NULL,
    [USER_TYPE_ID]       INT           NULL,
    [GROUP_ID]           INT           NULL,
    [TRACK_START_DATE]   DATETIME      NULL,
    [TRACK_END_DATE]     DATETIME      NULL,
    [CLIENT]             VARCHAR (255) NULL,
    [DEVICE_MODEL]       VARCHAR (255) NULL,
    [DEVICE_ID]          VARCHAR (255) NULL,
    [DEVICE_SERIAL]      VARCHAR (255) NULL,
    [COLOR]              VARCHAR (255) NULL,
    [TARCKING_FREQUENCY] VARCHAR (255) NULL,
    [LOW_BATTERY_ALERT]  VARCHAR (255) NULL,
    [ADDRESS]            VARCHAR (MAX) NULL,
    [IS_DELETED]         BIT           NULL,
    [CREATE_DATE]        DATETIME      NULL,
    [CREATE_LOGIN_ID]    VARCHAR (255) NULL,
    [UPDATE_DATE]        DATETIME      NULL,
    [UPDATE_LOGIN_ID]    VARCHAR (255) NULL,
    CONSTRAINT [PK_T_USR_ASSET] PRIMARY KEY CLUSTERED ([USR_ASSET_ID] ASC),
    CONSTRAINT [FK_T_USR_ASSET_L_GROUP] FOREIGN KEY ([GROUP_ID]) REFERENCES [EA].[L_GROUP] ([GROUP_ID]),
    CONSTRAINT [FK_T_USR_ASSET_T_USER_TYPE] FOREIGN KEY ([USER_TYPE_ID]) REFERENCES [EA].[L_USER_TYPE] ([USER_TYPE_ID]),
    CONSTRAINT [FK_T_USR_ASSET_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
);

