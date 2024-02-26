use RandomExamGenerator
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkTimeConflict]') AND type IN (N'FN', N'IF', N'TF'))
DROP FUNCTION dbo.checkTimeConflict;


GO
Create FUNCTION checkTimeConflict(@studId INT, @CourseId INT,@from datetime,@to datetime)
RETURNS BIT
AS
BEGIN                     
    RETURN (SELECT CASE WHEN NOT EXISTS(SELECT * FROM Exam
	                                    WHERE (CourseID != @CourseId and StudentID = @studId and ((ScheduledTime <= @to) and (DATEADD(SECOND, TotalTime, ScheduledTime) >= @from)))
										)THEN 1 ELSE 0 END);
END
GO
