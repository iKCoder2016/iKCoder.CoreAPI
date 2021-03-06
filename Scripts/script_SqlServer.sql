USE [PlatformAPI]
GO
/****** Object:  Table [dbo].[Account_Basic]    Script Date: 2016/12/13 16:38:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Basic](
	[id] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[password] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Account_Basic] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Account_Profile]    Script Date: 2016/12/13 16:38:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Profile](
	[id] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[account_name] [nvarchar](200) NOT NULL,
	[profile_data] [nvarchar](max) NOT NULL,
	[profile_name] [nvarchar](50) NOT NULL,
	[profile_product] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Account_Profile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Data_Basic]    Script Date: 2016/12/13 16:38:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data_Basic](
	[id] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[symbol] [nvarchar](40) NULL,
	[type] [nvarchar](10) NULL,
	[data] [ntext] NULL,
 CONSTRAINT [PK_Data_Basic] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Data_Basic] ADD  CONSTRAINT [DF_Data_Basic_type]  DEFAULT (N'text') FOR [type]
GO
