USE [Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Email] [varchar](50) NOT NULL,
	[Pass] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[banner]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[jobid] [int] NULL,
	[statusid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 7/12/2022 6:17:45 PM ******/
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
/****** Object:  Table [dbo].[cv]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cv](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NULL,
	[fullname] [varchar](100) NULL,
	[dob] [date] NULL,
	[gender] [bit] NULL,
	[locationid] [int] NULL,
	[phone] [varchar](20) NULL,
	[contact] [varchar](200) NULL,
	[educationid] [int] NULL,
	[school] [varchar](100) NULL,
	[experience] [varchar](500) NULL,
	[image] [varchar](200) NULL,
	[statusid] [int] NULL,
	[jobid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[education]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[education](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NULL,
	[type] [int] NULL,
	[amount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[company] [varchar](150) NULL,
	[website] [varchar](200) NULL,
	[address] [varchar](150) NULL,
	[salary] [float] NULL,
	[description] [varchar](500) NULL,
	[requirement] [varchar](500) NULL,
	[time] [date] NULL,
	[email] [varchar](150) NULL,
	[phone] [varchar](50) NULL,
	[image] [varchar](200) NULL,
	[username] [varchar](100) NULL,
	[locationid] [int] NULL,
	[majorid] [int] NULL,
	[jobtypeid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobtype]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobtype](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[location]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[major]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[major](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAS]    Script Date: 7/12/2022 6:17:45 PM ******/
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
/****** Object:  Table [dbo].[role]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 7/12/2022 6:17:45 PM ******/
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
/****** Object:  Table [dbo].[Specialized]    Script Date: 7/12/2022 6:17:45 PM ******/
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
/****** Object:  Table [dbo].[status]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentInformation]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentInformation](
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
/****** Object:  Table [dbo].[Subjectstudy]    Script Date: 7/12/2022 6:17:45 PM ******/
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
/****** Object:  Table [dbo].[user]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[username] [varchar](100) NOT NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](150) NULL,
	[fullname] [varchar](100) NULL,
	[dob] [date] NULL,
	[gender] [bit] NULL,
	[address] [varchar](200) NULL,
	[phone] [varchar](20) NULL,
	[image] [varchar](200) NULL,
	[roleid] [int] NULL,
	[locationid] [int] NULL,
	[majorid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wallet]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wallet](
	[username] [varchar](100) NULL,
	[balance] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wishlist]    Script Date: 7/12/2022 6:17:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wishlist](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NULL,
	[jobid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Email], [Pass]) VALUES (N'tkokoi@gmail.com', N'123123')
GO
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (1, N'toan')
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (2, N'anh')
GO
INSERT [dbo].[education] ([id], [name]) VALUES (1, N'1')
INSERT [dbo].[education] ([id], [name]) VALUES (2, N'2')
INSERT [dbo].[education] ([id], [name]) VALUES (3, N'3')
GO
INSERT [dbo].[jobtype] ([id], [name]) VALUES (1, N'1')
INSERT [dbo].[jobtype] ([id], [name]) VALUES (2, N'2')
GO
INSERT [dbo].[location] ([id], [name]) VALUES (1, N'1')
INSERT [dbo].[location] ([id], [name]) VALUES (2, N'2')
GO
INSERT [dbo].[major] ([id], [name]) VALUES (1, N'1')
INSERT [dbo].[major] ([id], [name]) VALUES (2, N'2')
GO
INSERT [dbo].[role] ([id], [name]) VALUES (1, N'1')
INSERT [dbo].[role] ([id], [name]) VALUES (2, N'2')
INSERT [dbo].[role] ([id], [name]) VALUES (3, N'3')
GO
INSERT [dbo].[Semester] ([SemesterID], [SemesterName]) VALUES (1, N'1')
GO
INSERT [dbo].[Specialized] ([SpecializedID], [SpecializedName]) VALUES (1, N'1')
GO
INSERT [dbo].[status] ([id], [name]) VALUES (1, N'1')
INSERT [dbo].[status] ([id], [name]) VALUES (2, N'2')
INSERT [dbo].[status] ([id], [name]) VALUES (3, N'3')
GO
INSERT [dbo].[StudentInformation] ([StudentNumber], [Name], [RollNumber], [ClassID], [SpecializedID], [birthdate], [Email], [Phone], [Address], [images]) VALUES (N'1', N'Tho', N'1', 1, 1, CAST(N'2022-11-11' AS Date), N'tkokoi@gmail.com', 349019012, N'1', N'1')
GO
INSERT [dbo].[Subjectstudy] ([SubjectID], [SubjectName], [SemesterID], [SpecializedID]) VALUES (1, N'1', 1, 1)
GO
INSERT [dbo].[user] ([username], [password], [email], [fullname], [dob], [gender], [address], [phone], [image], [roleid], [locationid], [majorid]) VALUES (N'1', N'1', N'1', N'1', CAST(N'2022-12-12' AS Date), 1, N'1', N'1', N'1', 1, 1, 1)
GO
INSERT [dbo].[Wallet] ([username], [balance]) VALUES (N'1', 1)
GO
ALTER TABLE [dbo].[banner]  WITH CHECK ADD FOREIGN KEY([jobid])
REFERENCES [dbo].[job] ([id])
GO
ALTER TABLE [dbo].[banner]  WITH CHECK ADD FOREIGN KEY([jobid])
REFERENCES [dbo].[job] ([id])
GO
ALTER TABLE [dbo].[banner]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[banner]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[cv]  WITH CHECK ADD FOREIGN KEY([educationid])
REFERENCES [dbo].[education] ([id])
GO
ALTER TABLE [dbo].[cv]  WITH CHECK ADD FOREIGN KEY([educationid])
REFERENCES [dbo].[education] ([id])
GO
ALTER TABLE [dbo].[cv]  WITH CHECK ADD FOREIGN KEY([jobid])
REFERENCES [dbo].[job] ([id])
GO
ALTER TABLE [dbo].[cv]  WITH CHECK ADD FOREIGN KEY([jobid])
REFERENCES [dbo].[job] ([id])
GO
ALTER TABLE [dbo].[cv]  WITH CHECK ADD FOREIGN KEY([locationid])
REFERENCES [dbo].[location] ([id])
GO
ALTER TABLE [dbo].[cv]  WITH CHECK ADD FOREIGN KEY([locationid])
REFERENCES [dbo].[location] ([id])
GO
ALTER TABLE [dbo].[cv]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[cv]  WITH CHECK ADD FOREIGN KEY([statusid])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[cv]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[cv]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([jobtypeid])
REFERENCES [dbo].[jobtype] ([id])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([jobtypeid])
REFERENCES [dbo].[jobtype] ([id])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([locationid])
REFERENCES [dbo].[location] ([id])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([locationid])
REFERENCES [dbo].[location] ([id])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([majorid])
REFERENCES [dbo].[major] ([id])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([majorid])
REFERENCES [dbo].[major] ([id])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[job]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[MAS]  WITH CHECK ADD FOREIGN KEY([StudentNumber])
REFERENCES [dbo].[StudentInformation] ([StudentNumber])
GO
ALTER TABLE [dbo].[MAS]  WITH CHECK ADD FOREIGN KEY([StudentNumber])
REFERENCES [dbo].[StudentInformation] ([StudentNumber])
GO
ALTER TABLE [dbo].[MAS]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjectstudy] ([SubjectID])
GO
ALTER TABLE [dbo].[MAS]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjectstudy] ([SubjectID])
GO
ALTER TABLE [dbo].[StudentInformation]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[StudentInformation]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[StudentInformation]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[Account] ([Email])
GO
ALTER TABLE [dbo].[StudentInformation]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[Account] ([Email])
GO
ALTER TABLE [dbo].[StudentInformation]  WITH CHECK ADD FOREIGN KEY([SpecializedID])
REFERENCES [dbo].[Specialized] ([SpecializedID])
GO
ALTER TABLE [dbo].[StudentInformation]  WITH CHECK ADD FOREIGN KEY([SpecializedID])
REFERENCES [dbo].[Specialized] ([SpecializedID])
GO
ALTER TABLE [dbo].[Subjectstudy]  WITH CHECK ADD FOREIGN KEY([SemesterID])
REFERENCES [dbo].[Semester] ([SemesterID])
GO
ALTER TABLE [dbo].[Subjectstudy]  WITH CHECK ADD FOREIGN KEY([SemesterID])
REFERENCES [dbo].[Semester] ([SemesterID])
GO
ALTER TABLE [dbo].[Subjectstudy]  WITH CHECK ADD FOREIGN KEY([SpecializedID])
REFERENCES [dbo].[Specialized] ([SpecializedID])
GO
ALTER TABLE [dbo].[Subjectstudy]  WITH CHECK ADD FOREIGN KEY([SpecializedID])
REFERENCES [dbo].[Specialized] ([SpecializedID])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([locationid])
REFERENCES [dbo].[location] ([id])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([locationid])
REFERENCES [dbo].[location] ([id])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([majorid])
REFERENCES [dbo].[major] ([id])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([majorid])
REFERENCES [dbo].[major] ([id])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([roleid])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([roleid])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[Wallet]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[Wallet]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[wishlist]  WITH CHECK ADD FOREIGN KEY([jobid])
REFERENCES [dbo].[job] ([id])
GO
ALTER TABLE [dbo].[wishlist]  WITH CHECK ADD FOREIGN KEY([jobid])
REFERENCES [dbo].[job] ([id])
GO
ALTER TABLE [dbo].[wishlist]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[wishlist]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
