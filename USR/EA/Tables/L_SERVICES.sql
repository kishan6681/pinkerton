﻿CREATE TABLE [EA].[L_SERVICES] (
    [SERVICES_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SERVICES_NAME]   VARCHAR (255) NULL,
    [IS_DELETED]      BIT           NULL,
    [CREATE_DATE]     DATETIME      NULL,
    [CREATE_LOGIN_ID] VARCHAR (255) NULL,
    [UPDATE_DATE]     DATETIME      NULL,
    [UPDATE_LOGIN_ID] VARCHAR (255) NULL,
    CONSTRAINT [PK_L_SERVICES] PRIMARY KEY CLUSTERED ([SERVICES_ID] ASC)
);

