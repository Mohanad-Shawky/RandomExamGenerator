USE [RandomExamGenerator]
GO
/****** Object:  UserDefinedTableType [dbo].[StudentAnswer]    Script Date: 2/29/2024 5:17:52 PM ******/
DROP TYPE IF EXISTS [dbo].[StudentAnswer]
GO
/****** Object:  UserDefinedTableType [dbo].[CourseIDList]    Script Date: 2/29/2024 5:17:52 PM ******/
DROP TYPE IF EXISTS [dbo].[CourseIDList]
GO
/****** Object:  UserDefinedTableType [dbo].[CourseIDList]    Script Date: 2/29/2024 5:17:52 PM ******/
CREATE TYPE [dbo].[CourseIDList] AS TABLE(
	[CourseID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[StudentAnswer]    Script Date: 2/29/2024 5:17:52 PM ******/
CREATE TYPE [dbo].[StudentAnswer] AS TABLE(
	[QuestionID] [int] NULL,
	[SAnswer] [int] NULL
)
GO
