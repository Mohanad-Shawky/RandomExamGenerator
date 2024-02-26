USE [RandomExamGenerator]
GO

/****** Object:  Trigger [TIOD_PreventDeletionOfTakenExamQuestions]    Script Date: 1/29/2024 6:49:51 PM ******/
DROP TRIGGER if Exists [dbo].[TIOD_PreventDeletionOfTakenExamQuestions]
GO

/****** Object:  Trigger [dbo].[TIOD_PreventDeletionOfTakenExamQuestions]    Script Date: 1/29/2024 6:49:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Mohanad-Shawky
-- Create date: 29/01/2024
-- Description:	Prevents the Deletion of Exam Questions if the Exam is finished
-- =============================================
CREATE TRIGGER [dbo].[TIOD_PreventDeletionOfTakenExamQuestions]
   ON  [dbo].[ExamQuestions] 
   INSTEAD OF DELETE
AS 
BEGIN

	SET NOCOUNT ON;

    DECLARE @Exams TABLE 
	(
	[ID] INT NOT NULL,
	[TotalPoints] INT NULL,
	[TotalTime] INT NULL,
	[ScheduledTime] DATETIME NOT NULL,
	[SuccessPercent] FLOAT NOT NULL,
	[InstructorID] INT NOT NULL,
	[CourseID] INT NOT NULL,
	[StudentID] INT NOT NULL,
	[StudentScore] FLOAT NULL,
	[StudentTimeToSolve] INT NULL,
	[IsStudentPassed] BIT NULL
	)

	INSERT INTO @Exams
	SELECT * 
	FROM [dbo].[Exam] AS e
	WHERE e.[ID] IN (SELECT ExamID FROM deleted)

	IF EXISTS (SELECT * 
				FROM @Exams 
				WHERE 
					StudentScore IS NOT NULL OR 
					StudentTimeToSolve IS NOT NULL OR 
					IsStudentPassed IS NOT NULL
				)
	BEGIN
		-- RAISERROR with severity 11-19 will cause execution to
		-- jump to the CATCH block.
		-- RAISERROR with severity 20-25 will cause Database connection to close 
		-- after recieving error message as it is considered fatal error
		-- the error is logged in the error and application logs.
		RAISERROR (
				'Cannot delete Questions from taken Exams. Set the student data to null to delete the questions.', -- Message text.
				16, -- Severity.
				1 -- State.
				);
		ROLLBACK TRANSACTION;
	END

	ELSE
	BEGIN
		/*DELETE eq 
			FROM
				[dbo].[ExamQuestions] AS eq 
				INNER JOIN deleted AS d 
				ON eq.ExamID = d.ExamID AND eq.QuestionID = d.QuestionID;*/

		/*DELETE FROM [dbo].[ExamQuestions]
		FROM [dbo].[ExamQuestions] AS eq 
		INNER JOIN deleted d 
		ON eq.ExamID = d.ExamID AND eq.QuestionID = d.QuestionID;*/

		DELETE 
		FROM [dbo].[ExamQuestions] 
			FROM deleted;
	END

END
GO

ALTER TABLE [dbo].[ExamQuestions] ENABLE TRIGGER [TIOD_PreventDeletionOfTakenExamQuestions]
GO


