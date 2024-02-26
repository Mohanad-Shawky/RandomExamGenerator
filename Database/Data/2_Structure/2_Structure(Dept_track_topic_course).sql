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
INSERT [dbo].[EnrollsIn] ([StudentID], [CourseID], [CourseActive], [EnrollDate], [StartDate], [EndDate], [IsPassed], [IsCorrective]) VALUES (6, 1, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-10-01' AS Date), CAST(N'2023-10-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[EnrollsIn] ([StudentID], [CourseID], [CourseActive], [EnrollDate], [StartDate], [EndDate], [IsPassed], [IsCorrective]) VALUES (6, 2, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-08-01' AS Date), CAST(N'2023-08-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[EnrollsIn] ([StudentID], [CourseID], [CourseActive], [EnrollDate], [StartDate], [EndDate], [IsPassed], [IsCorrective]) VALUES (7, 1, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-10-01' AS Date), CAST(N'2023-10-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[EnrollsIn] ([StudentID], [CourseID], [CourseActive], [EnrollDate], [StartDate], [EndDate], [IsPassed], [IsCorrective]) VALUES (7, 2, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-08-01' AS Date), CAST(N'2023-08-20' AS Date), NULL, NULL)
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
SET IDENTITY_INSERT [dbo].[Track] ON 
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (1, N'Professional Development Infused CRM', 1, NULL)
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (2, N'Software Architecht', 1, NULL)
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (3, N'Java Track', 2, NULL)
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (4, N'Game Development Track', 3, NULL)
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (5, N'2D Design', 6, NULL)
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (6, N'3D Design', 6, NULL)
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (7, N'Embedded Systems Development', 7, NULL)
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (8, N'IOT Track', 8, NULL)
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (9, N'AI Track', 9, NULL)
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (10, N'Data Management', 10, NULL)
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (11, N'Data Science', 10, NULL)
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (12, N'MERN Developemnt', 11, NULL)
GO
INSERT [dbo].[Track] ([ID], [Name], [DepartmentID], [InstructorSupervisor]) VALUES (14, N'PHP Development', 11, NULL)
GO
SET IDENTITY_INSERT [dbo].[Track] OFF
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
SET IDENTITY_INSERT [dbo].[Topic] ON 
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (1, 1, N'Markup Languagues')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (2, 1, N'Browser HTML Engine')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (3, 2, N'Systems Layers')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (4, 2, N'Memory Management')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (5, 2, N'Sceduling')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (6, 3, N'ERD')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (7, 3, N'Mapping')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (8, 3, N'SQL')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (9, 4, N'Network Topologies')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (10, 4, N'Network OSI Model')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (11, 4, N'Network Configuration')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (12, 5, N'Data Types in C')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (13, 5, N'I/O Operations')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (14, 5, N'Functional Programming')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (15, 5, N'Pointers in C')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (16, 5, N'Memory Stack and Heap')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (17, 6, N'Abstraction')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (18, 6, N'Encapsulation')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (19, 6, N'Inheritance')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (20, 6, N'Polymorphism')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (21, 7, N'XML Structure')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (23, 7, N'XML Schema')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (24, 7, N'XML Validation')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (25, 8, N'Software Development Life Cycle')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (26, 8, N'SDLC Process Models')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (27, 9, N'File Groups and Pages')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (28, 9, N'T-SQL Variables')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (29, 9, N'T-SQL Conditionals')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (30, 9, N'T-SQL Functions')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (31, 9, N'T-SQL Views')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (32, 9, N'T-SQL Stored Procedures')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (33, 9, N'T-SQL Indexers')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (34, 10, N'Stack Data Structure')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (35, 10, N'Queue Data Structure')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (36, 10, N'Linked List')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (37, 10, N'Bubble Sort')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (38, 10, N'Selection Sort')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (39, 10, N'Binary Search Tree')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (40, 10, N'Binary Search')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (41, 11, N'Activity Diagram')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (42, 11, N'Class Diagram')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (43, 11, N'Use Case Diagram')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (44, 12, N'SCRUM')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (45, 12, N'Lean')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (46, 13, N'C# Data Types')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (47, 13, N'C# OOP Features')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (48, 13, N'C# Generics')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (49, 13, N'C# Delegates')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (50, 13, N'C# Events')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (51, 6, N'DS')
GO
SET IDENTITY_INSERT [dbo].[Topic] OFF
GO
