USE [RandomExamGenerator]
GO

/****** Object:  Trigger [TIOD_PreventDeletionOfTakenExams]    Script Date: 1/29/2024 6:48:56 PM ******/
DROP TRIGGER IF EXISTS [dbo].[TIOD_PreventDeletionOfTakenExams]
GO

/****** Object:  Trigger [dbo].[TIOD_PreventDeletionOfTakenExams]    Script Date: 1/29/2024 6:48:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Mohanad-Shawky
-- Create date: 29/01/2024
-- Description:	Prevents the deletion of taken exams
-- =============================================
CREATE TRIGGER [dbo].[TIOD_PreventDeletionOfTakenExams] 
   ON  [dbo].[Exam] 
   INSTEAD OF DELETE
AS 
BEGIN
	SET NOCOUNT ON;

    IF EXISTS (SELECT * 
				FROM deleted 
				WHERE 
					[StudentScore] IS NOT NULL OR 
					[StudentTimeToSolve] IS NOT NULL OR 
					[IsStudentPassed] IS NOT NULL
				)
	BEGIN
		-- RAISERROR with severity 11-19 will cause execution to
		-- jump to the CATCH block.
		-- RAISERROR with severity 20-25 will cause Database connection to close 
		-- after recieving error message as it is considered fatal error
		-- the error is logged in the error and application logs.
		RAISERROR (
				'Cannot delete taken Exams. Set the student data to null to delete the exams.', -- Message text.
				16, -- Severity.
				2 -- State.
				);
		ROLLBACK TRANSACTION;
	END

	ELSE
	BEGIN

		/*DELETE eq 
			FROM
				[dbo].[ExamQuestions] AS eq 
				INNER JOIN deleted AS d 
				ON eq.ExamID = d.ID;
		DELETE e
			FROM
				[dbo].[Exam] AS e 
				INNER JOIN deleted AS d 
				ON e.ID = d.ID;*/

		/*DELETE FROM [dbo].[ExamQuestions]
		FROM [dbo].[ExamQuestions] AS eq 
		INNER JOIN deleted d 
		ON eq.ExamID = d.ID;

		DELETE FROM [dbo].[Exam]
		FROM [dbo].[Exam] AS e 
		INNER JOIN deleted d 
		ON e.[ID] = d.[ID];*/

		DELETE FROM [dbo].[ExamQuestions]
		FROM [dbo].[ExamQuestions] AS eq 
		INNER JOIN deleted d 
		ON eq.[ExamID] = d.[ID];

		DELETE 
		FROM [dbo].[Exam] 
			FROM deleted;
	END
END
GO

ALTER TABLE [dbo].[Exam] ENABLE TRIGGER [TIOD_PreventDeletionOfTakenExams]
GO


