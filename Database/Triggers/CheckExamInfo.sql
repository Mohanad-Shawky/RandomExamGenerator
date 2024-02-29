Use RandomExamGenerator

GO
IF EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[CheckExamInfo]'))
DROP TRIGGER [dbo].[CheckExamInfo];
GO

CREATE TRIGGER CheckExamInfo
ON Exam
INSTEAD OF INSERT
AS
BEGIN
     BEGIN TRAN

					 INSERT INTO Exam (TotalPoints,TotalTime,ScheduledTime,SuccessPercent,InstructorID,CourseID,StudentID,StudentScore,StudentTimeToSolve,IsStudentPassed)
					 SELECT TotalPoints,TotalTime,ScheduledTime,SuccessPercent,InstructorID,CourseID,StudentID,StudentScore,StudentTimeToSolve,IsStudentPassed
					 FROM inserted 
                     where dbo.ifTeach(InstructorID,CourseID)=1  
				       and (dbo.ifEnroll(StudentID, CourseID))=1
				       and dbo.checkTimeConflict(StudentID, CourseID,ScheduledTime,DATEADD(SECOND, TotalTime, ScheduledTime))=1

			         IF(@@ROWCOUNT=0)
			            begin RAISERROR('EROOR EXIST!!!!',16, 1) end;
     COMMIT TRAN
END
