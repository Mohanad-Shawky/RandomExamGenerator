USE [RandomExamGenerator]
GO
SET IDENTITY_INSERT [dbo].[Course] ON 
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (1, N'Client Side Technology')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (2, N'Operating Systems')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (3, N'Database Systems')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (4, N'Networks')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (5, N'C Programming')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (6, N'Object Oriented Programming')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (7, N'XML')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (8, N'Software Engineering')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (9, N'Advanced SQL')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (10, N'Data Structures and Algorithms')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (11, N'Unified Modeling Language (UML)')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (12, N'Agile')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (13, N'C#')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (14, N'Java')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (15, N'Design Patterns')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (16, N'ASP .NET Core MVC')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (17, N'Machine Learning')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (18, N'Data Analysis')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (19, N'Data Mining Algorithms')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (20, N'First Order Logic')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (21, N'Abstract Algebra')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (22, N'Node JS')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (23, N'PHP Fundamentals')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (24, N'IOT Sensors')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (25, N'Arduino Fundamentals')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (26, N'Python Fundamentals')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (27, N'Photoshop Fundamentals')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (28, N'Painting Fundamentals')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (29, N'Unreal Enginge Fundamentals')
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (1, N'SD', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (2, N'Java', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (3, N'Game Development', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (4, N'English', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (5, N'Soft Skills', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (6, N'Artistic Design', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (7, N'Embedded Systems', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (8, N'IOT', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (9, N'AI', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (10, N'Data', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (11, N'Open Source', NULL)
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
INSERT [dbo].[EnrollsIn] ([StudentID], [CourseID], [CourseActive], [EnrollDate], [StartDate], [EndDate], [IsPassed], [IsCorrective]) VALUES (6, 1, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-10-01' AS Date), CAST(N'2023-10-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[EnrollsIn] ([StudentID], [CourseID], [CourseActive], [EnrollDate], [StartDate], [EndDate], [IsPassed], [IsCorrective]) VALUES (6, 2, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-08-01' AS Date), CAST(N'2023-08-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[EnrollsIn] ([StudentID], [CourseID], [CourseActive], [EnrollDate], [StartDate], [EndDate], [IsPassed], [IsCorrective]) VALUES (7, 1, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-10-01' AS Date), CAST(N'2023-10-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[EnrollsIn] ([StudentID], [CourseID], [CourseActive], [EnrollDate], [StartDate], [EndDate], [IsPassed], [IsCorrective]) VALUES (7, 2, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-08-01' AS Date), CAST(N'2023-08-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[Teaches] ([CourseID], [InstructorID], [StartDate], [EndDate]) VALUES (1, 1, CAST(N'2023-10-01' AS Date), CAST(N'2023-10-20' AS Date))
GO
INSERT [dbo].[Teaches] ([CourseID], [InstructorID], [StartDate], [EndDate]) VALUES (1, 2, CAST(N'2023-10-01' AS Date), CAST(N'2023-10-20' AS Date))
GO
INSERT [dbo].[Teaches] ([CourseID], [InstructorID], [StartDate], [EndDate]) VALUES (2, 1, CAST(N'2023-08-01' AS Date), CAST(N'2023-08-20' AS Date))
GO
INSERT [dbo].[Teaches] ([CourseID], [InstructorID], [StartDate], [EndDate]) VALUES (2, 17, CAST(N'2023-08-01' AS Date), CAST(N'2023-08-20' AS Date))
GO
INSERT [dbo].[Teaches] ([CourseID], [InstructorID], [StartDate], [EndDate]) VALUES (6, 2, CAST(N'2023-10-01' AS Date), NULL)
GO
