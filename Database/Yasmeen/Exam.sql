

----------------------------- Exam ------------------------------- 
--- create , insert       - ExamGeneration   - Already Exist
--- Update 
--- Delete
--- select
drop proc IF EXISTS SP_UpdateExam
GO
create proc SP_UpdateExam
    @ExamID int,
    @TotalTime int,
    @ScheduledTime datetime,
    @SuccessPercent float,
    @InstructorID int,
    @CourseID int,
    @StudentID int
AS
begin
    IF EXISTS (select 1 from Course where ID = @CourseID) and
       EXISTS (select 1 from Student where ID = @StudentID) and
	   EXISTS (select 1 from Instructor where ID = @InstructorID)
    begin
        Update Exam 
        SET TotalTime = @TotalTime,
            ScheduledTime = @ScheduledTime,
            SuccessPercent = @SuccessPercent,
            InstructorID = @InstructorID,
            CourseID = @CourseID,
            StudentID = @StudentID
        where ID = @ExamID;
    end
    else
    begin
        raiserror ('CourseID or StudentID does not Exist' , 16 , 1);
    end
end;


GO

drop proc IF EXISTS SP_DeleteExam
GO
create proc SP_DeleteExam
    @ExamID int
AS
begin
    begin try
        declare @StudentScore float, @StudentTimeToSolve int, @IsPassed bit;

        select @StudentScore = StudentScore, @StudentTimeToSolve = StudentTimeToSolve, @IsPassed = IsStudentPassed 
        from Exam where ID = @ExamID;

        IF (@StudentScore IS NULL AND @StudentTimeToSolve IS NULL AND @IsPassed IS NULL)
        begin
            Delete from ExamQuestions where ExamID = @ExamID;
            Delete from Exam where ID = @ExamID;
        end
        else
        begin
            raiserror('You cannot Delete', 16, 1);
        end
    end try
    begin catch
       raiserror('You cannot Delete', 16, 1);
    end catch;
end;


GO


drop proc IF EXISTS SP_SelectExam
GO
create proc SP_SelectExam
    @ExamID int
as
begin
	IF EXISTS (select 1 from Exam where ID = @ExamID)
	begin
		select * from Exam where ID = @ExamID;
	end
   else
    begin
        raiserror ('CourseID or StudentID does not Exist' , 16 , 1);
    end
end;






