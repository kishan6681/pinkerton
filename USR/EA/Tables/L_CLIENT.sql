﻿CREATE TABLE [EA].[L_CLIENT] (
    [CLIENT_ID]       INT           IDENTITY (1, 1) NOT NULL,
    [EMAIL_ID]        VARCHAR (255) NULL,
    [CLIENT_NAME]     VARCHAR (255) NULL,
    [CLIENT_CODE]     VARCHAR (255) NULL,
    [IS_DELETED]      BIT           NULL,
    [CREATE_DATE]     DATETIME      NULL,
    [CREATE_LOGIN_ID] VARCHAR (255) NULL,
    [UPDATE_DATE]     DATETIME      NULL,
    [UPDATE_LOGIN_ID] VARCHAR (255) NULL,
    CONSTRAINT [PK_L_CLIENT] PRIMARY KEY CLUSTERED ([CLIENT_ID] ASC)
);
