CREATE TABLE [EA].[T_USR] (
    [USR_ID]                            INT            IDENTITY (1, 1) NOT NULL,
    [USR_CODE]                          VARCHAR (255)  NULL,
    [REQUESTING_OFFICE_ID]              INT            NULL,
    [CLIENT_ID]                         INT            NULL,
    [SERVICE_DESCRIPTION]               NVARCHAR (MAX) NULL,
    [USR_START_DATE]                    DATETIME       NULL,
    [USR_END_DATE]                      DATETIME       NULL,
    [OM_LOGIN_ID]                       VARCHAR (255)  NULL,
    [REVIEWER_ID]                       VARCHAR (255)  NULL,
    [REVIEWER_START_DATE]               DATETIME       NULL,
    [REVIEWER_END_DATE]                 DATETIME       NULL,
    [REVIEWER_COMMENT]                  VARCHAR (MAX)  NULL,
    [KEYWORDS]                          NVARCHAR (MAX) NULL,
    [USR_STATUS_ID]                     INT            NULL,
    [IS_DELETED]                        BIT            NULL,
    [CREATE_DATE]                       DATETIME       NULL,
    [CREATE_LOGIN_ID]                   VARCHAR (255)  NULL,
    [UPDATE_DATE]                       DATETIME       NULL,
    [UPDATE_LOGIN_ID]                   VARCHAR (255)  NULL,
    [REQUESTING_DIRECTOR_ID]            VARCHAR (255)  NULL,
    [SERVICE_TYPE_CATEGORY_ID]          INT            NULL,
    [ASSET_TYPE]                        INT            NULL,
    [ALERT_START_DATE]                  DATETIME       NULL,
    [ALERT_END_DATE]                    DATETIME       NULL,
    [OM_POC_EMAIL_ID]                   VARCHAR (255)  NULL,
    [OM_POC_NAME]                       VARCHAR (255)  NULL,
    [OM_POC_MOBILE]                     VARCHAR (255)  NULL,
    [OM_POC_NOTES]                      VARCHAR (MAX)  NULL,
    [IS_ONGOING]                        BIT            NULL,
    [OM_POC_COUNTRY_CODE]               VARCHAR (255)  NULL,
    [REQUESTING_REGION_ID]              INT            NULL,
    [REQUESTING_DIRECTOR_DEPARTMENT_ID] INT            NULL,
    CONSTRAINT [PK_T_USR] PRIMARY KEY CLUSTERED ([USR_ID] ASC),
    CONSTRAINT [FK_T_USR_L_CLIENT] FOREIGN KEY ([CLIENT_ID]) REFERENCES [EA].[L_CLIENT] ([CLIENT_ID]),
    CONSTRAINT [FK_T_USR_REQUESTING_DIRECTOR_DEPARTMENT] FOREIGN KEY ([REQUESTING_DIRECTOR_DEPARTMENT_ID]) REFERENCES [EA].[L_REQUESTING_DIRECTOR_DEPARTMENT] ([REQUESTING_DIRECTOR_DEPARTMENT_ID]),
    CONSTRAINT [FK_T_USR_REQUESTING_REGION] FOREIGN KEY ([REQUESTING_REGION_ID]) REFERENCES [EA].[L_REQUESTING_REGION] ([REQUESTING_REGION_ID])
);


GO
ALTER TABLE [EA].[T_USR] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON);




GO


