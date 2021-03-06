IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Pictures_subid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Pictures] DROP CONSTRAINT [DF_Pictures_subid]
END

GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 09/07/2014 09:20:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pictures]') AND type in (N'U'))
DROP TABLE [dbo].[Pictures]
GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 09/07/2014 09:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pictures]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pictures](
	[group] [nvarchar](50) NOT NULL,
	[id] [int] NOT NULL,
	[subid] [int] NOT NULL,
	[picture] [image] NOT NULL,
	[thumbnail] [image] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[picture_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Pictures_subid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Pictures] ADD  CONSTRAINT [DF_Pictures_subid]  DEFAULT ((0)) FOR [subid]
END

GO
