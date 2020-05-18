CREATE TABLE [dbo].[sysdiagrams]
(
[name] [sys].[sysname] NOT NULL,
[principal_id] [int] NOT NULL,
[diagram_id] [int] NOT NULL IDENTITY(1, 1),
[version] [int] NULL,
[definition] [varbinary] (max) NULL
)
GO
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagr__C2B05B61F0D1F5BF] PRIMARY KEY CLUSTERED  ([diagram_id])
GO
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED  ([principal_id], [name])
GO
