Use RandomExamGenerator

GO
IF EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[UpdateExam]'))
DROP TRIGGER [dbo].UpdateExam;
GO

Create TRIGGER UpdateExam
ON Exam
for UPDATE
AS
BEGIN
     SET NOCOUNT ON;
     BEGIN TRAN     
	 IF UPDATE(ScheduledTime)
		 BEGIN 
			    if(NOT EXISTS( SELECT ScheduledTime
				               FROM inserted
				               WHERE (dbo.checkTimeConflict(StudentID, CourseID, ScheduledTime, DATEADD(SECOND, TotalTime, ScheduledTime)) =1)))
				    Begin rollback END;
		 END
	 ELSE 
	    rollback;
     COMMIT TRAN
END;
GO


----Test Case

Go
update Exam
set ScheduledTime='2024-01-30 02:40:00'
where ID=10
Go