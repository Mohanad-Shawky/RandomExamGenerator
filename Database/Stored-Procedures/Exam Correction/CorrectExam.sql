USE [RandomExamGenerator]
GO

/****** Object:  StoredProcedure [dbo].[CorrectExam]    Script Date: 2/3/2024 9:24:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE CorrectExam
    @ExamID INT,
	@StudentID INT
AS
BEGIN
   DECLARE @TotalPoints INT
        DECLARE @StudentScore FLOAT
        DECLARE @StudentPercent FLOAT

		IF NOT EXISTS (SELECT 1 FROM Exam WHERE ID = @ExamID)
		BEGIN
		;THROW 51000, 'Invalid ExamID provided.', 1;
		END
		IF NOT EXISTS (SELECT 1 FROM Student WHERE ID = @StudentID)
		BEGIN
		;THROW 51000, 'Invalid StudentID provided.', 1;
		END
        -- Calculate TotalPoints
        SELECT @TotalPoints = ISNULL(SUM(A.Grade), 0)
        FROM Answer A
        WHERE A.ExamID = @ExamID AND A.StudentID=@StudentID

        -- Calculate StudentScore
        SELECT @StudentScore = ISNULL(SUM(CASE WHEN A.ModelAnswer = A.StudentAnswer THEN Q.Points ELSE 0 END), 0)
        FROM Answer A
        JOIN Question Q ON A.QuestionID = Q.ID
        WHERE A.ExamID = @ExamID AND A.StudentID=@StudentID;

        -- Calculate StudentPercent
        SELECT @StudentPercent = ISNULL((@StudentScore / @TotalPoints), 0);

        -- Update Exam table
        UPDATE Exam
        SET StudentScore = @StudentScore,
			TotalPoints = @TotalPoints,
            IsStudentPassed = CASE WHEN @StudentPercent >= SuccessPercent THEN 1 ELSE 0 END
        WHERE ID = @ExamID AND StudentID=@StudentID ;

        -- Update EnrollsIn table
        UPDATE EN
        SET IsPassed = CASE WHEN @StudentPercent >= SuccessPercent THEN 1 ELSE 0 END,
            IsCorrective = CASE WHEN @StudentPercent >= SuccessPercent THEN 0 ELSE 1 END
        FROM EnrollsIn EN
        JOIN Exam E ON E.CourseID = EN.CourseID
        WHERE E.ID = @ExamID AND EN.StudentID=@StudentID;

		-- Return Modified Exam ROW
		SELECT * 
		FROM Exam
        WHERE ID = @ExamID AND StudentID=@StudentID ;

	
END;
GO


