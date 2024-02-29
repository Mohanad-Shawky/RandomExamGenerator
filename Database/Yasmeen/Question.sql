

------------------------------ Question-------------------------------
--- create , Insert     Already Exist
--- update 
---- delete
---- select 

drop proc IF EXISTS SP_UpdateQuestion
GO
create proc SP_UpdateQuestion
    @QuestionID int,
    @Type nvarchar(20),
    @ModelAnswer int,
    @Difficulty nvarchar(20),
    @Header nvarchar(1000),
    @CourseID int,
    @Points int
AS
begin
    IF EXISTS (select 1 from Course where ID = @CourseID)
    begin
        update Question 
        SET Type = @Type,
            ModelAnswer = @ModelAnswer,
            Difficulty = @Difficulty,
            Header = @Header,
            CourseID = @CourseID,
            Points = @Points
        where ID = @QuestionID;
    end
    else
    begin
        raiserror ('CourseID does not Exist ' , 16 , 1);
    end
end;

GO


drop proc IF EXISTS SP_deleteQuestion
GO
create proc SP_deleteQuestion
    @QuestionID int
AS
begin
    IF NOT EXISTS (select 1 from Question WHERE ID = @QuestionID)
    begin
        raiserror('QuestionID does not exist', 16, 1);
    end

    begin try
        delete from Choice WHERE QuestionID = @QuestionID;

        declare @StudentScore float, @StudentTimeToSolve int, @IsPassed BIT, @ExamID int;
        select @StudentScore = StudentScore, @StudentTimeToSolve = StudentTimeToSolve, @IsPassed = IsStudentPassed 
        from Exam WHERE ID = @ExamID;

        IF (@StudentScore IS NULL and @StudentTimeToSolve IS NULL and @IsPassed IS NULL)
        begin
            delete from ExamQuestions WHERE ExamID = @ExamID;
            delete from Exam WHERE ID = @ExamID;
        end
        else
        begin
            raiserror('You cannot delete', 16, 1);
        end

        delete from TopicQuestions WHERE QuestionID = @QuestionID;
    end try
    begin catch
       raiserror('You cannot delete', 16, 1);
    end catch;
end;


GO

drop proc IF EXISTS SP_selectQuestion
GO
create proc SP_selectQuestion
@QuestionID int
as
begin
    IF EXISTS (select 1 from Question WHERE ID = @QuestionID)
    begin
	   select * from Question where ID = @QuestionID 
    end
	else
    begin
        raiserror ('QuestionID does not Exist' , 16 , 1);
    end
end;