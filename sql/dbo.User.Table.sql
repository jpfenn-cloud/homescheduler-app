USE [HomeScheduler]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/3/2023 8:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](128) NOT NULL,
	[FirstName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[CreatedBy] [nvarchar](256) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [nvarchar](256) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)
)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UX_User_UserName]    Script Date: 10/3/2023 8:22:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_User_UserName] ON [dbo].[User]
(
	[UserName] ASC
)
GO
