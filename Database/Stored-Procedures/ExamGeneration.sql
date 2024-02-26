Use RandomExamGenerator


GO
IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID(N'[dbo].[ExamGeneration]'))
DROP Proc [dbo].ExamGeneration;

GO
Create PROCEDURE ExamGeneration
	       (@crsId int,
			@studID int,
			@instID int,
			@totalTime int,
			@scheduledTime datetime,
			@successPrecent float,
			@easyNo int,
			@mediamNo int,
			@hardNo int)

   As 
   Begin
        DECLARE @ifSucess bit=1
        Begin Try
			Insert INTO Exam VALUES (null,@totalTime,@scheduledTime,@SuccessPrecent,@instID,@crsId,@studID,null,null,null)
			declare @examId INT= IDENT_CURRENT('Exam')


			INSERT INTO ExamQuestions
			SELECT @examId,ID
			FROM 
			(
				SELECT ID,Difficulty,ROW_NUMBER() 
				OVER (PARTITION BY Difficulty ORDER BY NEWID()) AS rowNum
				FROM Question
				WHERE CourseID=@crsId
			) As Questions
			WHERE (Difficulty = 'easy' AND rowNum <= @easyNo) OR
				  (Difficulty = 'medium' AND rowNum <= @mediamNo) OR
				  (Difficulty = 'hard' AND rowNum <= @hardNo) 
	   END TRY

	   BEGIN CATCH
	      SET @ifSucess = 0
	   END CATCH

	   SELECT @ifSucess As ifSuccess
    END
GO



--->Test Casess

GO
DELETE FROM ExamQuestions
GO
DELETE FROM Exam
GO


go
EXEC ExamGeneration 2,6,1,3600,'2024-01-30 02:00:00',1,5,2,2-->RUN
go
EXEC ExamGeneration 2,7,5,3600,'2024-01-30 02:00:00',1,1,2,2-->0 check inst
go
EXEC ExamGeneration 2,9,1,3600,'2024-01-30 12:00:00',1,1,1,1-->not runnn
go
EXEC ExamGeneration 2,10,1,3600,'2024-01-30 12:00:00',1,1,1,1-->0 check the studid not exist
go
EXEC ExamGeneration 1,6,1,3600,'2024-01-30 12:00:00',1,1,1,1-->Check Time Not Make Confilict
go
EXEC ExamGeneration 2,7,1,3600,'2024-01-30 02:00:00',1,1,2,2-->1
go
EXEC ExamGeneration 1,7,1,3600,'2024-01-30 02:30:00',1,1,2,2-->Exist Conflicit From Previous EXample
go