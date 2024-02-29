USE [RandomExamGenerator]
GO
/****** Object:  StoredProcedure [dbo].[CorrectExam]    Script Date: 2/29/2024 1:46:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER   PROCEDURE [dbo].[CorrectExam]
    @ExamID INT,
	@StudentID INT
AS
BEGIN
   DECLARE @TotalPoints INT
        DECLARE @StudentScore FLOAT
        DECLARE @StudentPercent FLOAT

		--select @TotalPoints = TotalPoints from Exam where ID = @ExamID

		IF NOT EXISTS (SELECT 1 FROM Exam WHERE ID = @ExamID)
		BEGIN
		;THROW 51000, 'Invalid ExamID provided.', 1;
		END
		IF NOT EXISTS (SELECT 1 FROM Student WHERE ID = @StudentID)
		BEGIN
		;THROW 51000, 'Invalid StudentID provided.', 1;
		END
        ---- Calculate Student Score
        SELECT @StudentScore = ISNULL(SUM(A.Grade), 0)
        FROM Answer A
        WHERE A.ExamID = @ExamID AND A.StudentID=@StudentID

         --Calculate Total Points
        SELECT @TotalPoints = Sum(Q.Points) 
		from Question Q inner join ExamQuestions E       
        on Q.ID = E.QuestionID
        and E.ExamID = @ExamID 

        -- Calculate StudentPercent
        SELECT @StudentPercent = (@StudentScore / @TotalPoints);

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
