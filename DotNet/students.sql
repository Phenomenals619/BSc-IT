USE [school]
GO
/****** Object:  Table [dbo].[student]    Script Date: 11-10-2024 21:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[city] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([id], [name], [city]) VALUES (2, N'peter', N'nyc')
INSERT [dbo].[student] ([id], [name], [city]) VALUES (3, N'panther', N'wakanda')
INSERT [dbo].[student] ([id], [name], [city]) VALUES (4, N'jenny', N'NewYork')
INSERT [dbo].[student] ([id], [name], [city]) VALUES (5, N'Lomd', N'Bihar')
INSERT [dbo].[student] ([id], [name], [city]) VALUES (6, N'ant', N'Mumbai')
SET IDENTITY_INSERT [dbo].[student] OFF
GO
