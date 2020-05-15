﻿-- <Migration ID="f450b114-bbe4-45c4-9d89-1fb07fb98135" />
GO

PRINT N'Creating schemas'
GO
CREATE SCHEMA [EA]
AUTHORIZATION [dbo]
GO
PRINT N'Creating [EA].[L_CLIENT]'
GO
CREATE TABLE [EA].[L_CLIENT]
(
[CLIENT_ID] [int] NOT NULL IDENTITY(1, 1),
[EMAIL_ID] [varchar] (255) NULL,
[CLIENT_NAME] [varchar] (255) NULL,
[CLIENT_CODE] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_L_CLIENT] on [EA].[L_CLIENT]'
GO
ALTER TABLE [EA].[L_CLIENT] ADD CONSTRAINT [PK_L_CLIENT] PRIMARY KEY CLUSTERED  ([CLIENT_ID])
GO
PRINT N'Creating [EA].[L_CLIENT_REQUESTING_OFFICE]'
GO
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
PRINT N'Creating primary key [PK_L_CLIENT_REQUESTING_OFFICE] on [EA].[L_CLIENT_REQUESTING_OFFICE]'
GO
ALTER TABLE [EA].[L_CLIENT_REQUESTING_OFFICE] ADD CONSTRAINT [PK_L_CLIENT_REQUESTING_OFFICE] PRIMARY KEY CLUSTERED  ([CLIENT_REQUESTING_OFFICE_ID])
GO
PRINT N'Creating [EA].[L_REQUESTING_OFFICE]'
GO
CREATE TABLE [EA].[L_REQUESTING_OFFICE]
(
[REQUESTING_OFFICE_ID] [int] NOT NULL IDENTITY(1, 1),
[REGION_ID] [int] NOT NULL,
[REQUESTING_OFFICE_NAME] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_L_REQUESTING_OFFICE] on [EA].[L_REQUESTING_OFFICE]'
GO
ALTER TABLE [EA].[L_REQUESTING_OFFICE] ADD CONSTRAINT [PK_L_REQUESTING_OFFICE] PRIMARY KEY CLUSTERED  ([REQUESTING_OFFICE_ID])
GO
PRINT N'Creating [EA].[L_MASTER_TYPE]'
GO
CREATE TABLE [EA].[L_MASTER_TYPE]
(
[MASTER_TYPE_ID] [int] NOT NULL IDENTITY(1, 1),
[REF_CODE] [varchar] (255) NULL,
[DESCRIPTION] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_USER_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_L_MASTER_TYPE] on [EA].[L_MASTER_TYPE]'
GO
ALTER TABLE [EA].[L_MASTER_TYPE] ADD CONSTRAINT [PK_L_MASTER_TYPE] PRIMARY KEY CLUSTERED  ([MASTER_TYPE_ID])
GO
PRINT N'Creating [EA].[L_MASTER_VALUE]'
GO
CREATE TABLE [EA].[L_MASTER_VALUE]
(
[MASTER_VALUE_ID] [int] NOT NULL IDENTITY(1, 1),
[MASTER_TYPE_ID] [int] NULL,
[REF_CODE] [varchar] (255) NULL,
[DESCRIPTION] [varchar] (max) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_USER_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_L_MASTER_VALUE] on [EA].[L_MASTER_VALUE]'
GO
ALTER TABLE [EA].[L_MASTER_VALUE] ADD CONSTRAINT [PK_L_MASTER_VALUE] PRIMARY KEY CLUSTERED  ([MASTER_VALUE_ID])
GO
PRINT N'Creating [EA].[L_REQUESTING_REGION]'
GO
CREATE TABLE [EA].[L_REQUESTING_REGION]
(
[REQUESTING_REGION_ID] [int] NOT NULL IDENTITY(1, 1),
[REQUESTING_REGION_NAME] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_L_REQUESTING_REGION] on [EA].[L_REQUESTING_REGION]'
GO
ALTER TABLE [EA].[L_REQUESTING_REGION] ADD CONSTRAINT [PK_L_REQUESTING_REGION] PRIMARY KEY CLUSTERED  ([REQUESTING_REGION_ID])
GO
PRINT N'Creating [EA].[L_SERVICE_TYPE]'
GO
CREATE TABLE [EA].[L_SERVICE_TYPE]
(
[SERVICE_TYPE_ID] [int] NOT NULL IDENTITY(1, 1),
[SERVICE_TYPE_NAME] [varchar] (max) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_L_SERVICE_TYPE] on [EA].[L_SERVICE_TYPE]'
GO
ALTER TABLE [EA].[L_SERVICE_TYPE] ADD CONSTRAINT [PK_L_SERVICE_TYPE] PRIMARY KEY CLUSTERED  ([SERVICE_TYPE_ID])
GO
PRINT N'Creating [EA].[L_SERVICE_TYPE_CATEGORY]'
GO
CREATE TABLE [EA].[L_SERVICE_TYPE_CATEGORY]
(
[SERVICE_TYPE_CATEGORY_ID] [int] NOT NULL IDENTITY(1, 1),
[SERVICE_TYPE_ID] [int] NULL,
[SERVICE_TYPE_CATEGORY_NAME] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_L_SERVICE_TYPE_CATEGORY] on [EA].[L_SERVICE_TYPE_CATEGORY]'
GO
ALTER TABLE [EA].[L_SERVICE_TYPE_CATEGORY] ADD CONSTRAINT [PK_L_SERVICE_TYPE_CATEGORY] PRIMARY KEY CLUSTERED  ([SERVICE_TYPE_CATEGORY_ID])
GO
PRINT N'Creating [EA].[L_SERVICES]'
GO
CREATE TABLE [EA].[L_SERVICES]
(
[SERVICES_ID] [int] NOT NULL IDENTITY(1, 1),
[SERVICES_NAME] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_L_SERVICES] on [EA].[L_SERVICES]'
GO
ALTER TABLE [EA].[L_SERVICES] ADD CONSTRAINT [PK_L_SERVICES] PRIMARY KEY CLUSTERED  ([SERVICES_ID])
GO
PRINT N'Creating [EA].[L_SUB_SERVICES]'
GO
CREATE TABLE [EA].[L_SUB_SERVICES]
(
[SUB_SERVICES_ID] [int] NOT NULL IDENTITY(1, 1),
[SERVICES_ID] [int] NULL,
[SUB_SERVICES_NAME] [varchar] (max) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_L_SUB_SERVICES] on [EA].[L_SUB_SERVICES]'
GO
ALTER TABLE [EA].[L_SUB_SERVICES] ADD CONSTRAINT [PK_L_SUB_SERVICES] PRIMARY KEY CLUSTERED  ([SUB_SERVICES_ID])
GO
PRINT N'Creating [EA].[T_USR]'
GO
CREATE TABLE [EA].[T_USR]
(
[USR_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_CODE] [varchar] (255) NULL,
[REQUEST_OFFICE_ID] [int] NULL,
[CLIENT_ID] [int] NULL,
[SERVICE_DESCRIPTION] [nvarchar] (max) NULL,
[USR_START_DATE] [datetime] NULL,
[USR_END_DATE] [datetime] NULL,
[REVIEWER_ID] [varchar] (255) NULL,
[REVIEWER_START_DATE] [datetime] NULL,
[REVIEWER_END_DATE] [datetime] NULL,
[REVIEWER_COMMENT] [varchar] (max) NULL,
[KEYWORDS] [nvarchar] (max) NULL,
[USR_STATUS_ID] [int] NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL,
[SERVICE_TYPE_CATEGORY_ID] [int] NULL,
[ASSET_TYPE] [int] NULL,
[ALERT_START_DATE] [datetime] NULL,
[ALERT_END_DATE] [datetime] NULL,
[OM_LOGIN_ID] [int] NULL,
[REQUESTING_DIRECTORY_ID] [int] NULL
)
GO
PRINT N'Creating primary key [PK_T_USR] on [EA].[T_USR]'
GO
ALTER TABLE [EA].[T_USR] ADD CONSTRAINT [PK_T_USR] PRIMARY KEY CLUSTERED  ([USR_ID])
GO
PRINT N'Creating [EA].[T_USR_ALERT_CATEGORY]'
GO
CREATE TABLE [EA].[T_USR_ALERT_CATEGORY]
(
[USR_ALERT_CATEGORY_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[CATEGORY_REF_CODE] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_ALERT_CATEGORY] on [EA].[T_USR_ALERT_CATEGORY]'
GO
ALTER TABLE [EA].[T_USR_ALERT_CATEGORY] ADD CONSTRAINT [PK_T_USR_ALERT_CATEGORY] PRIMARY KEY CLUSTERED  ([USR_ALERT_CATEGORY_ID])
GO
PRINT N'Creating [EA].[T_USR_ALERT_CERTAINTY]'
GO
CREATE TABLE [EA].[T_USR_ALERT_CERTAINTY]
(
[USR_ALERT_CERTAINTY_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[CERTAINTY_REF_CODE] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_ALERT_CERTAINTY] on [EA].[T_USR_ALERT_CERTAINTY]'
GO
ALTER TABLE [EA].[T_USR_ALERT_CERTAINTY] ADD CONSTRAINT [PK_T_USR_ALERT_CERTAINTY] PRIMARY KEY CLUSTERED  ([USR_ALERT_CERTAINTY_ID])
GO
PRINT N'Creating [EA].[T_USR_ALERT_CHANNEL]'
GO
CREATE TABLE [EA].[T_USR_ALERT_CHANNEL]
(
[USR_ALERT_CHANNEL_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[CHANNEL] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_ALERT_CHANNEL] on [EA].[T_USR_ALERT_CHANNEL]'
GO
ALTER TABLE [EA].[T_USR_ALERT_CHANNEL] ADD CONSTRAINT [PK_T_USR_ALERT_CHANNEL] PRIMARY KEY CLUSTERED  ([USR_ALERT_CHANNEL_ID])
GO
PRINT N'Creating [EA].[T_USR_ALERT_RECIPENT]'
GO
CREATE TABLE [EA].[T_USR_ALERT_RECIPENT]
(
[USR_ALERT_RECIPENT_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[RECIPIENT_NAME] [varchar] (255) NULL,
[RECIPIENT_EMAIL_ID] [varchar] (255) NULL,
[RECIPIENT_MOBILE] [nvarchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL,
[COUNTRY_CODE] [varchar] (255) NULL,
[IS_NOTIFY] [bit] NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_ALERT_RECIPENT] on [EA].[T_USR_ALERT_RECIPENT]'
GO
ALTER TABLE [EA].[T_USR_ALERT_RECIPENT] ADD CONSTRAINT [PK_T_USR_ALERT_RECIPENT] PRIMARY KEY CLUSTERED  ([USR_ALERT_RECIPENT_ID])
GO
PRINT N'Creating [EA].[T_USR_ALERT_SEVERITY]'
GO
CREATE TABLE [EA].[T_USR_ALERT_SEVERITY]
(
[USR_ALERT_SEVERITY_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[SEVERITY_REF_CODE] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_ALERT_SEVERITY] on [EA].[T_USR_ALERT_SEVERITY]'
GO
ALTER TABLE [EA].[T_USR_ALERT_SEVERITY] ADD CONSTRAINT [PK_T_USR_ALERT_SEVERITY] PRIMARY KEY CLUSTERED  ([USR_ALERT_SEVERITY_ID])
GO
PRINT N'Creating [EA].[T_USR_ALERT_URGENCY]'
GO
CREATE TABLE [EA].[T_USR_ALERT_URGENCY]
(
[USR_ALERT_URGENCY_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[URGENCY_REF_CODE] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_ALERT_URGENCY] on [EA].[T_USR_ALERT_URGENCY]'
GO
ALTER TABLE [EA].[T_USR_ALERT_URGENCY] ADD CONSTRAINT [PK_T_USR_ALERT_URGENCY] PRIMARY KEY CLUSTERED  ([USR_ALERT_URGENCY_ID])
GO
PRINT N'Creating [EA].[T_USR_ALERT_WARNE_TYPE]'
GO
CREATE TABLE [EA].[T_USR_ALERT_WARNE_TYPE]
(
[USR_ALERT_WARNE_TYPE_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[WARNE_TYPE_REF_CODE] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_ALERT_WARNE_TYPE] on [EA].[T_USR_ALERT_WARNE_TYPE]'
GO
ALTER TABLE [EA].[T_USR_ALERT_WARNE_TYPE] ADD CONSTRAINT [PK_T_USR_ALERT_WARNE_TYPE] PRIMARY KEY CLUSTERED  ([USR_ALERT_WARNE_TYPE_ID])
GO
PRINT N'Creating [EA].[T_USR_AUTHOR]'
GO
CREATE TABLE [EA].[T_USR_AUTHOR]
(
[USR_AUTHOR_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[AUTHOR_NAME] [varchar] (255) NULL,
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
PRINT N'Creating primary key [PK_T_USR_AUTHOR] on [EA].[T_USR_AUTHOR]'
GO
ALTER TABLE [EA].[T_USR_AUTHOR] ADD CONSTRAINT [PK_T_USR_AUTHOR] PRIMARY KEY CLUSTERED  ([USR_AUTHOR_ID])
GO
PRINT N'Creating [EA].[L_COUNTRY]'
GO
CREATE TABLE [EA].[L_COUNTRY]
(
[COUNTRY_ID] [int] NOT NULL IDENTITY(1, 1),
[COUNTRY_NAME] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_L_COUNTRY] on [EA].[L_COUNTRY]'
GO
ALTER TABLE [EA].[L_COUNTRY] ADD CONSTRAINT [PK_L_COUNTRY] PRIMARY KEY CLUSTERED  ([COUNTRY_ID])
GO
PRINT N'Creating [EA].[T_USR_LOCATION]'
GO
CREATE TABLE [EA].[T_USR_LOCATION]
(
[USR_LOCATION_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[STREET_ADDRESS] [varchar] (max) NULL,
[CITY] [varchar] (255) NULL,
[STATE] [varchar] (255) NULL,
[ZIP_CODE] [varchar] (255) NULL,
[COUNTRY_ID] [int] NULL,
[LATITUDE] [decimal] (18, 9) NULL,
[LONGITUDE] [decimal] (18, 9) NULL,
[RADIUS] [decimal] (18, 9) NULL,
[LOCATION_DESCRIPTION] [varchar] (max) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL,
[IS_SUBJECT_LOCATION] [bit] NULL,
[SUBJECT_NAME] [varchar] (255) NULL,
[DATE_OF_BIRTH] [date] NULL,
[GENDER] [varchar] (255) NULL,
[NATIONALITY] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_LOCATION] on [EA].[T_USR_LOCATION]'
GO
ALTER TABLE [EA].[T_USR_LOCATION] ADD CONSTRAINT [PK_T_USR_LOCATION] PRIMARY KEY CLUSTERED  ([USR_LOCATION_ID])
GO
PRINT N'Creating [EA].[T_USR_OPERATION_MANAGER]'
GO
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
PRINT N'Creating primary key [PK_T_USR_OPERATION_MANAGER] on [EA].[T_USR_OPERATION_MANAGER]'
GO
ALTER TABLE [EA].[T_USR_OPERATION_MANAGER] ADD CONSTRAINT [PK_T_USR_OPERATION_MANAGER] PRIMARY KEY CLUSTERED  ([USR_OM_ID])
GO
PRINT N'Creating [EA].[T_USR_RECIPIENTS]'
GO
CREATE TABLE [EA].[T_USR_RECIPIENTS]
(
[USR_RECIPIENTS_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[RECIPIENT_NAME] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_RECIPIENTS] on [EA].[T_USR_RECIPIENTS]'
GO
ALTER TABLE [EA].[T_USR_RECIPIENTS] ADD CONSTRAINT [PK_T_USR_RECIPIENTS] PRIMARY KEY CLUSTERED  ([USR_RECIPIENTS_ID])
GO
PRINT N'Creating [EA].[T_USR_PURPOSE]'
GO
CREATE TABLE [EA].[T_USR_PURPOSE]
(
[USR_PURPOSE_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[PURPOSE_REF_CODE] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_PURPOSE] on [EA].[T_USR_PURPOSE]'
GO
ALTER TABLE [EA].[T_USR_PURPOSE] ADD CONSTRAINT [PK_T_USR_PURPOSE] PRIMARY KEY CLUSTERED  ([USR_PURPOSE_ID])
GO
PRINT N'Creating [EA].[T_USR_SERVICE_TYPE]'
GO
CREATE TABLE [EA].[T_USR_SERVICE_TYPE]
(
[USR_SERVICE_TYPE_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[SERVICE_ID] [int] NULL,
[SUB_SERVICE_ID] [int] NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_SERVICE_TYPE] on [EA].[T_USR_SERVICE_TYPE]'
GO
ALTER TABLE [EA].[T_USR_SERVICE_TYPE] ADD CONSTRAINT [PK_T_USR_SERVICE_TYPE] PRIMARY KEY CLUSTERED  ([USR_SERVICE_TYPE_ID])
GO
PRINT N'Creating [EA].[L_REQUESTING_DIRECTOR_DEPARTMENT]'
GO
CREATE TABLE [EA].[L_REQUESTING_DIRECTOR_DEPARTMENT]
(
[REQUESTING_DIRECTOR_DEPARTMENT_ID] [int] NOT NULL IDENTITY(1, 1),
[REQUESTING_DIRECTOR_ID] [int] NULL,
[DEPARTMENT_NAME] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_REQUESTING_DIRECTOR_DEPARTMENT] on [EA].[L_REQUESTING_DIRECTOR_DEPARTMENT]'
GO
ALTER TABLE [EA].[L_REQUESTING_DIRECTOR_DEPARTMENT] ADD CONSTRAINT [PK_REQUESTING_DIRECTOR_DEPARTMENT] PRIMARY KEY CLUSTERED  ([REQUESTING_DIRECTOR_DEPARTMENT_ID])
GO
PRINT N'Creating [EA].[L_USR_STATUS]'
GO
CREATE TABLE [EA].[L_USR_STATUS]
(
[USR_STATUS_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_STATUS_NAME] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_L_USR_STATUS] on [EA].[L_USR_STATUS]'
GO
ALTER TABLE [EA].[L_USR_STATUS] ADD CONSTRAINT [PK_L_USR_STATUS] PRIMARY KEY CLUSTERED  ([USR_STATUS_ID])
GO
PRINT N'Creating [EA].[T_USR_ATTACHMENTS]'
GO
CREATE TABLE [EA].[T_USR_ATTACHMENTS]
(
[USR_ATTACHMENTS_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[FILE_NAME] [varchar] (255) NULL,
[FILE_PATH] [varchar] (max) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_ATTACHMENTS] on [EA].[T_USR_ATTACHMENTS]'
GO
ALTER TABLE [EA].[T_USR_ATTACHMENTS] ADD CONSTRAINT [PK_T_USR_ATTACHMENTS] PRIMARY KEY CLUSTERED  ([USR_ATTACHMENTS_ID])
GO
PRINT N'Creating [EA].[T_USR_HIST]'
GO
CREATE TABLE [EA].[T_USR_HIST]
(
[USR_HIST_ID] [int] NOT NULL IDENTITY(1, 1),
[USR_ID] [int] NULL,
[USR_CODE] [varchar] (255) NULL,
[REQUEST_OFFICE_ID] [int] NULL,
[CLIENT_ID] [int] NULL,
[CLIENT_LOGIN_ID] [varchar] (255) NULL,
[SERVICE_DESCRIPTION] [nvarchar] (max) NULL,
[USR_START_DATE] [datetime] NULL,
[USR_END_DATE] [datetime] NULL,
[OM_LOGIN_ID] [varchar] (255) NULL,
[AUTHOR_ID] [varchar] (255) NULL,
[AUTHOR_START_DATE] [datetime] NULL,
[AUTHOR_END_DATE] [datetime] NULL,
[AUTHOR_COMMENT] [varchar] (max) NULL,
[REVIEWER_ID] [varchar] (255) NULL,
[REVIEWER_START_DATE] [datetime] NULL,
[REVIEWER_END_DATE] [datetime] NULL,
[REVIEWER_COMMENT] [varchar] (max) NULL,
[INCLUDE_KEYWORDS] [nvarchar] (max) NULL,
[EXCLUDE_KEYWORDS] [nvarchar] (max) NULL,
[USR_STATUS_ID] [int] NULL,
[SERVICE_TYPE_CATEGORY_ID] [int] NULL,
[DIRECTOR_ID] [varchar] (255) NULL,
[IS_DELETED] [bit] NULL,
[CREATE_DATE] [datetime] NULL,
[CREATE_LOGIN_ID] [varchar] (255) NULL,
[UPDATE_DATE] [datetime] NULL,
[UPDATE_LOGIN_ID] [varchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_T_USR_HIST] on [EA].[T_USR_HIST]'
GO
ALTER TABLE [EA].[T_USR_HIST] ADD CONSTRAINT [PK_T_USR_HIST] PRIMARY KEY CLUSTERED  ([USR_HIST_ID])
GO
PRINT N'Adding foreign keys to [EA].[L_CLIENT_REQUESTING_OFFICE]'
GO
ALTER TABLE [EA].[L_CLIENT_REQUESTING_OFFICE] ADD CONSTRAINT [FK_L_CLIENT_REQUESTING_OFFICE_L_CLIENT] FOREIGN KEY ([CLIENT_ID]) REFERENCES [EA].[L_CLIENT] ([CLIENT_ID])
GO
ALTER TABLE [EA].[L_CLIENT_REQUESTING_OFFICE] ADD CONSTRAINT [FK_L_CLIENT_REQUESTING_OFFICE_L_REQUESTING_OFFICE] FOREIGN KEY ([CLIENT_REQUESTING_OFFICE_ID]) REFERENCES [EA].[L_REQUESTING_OFFICE] ([REQUESTING_OFFICE_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR]'
GO
ALTER TABLE [EA].[T_USR] ADD CONSTRAINT [FK_T_USR_L_CLIENT] FOREIGN KEY ([CLIENT_ID]) REFERENCES [EA].[L_CLIENT] ([CLIENT_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_LOCATION]'
GO
ALTER TABLE [EA].[T_USR_LOCATION] ADD CONSTRAINT [FK_T_USR_LOCATION_L_COUNTRY] FOREIGN KEY ([COUNTRY_ID]) REFERENCES [EA].[L_COUNTRY] ([COUNTRY_ID])
GO
ALTER TABLE [EA].[T_USR_LOCATION] ADD CONSTRAINT [FK_T_USR_LOCATION_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
PRINT N'Adding foreign keys to [EA].[L_MASTER_VALUE]'
GO
ALTER TABLE [EA].[L_MASTER_VALUE] ADD CONSTRAINT [FK_L_MASTER_VALUE_L_MASTER_TYPE] FOREIGN KEY ([MASTER_TYPE_ID]) REFERENCES [EA].[L_MASTER_TYPE] ([MASTER_TYPE_ID])
GO
PRINT N'Adding foreign keys to [EA].[L_REQUESTING_OFFICE]'
GO
ALTER TABLE [EA].[L_REQUESTING_OFFICE] ADD CONSTRAINT [FK_L_REQUESTING_OFFICE_L_REQUESTING_REGION] FOREIGN KEY ([REGION_ID]) REFERENCES [EA].[L_REQUESTING_REGION] ([REQUESTING_REGION_ID])
GO
PRINT N'Adding foreign keys to [EA].[L_SUB_SERVICES]'
GO
ALTER TABLE [EA].[L_SUB_SERVICES] ADD CONSTRAINT [FK_L_SUB_SERVICES_L_SERVICES] FOREIGN KEY ([SERVICES_ID]) REFERENCES [EA].[L_SERVICES] ([SERVICES_ID])
GO
PRINT N'Adding foreign keys to [EA].[L_SERVICE_TYPE_CATEGORY]'
GO
ALTER TABLE [EA].[L_SERVICE_TYPE_CATEGORY] ADD CONSTRAINT [FK_L_SERVICE_TYPE_CATEGORY_L_SERVICE_TYPE] FOREIGN KEY ([SERVICE_TYPE_ID]) REFERENCES [EA].[L_SERVICE_TYPE] ([SERVICE_TYPE_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_ALERT_CATEGORY]'
GO
ALTER TABLE [EA].[T_USR_ALERT_CATEGORY] ADD CONSTRAINT [FK_T_USR_ALERT_CATEGORY_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_ALERT_CERTAINTY]'
GO
ALTER TABLE [EA].[T_USR_ALERT_CERTAINTY] ADD CONSTRAINT [FK_T_USR_ALERT_CERTAINTY_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_ALERT_CHANNEL]'
GO
ALTER TABLE [EA].[T_USR_ALERT_CHANNEL] ADD CONSTRAINT [FK_T_USR_ALERT_CHANNEL_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_ALERT_RECIPENT]'
GO
ALTER TABLE [EA].[T_USR_ALERT_RECIPENT] ADD CONSTRAINT [FK_T_USR_ALERT_RECIPENT_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_ALERT_SEVERITY]'
GO
ALTER TABLE [EA].[T_USR_ALERT_SEVERITY] ADD CONSTRAINT [FK_T_USR_ALERT_SEVERITY_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_ALERT_URGENCY]'
GO
ALTER TABLE [EA].[T_USR_ALERT_URGENCY] ADD CONSTRAINT [FK_T_USR_ALERT_URGENCY_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_ALERT_WARNE_TYPE]'
GO
ALTER TABLE [EA].[T_USR_ALERT_WARNE_TYPE] ADD CONSTRAINT [FK_T_USR_ALERT_WARNE_TYPE_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_AUTHOR]'
GO
ALTER TABLE [EA].[T_USR_AUTHOR] ADD CONSTRAINT [FK_T_USR_AUTHOR_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_OPERATION_MANAGER]'
GO
ALTER TABLE [EA].[T_USR_OPERATION_MANAGER] ADD CONSTRAINT [FK_T_USR_OPERATION_MANAGER_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
ALTER TABLE [EA].[T_USR_OPERATION_MANAGER] ADD CONSTRAINT [FK_T_USR_OPERATION_MANAGER_T_USR_RECIPIENTS] FOREIGN KEY ([USR_RECIPENT_ID]) REFERENCES [EA].[T_USR_RECIPIENTS] ([USR_RECIPIENTS_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_PURPOSE]'
GO
ALTER TABLE [EA].[T_USR_PURPOSE] ADD CONSTRAINT [FK_T_USR_PURPOSE_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_RECIPIENTS]'
GO
ALTER TABLE [EA].[T_USR_RECIPIENTS] ADD CONSTRAINT [FK_T_USR_RECIPIENTS_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
PRINT N'Adding foreign keys to [EA].[T_USR_SERVICE_TYPE]'
GO
ALTER TABLE [EA].[T_USR_SERVICE_TYPE] ADD CONSTRAINT [FK_T_USR_SERVICE_TYPE_T_USR] FOREIGN KEY ([USR_ID]) REFERENCES [EA].[T_USR] ([USR_ID])
GO
