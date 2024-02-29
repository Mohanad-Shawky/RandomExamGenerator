USE [RandomExamGenerator]
GO
/****** Object:  UserDefinedFunction [dbo].[ifTeach]    Script Date: 2/29/2024 5:15:55 PM ******/
DROP FUNCTION IF EXISTS [dbo].[ifTeach]
GO
/****** Object:  UserDefinedFunction [dbo].[ifEnroll]    Script Date: 2/29/2024 5:15:55 PM ******/
DROP FUNCTION IF EXISTS [dbo].[ifEnroll]
GO
/****** Object:  UserDefinedFunction [dbo].[FnS_SHA256NVARCHAR]    Script Date: 2/29/2024 5:15:55 PM ******/
DROP FUNCTION IF EXISTS [dbo].[FnS_SHA256NVARCHAR]
GO
/****** Object:  UserDefinedFunction [dbo].[checkTimeConflict]    Script Date: 2/29/2024 5:15:55 PM ******/
DROP FUNCTION IF EXISTS [dbo].[checkTimeConflict]
GO
/****** Object:  UserDefinedFunction [dbo].[checkTimeConflict]    Script Date: 2/29/2024 5:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create FUNCTION [dbo].[checkTimeConflict](@studId INT, @CourseId INT,@from datetime,@to datetime)
RETURNS BIT
AS
BEGIN                     
    RETURN (SELECT CASE WHEN NOT EXISTS(SELECT * FROM Exam
	                                    WHERE (CourseID != @CourseId and StudentID = @studId and ((ScheduledTime <= @to) and (DATEADD(SECOND, TotalTime, ScheduledTime) >= @from)))
										)THEN 1 ELSE 0 END);
END
GO
/****** Object:  UserDefinedFunction [dbo].[FnS_SHA256NVARCHAR]    Script Date: 2/29/2024 5:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Mohanad-Shawky
-- Create date: 28/01/2024
-- Description:	Returns the NVARCHAR(64) representing the SHA256 of the input
-- =============================================
CREATE FUNCTION [dbo].[FnS_SHA256NVARCHAR] 
(
	@message NVARCHAR(MAX)
)
RETURNS NVARCHAR(64)
AS
BEGIN

	DECLARE @Result NVARCHAR(64)

	SELECT @Result = CONVERT(NVARCHAR(64),HASHBYTES('SHA2_256',@message),2)

	RETURN @Result

END
GO
/****** Object:  UserDefinedFunction [dbo].[ifEnroll]    Script Date: 2/29/2024 5:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ifEnroll](@studId INT, @CourseId INT)
RETURNS BIT
AS
BEGIN 
    RETURN (SELECT CASE WHEN EXISTS(SELECT * FROM EnrollsIn WHERE StudentID = @studId AND CourseID = @CourseId) THEN 1 ELSE 0 END);
END;
GO
/****** Object:  UserDefinedFunction [dbo].[ifTeach]    Script Date: 2/29/2024 5:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ifTeach](@instId INT, @CourseId INT)
RETURNS BIT
AS
BEGIN 
    RETURN (SELECT CASE WHEN EXISTS(SELECT * FROM Teaches WHERE InstructorID = @instId AND CourseID = @CourseId) THEN 1 ELSE 0 END);
END;
GO
