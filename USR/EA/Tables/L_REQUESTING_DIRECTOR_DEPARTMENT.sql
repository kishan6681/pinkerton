﻿CREATE TABLE [EA].[L_REQUESTING_DIRECTOR_DEPARTMENT] (
    [REQUESTING_DIRECTOR_DEPARTMENT_ID] INT           IDENTITY (1, 1) NOT NULL,
    [REQUESTING_DIRECTOR_ID]            INT           NULL,
    [DEPARTMENT_NAME]                   VARCHAR (255) NULL,
    [IS_DELETED]                        BIT           NULL,
    [CREATE_DATE]                       DATETIME      NULL,
    [CREATE_LOGIN_ID]                   VARCHAR (255) NULL,
    [UPDATE_DATE]                       DATETIME      NULL,
    [UPDATE_LOGIN_ID]                   VARCHAR (255) NULL,
    CONSTRAINT [PK_REQUESTING_DIRECTOR_DEPARTMENT] PRIMARY KEY CLUSTERED ([REQUESTING_DIRECTOR_DEPARTMENT_ID] ASC)
);
