USE [RandomExamGenerator]
GO
/****** Object:  View [dbo].[CourseView]    Script Date: 2/29/2024 5:19:02 PM ******/
DROP VIEW IF EXISTS [dbo].[CourseView]
GO
/****** Object:  View [dbo].[CourseView]    Script Date: 2/29/2024 5:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [dbo].[CourseView] 
AS
SELECT C.Name , COUNT(S.StudentID) AS [StudentCount]
FROM Course C JOIN EnrollsIn S
ON C.ID = S.CourseID
GROUP BY C.Name;
GO
