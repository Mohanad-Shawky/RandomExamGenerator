USE [RandomExamGenerator]
GO
/****** Object:  User [Student]    Script Date: 1/28/2024 4:35:50 PM ******/
DROP USER IF EXISTS [Student]
GO
/****** Object:  User [Instructor]    Script Date: 1/28/2024 4:35:50 PM ******/
DROP USER IF EXISTS [Instructor]
GO
USE [master]
GO
/****** Object:  Login [Student]    Script Date: 1/28/2024 4:35:50 PM ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'Student')
DROP LOGIN [Student]
GO
/****** Object:  Login [Instructor]    Script Date: 1/28/2024 4:35:50 PM ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'Instructor')
DROP LOGIN [Instructor]
GO
/* For security reasons the login is created disabled. */
/****** Object:  Login [Instructor]    Script Date: 1/28/2024 4:35:50 PM ******/
CREATE LOGIN [Instructor] WITH PASSWORD=N'Instructor', DEFAULT_DATABASE=[RandomExamGenerator], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Instructor] DISABLE
GO
/* For security reasons the login is created disabled. */
/****** Object:  Login [Student]    Script Date: 1/28/2024 4:35:50 PM ******/
CREATE LOGIN [Student] WITH PASSWORD=N'Student', DEFAULT_DATABASE=[RandomExamGenerator], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Student] DISABLE
GO
USE [RandomExamGenerator]
GO
/****** Object:  User [Instructor]    Script Date: 1/28/2024 4:35:50 PM ******/
CREATE USER [Instructor] FOR LOGIN [Instructor] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Student]    Script Date: 1/28/2024 4:35:50 PM ******/
CREATE USER [Student] FOR LOGIN [Student] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Instructor]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Student]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Student]
GO
ALTER LOGIN [Instructor] ENABLE
GO
ALTER LOGIN [Student] ENABLE
GO