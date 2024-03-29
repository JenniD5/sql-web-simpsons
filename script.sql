USE [db_simpsons]
GO
/****** Object:  User [1sim]    Script Date: 15/10/2019 08:19:26 p. m. ******/
CREATE USER [1sim] FOR LOGIN [1sim] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [2sim]    Script Date: 15/10/2019 08:19:26 p. m. ******/
CREATE USER [2sim] FOR LOGIN [2sim] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [jenni]    Script Date: 15/10/2019 08:19:26 p. m. ******/
CREATE USER [jenni] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [1sim]
GO
ALTER ROLE [db_owner] ADD MEMBER [2sim]
GO
ALTER ROLE [db_owner] ADD MEMBER [jenni]
GO
/****** Object:  Table [dbo].[tbl_character]    Script Date: 15/10/2019 08:19:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_character](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](20) NULL,
	[secondName] [varchar](20) NULL,
	[lastName] [varchar](20) NULL,
	[age] [int] NULL,
	[descp] [varchar](100) NULL,
	[job] [varchar](10) NULL,
	[birthDate] [varchar](10) NULL,
 CONSTRAINT [PK_tbl_character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_character] ON 

INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [job], [birthDate]) VALUES (1, N'Homero', N'Jay', N'Simpson', 34, N'Papa de Bart, Lisa y Maggie Simpson', N'trabajo', N'9/11')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [job], [birthDate]) VALUES (8, N'Bartolomeo', N'""', N'Simpson', 10, N'hermano de Maggie y Lisa Simpson', N'""', N'23/2')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [job], [birthDate]) VALUES (10, N'Margaret', N'Abigail', N'Simpson', 1, N'hermana de Lisa y Bart simpson', N'""', N'16/6')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [job], [birthDate]) VALUES (22, N'Marjorie', N'""', N'Simpson', 34, N'Esposa de Homer', N'Hogar', N'1/10')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [job], [birthDate]) VALUES (28, N'"', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_character] OFF
