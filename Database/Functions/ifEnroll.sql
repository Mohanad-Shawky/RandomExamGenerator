Use RandomExamGenerator


GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ifEnroll]') AND type IN (N'FN', N'IF', N'TF'))
DROP FUNCTION dbo.ifEnroll;

GO
CREATE FUNCTION ifEnroll(@studId INT, @CourseId INT)
RETURNS BIT
AS
BEGIN 
    RETURN (SELECT CASE WHEN EXISTS(SELECT * FROM EnrollsIn WHERE StudentID = @studId AND CourseID = @CourseId) THEN 1 ELSE 0 END);
END;
GO