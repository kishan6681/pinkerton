﻿CREATE TABLE [EA].[T_USR_LOCATION] (
    [USR_LOCATION_ID]      INT             IDENTITY (1, 1) NOT NULL,
    [USR_ID]               INT             NULL,
    [STREET_ADDRESS]       VARCHAR (MAX)   NULL,
    [CITY]                 VARCHAR (255)   NULL,
    [STATE]                VARCHAR (255)   NULL,
    [ZIP_CODE]             VARCHAR (255)   NULL,
    [COUNTRY_ID]           INT             NULL,
    [LATITUDE]             DECIMAL (18, 9) NULL,
    [LONGITUDE]            DECIMAL (18, 9) NULL,
    [RADIUS]               DECIMAL (18, 9) NULL,
    [LOCATION_DESCRIPTION] VARCHAR (MAX)   NULL,
    [IS_DELETED]           BIT             NULL,
    [CREATE_DATE]          DATETIME        NULL,
    [CREATE_LOGIN_ID]      VARCHAR (255)   NULL,
    [UPDATE_DATE]          DATETIME        NULL,
    [UPDATE_LOGIN_ID]      VARCHAR (255)   NULL,
    [IS_SUBJECT_LOCATION]  BIT             NULL,
    [SUBJECT_NAME]         VARCHAR (255)   NULL,
    [DATE_OF_BIRTH]        DATE            NULL,
    [GENDER]               VARCHAR (255)   NULL,
    [NATIONALITY]          VARCHAR (255)   NULL,
    [UNIT]                 VARCHAR (255)   NULL,
    CONSTRAINT [PK_T_USR_LOCATION] PRIMARY KEY CLUSTERED ([USR_LOCATION_ID] ASC),
    CONSTRAINT [FK_T_USR_LOCATION_L_COUNTRY] FOREIGN KEY ([COUNTRY_ID]) REFERENCES [EA].[L_COUNTRY] ([COUNTRY_ID]),
    CONSTRAINT [FK_T_USR_LOCATION_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
);



