
Use RandomExamGenerator

GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ifTeach]') AND type IN (N'FN', N'IF', N'TF'))
DROP FUNCTION dbo.ifTeach;

GO
CREATE FUNCTION ifTeach(@instId INT, @CourseId INT)
RETURNS BIT
AS
BEGIN 
    RETURN (SELECT CASE WHEN EXISTS(SELECT * FROM Teaches WHERE InstructorID = @instId AND CourseID = @CourseId) THEN 1 ELSE 0 END);
END;