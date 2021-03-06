﻿CREATE TABLE [EA].[T_USR_ASSET_SOS_DETAILS] (
    [USR_ASSET_SOS_DETAILS_ID] INT           IDENTITY (1, 1) NOT NULL,
    [USR_ASSET_ID]             INT           NULL,
    [EMAIL_ID]                 VARCHAR (255) NULL,
    [COUNTRY_CODE]             VARCHAR (255) NULL,
    [PHONE]                    VARCHAR (255) NULL,
    [IS_DELETED]               BIT           NULL,
    [CREATE_DATE]              DATETIME      NULL,
    [CREATE_LOGIN_ID]          VARCHAR (255) NULL,
    [UPDATE_DATE]              DATETIME      NULL,
    [UPDATE_LOGIN_ID]          VARCHAR (255) NULL,
    CONSTRAINT [PK_T_USR_ASSET_SOS_DETAILS] PRIMARY KEY CLUSTERED ([USR_ASSET_SOS_DETAILS_ID] ASC),
    CONSTRAINT [FK_T_USR_ASSET_SOS_DETAILS] FOREIGN KEY ([USR_ASSET_ID]) REFERENCES [EA].[T_USR_ASSET] ([USR_ASSET_ID])
);

