USE [RandomExamGenerator]
GO
DELETE FROM [dbo].[Department];
GO
DBCC CHECKIDENT ('[dbo].[Department]', RESEED, 0);
GO
INSERT [dbo].[Department] ([Name], [InstructorManagerID]) VALUES (N'SD', NULL)
GO
INSERT [dbo].[Department] ([Name], [InstructorManagerID]) VALUES (N'Java', NULL)
GO
INSERT [dbo].[Department] ([Name], [InstructorManagerID]) VALUES (N'Game Development', NULL)
GO
INSERT [dbo].[Department] ([Name], [InstructorManagerID]) VALUES (N'English', NULL)
GO
INSERT [dbo].[Department] ([Name], [InstructorManagerID]) VALUES (N'Soft Skills', NULL)
GO
INSERT [dbo].[Department] ([Name], [InstructorManagerID]) VALUES (N'Artistic Design', NULL)
GO
INSERT [dbo].[Department] ([Name], [InstructorManagerID]) VALUES (N'Embedded Systems', NULL)
GO
INSERT [dbo].[Department] ([Name], [InstructorManagerID]) VALUES (N'IOT', NULL)
GO
INSERT [dbo].[Department] ([Name], [InstructorManagerID]) VALUES (N'AI', NULL)
GO
INSERT [dbo].[Department] ([Name], [InstructorManagerID]) VALUES (N'Data', NULL)
GO
INSERT [dbo].[Department] ([Name], [InstructorManagerID]) VALUES (N'Open Source', NULL)
GO
SELECT * FROM [dbo].[Department];
GO