USE [Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/16/2022 10:08:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Email] [varchar](50) NOT NULL,
	[Pass] [varchar](50) NULL,
	[r_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 7/16/2022 10:08:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [int] NOT NULL,
	[ClassName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Information]    Script Date: 7/16/2022 10:08:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[StudentNumber] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[RollNumber] [varchar](50) NULL,
	[ClassID] [int] NULL,
	[SpecializedID] [int] NULL,
	[birthdate] [date] NULL,
	[Email] [varchar](50) NULL,
	[Phone] [int] NULL,
	[Address] [varchar](50) NULL,
	[images] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS]    Script Date: 7/16/2022 10:08:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAS](
	[SubjectID] [int] NULL,
	[StudentNumber] [varchar](50) NULL,
	[Assignment1] [float] NULL,
	[Assignment2] [float] NULL,
	[ProgressTest1] [float] NULL,
	[ProgressTest2] [float] NULL,
	[FinalExam] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 7/16/2022 10:08:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[id] [int] NOT NULL,
	[title] [nvarchar](500) NULL,
	[detail] [ntext] NULL,
	[author] [nvarchar](100) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/16/2022 10:08:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[r_id] [int] NOT NULL,
	[r_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 7/16/2022 10:08:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[SemesterID] [int] NOT NULL,
	[SemesterName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SemesterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialized]    Script Date: 7/16/2022 10:08:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialized](
	[SpecializedID] [int] NOT NULL,
	[SpecializedName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SpecializedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjectstudy]    Script Date: 7/16/2022 10:08:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjectstudy](
	[SubjectID] [int] NOT NULL,
	[SubjectName] [varchar](50) NULL,
	[SemesterID] [int] NULL,
	[SpecializedID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Email], [Pass], [r_id]) VALUES (N'chichi', N'123123', 1)
INSERT [dbo].[Account] ([Email], [Pass], [r_id]) VALUES (N'chiok@gmail.com', N'123123', 3)
INSERT [dbo].[Account] ([Email], [Pass], [r_id]) VALUES (N'ok@gmail.com', N'123123', 1)
INSERT [dbo].[Account] ([Email], [Pass], [r_id]) VALUES (N'tkokoi@gmail.com', N'123123', 1)
GO
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (1, N'SE1612')
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (2, N'SE1611')
GO
INSERT [dbo].[Information] ([StudentNumber], [Name], [RollNumber], [ClassID], [SpecializedID], [birthdate], [Email], [Phone], [Address], [images]) VALUES (N'1', N'Tho', N'1', 1, 1, CAST(N'1999-11-11' AS Date), N'tkokoi@gmail.com', 11111111, N'2', N'https://cdn-icons-png.flaticon.com/512/67/67902.png?w=740&t=st=1657970320~exp=1657970920~hmac=6e4b9a202cbefa6b716f6242ca9ed214bd10526c8d91d76ca3fe656c5e2bac4d')
INSERT [dbo].[Information] ([StudentNumber], [Name], [RollNumber], [ClassID], [SpecializedID], [birthdate], [Email], [Phone], [Address], [images]) VALUES (N'2', N'okla', N'1', 1, 1, CAST(N'2022-05-09' AS Date), N'ok@gmail.com', 369865783, N'1', N'https://cdn-icons-png.flaticon.com/512/67/67902.png?w=740&t=st=1657970320~exp=1657970920~hmac=6e4b9a202cbefa6b716f6242ca9ed214bd10526c8d91d76ca3fe656c5e2bac4d')
GO
INSERT [dbo].[MAS] ([SubjectID], [StudentNumber], [Assignment1], [Assignment2], [ProgressTest1], [ProgressTest2], [FinalExam]) VALUES (1, N'1', 1, 1, 1, 1, 1)
INSERT [dbo].[MAS] ([SubjectID], [StudentNumber], [Assignment1], [Assignment2], [ProgressTest1], [ProgressTest2], [FinalExam]) VALUES (1, N'2', 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Role] ([r_id], [r_name]) VALUES (1, N'Student')
INSERT [dbo].[Role] ([r_id], [r_name]) VALUES (2, N'Manager')
INSERT [dbo].[Role] ([r_id], [r_name]) VALUES (3, N'Tearcher')
GO
INSERT [dbo].[Semester] ([SemesterID], [SemesterName]) VALUES (1, N'SUMMER2022')
INSERT [dbo].[Semester] ([SemesterID], [SemesterName]) VALUES (2, N'SPRING2022')
INSERT [dbo].[Semester] ([SemesterID], [SemesterName]) VALUES (3, N'FALL2022')
GO
INSERT [dbo].[Specialized] ([SpecializedID], [SpecializedName]) VALUES (1, N'abc')
INSERT [dbo].[Specialized] ([SpecializedID], [SpecializedName]) VALUES (2, N'abc')
GO
INSERT [dbo].[Subjectstudy] ([SubjectID], [SubjectName], [SemesterID], [SpecializedID]) VALUES (1, N'SWD392', 3, 1)
INSERT [dbo].[Subjectstudy] ([SubjectID], [SubjectName], [SemesterID], [SpecializedID]) VALUES (2, N'MAS392', 2, 1)
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([r_id])
REFERENCES [dbo].[Role] ([r_id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Information]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Information]  WITH CHECK ADD  CONSTRAINT [FK__Informati__Email__5535A963] FOREIGN KEY([Email])
REFERENCES [dbo].[Account] ([Email])
GO
ALTER TABLE [dbo].[Information] CHECK CONSTRAINT [FK__Informati__Email__5535A963]
GO
ALTER TABLE [dbo].[Information]  WITH CHECK ADD FOREIGN KEY([SpecializedID])
REFERENCES [dbo].[Specialized] ([SpecializedID])
GO
ALTER TABLE [dbo].[MAS]  WITH CHECK ADD FOREIGN KEY([StudentNumber])
REFERENCES [dbo].[Information] ([StudentNumber])
GO
ALTER TABLE [dbo].[MAS]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjectstudy] ([SubjectID])
GO
ALTER TABLE [dbo].[Subjectstudy]  WITH CHECK ADD FOREIGN KEY([SemesterID])
REFERENCES [dbo].[Semester] ([SemesterID])
GO
ALTER TABLE [dbo].[Subjectstudy]  WITH CHECK ADD FOREIGN KEY([SpecializedID])
REFERENCES [dbo].[Specialized] ([SpecializedID])
GO
