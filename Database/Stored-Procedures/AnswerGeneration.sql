

use RandomExamGenerator
GO
create TYPE StudentAnswer AS TABLE (QuestionID INT, SAnswer INT);
GO
create procedure SP_CreateStudentAnswer
    @StudentAnswerList StudentAnswer READONLY,
    @StudentID INT,
    @ExamID INT
AS
begin
    declare @ModelAnswer INT, @QuestionID INT , @SAnswer INT , @CountForQuestionID INT;

	declare cursor_StudentAnswer cursor for
    select QuestionID, SAnswer from @StudentAnswerList;

    open cursor_StudentAnswer;

    fetch cursor_StudentAnswer into @QuestionID, @SAnswer;

    while @@fetch_STATUS = 0
    BEGIN

        select @CountForQuestionID = COUNT(QuestionID)
        from Choice
        where QuestionID = @QuestionID;

        IF @CountForQuestionID < @SAnswer or @SAnswer < 1
        BEGIN
            CLOSE cursor_StudentAnswer;
            DEALLOCATE cursor_StudentAnswer;
            Raiserror('Your Choice Not Valid', 16, 1);
            RETURN;
        END

        fetch cursor_StudentAnswer INTO @QuestionID, @SAnswer;
    END

    CLOSE cursor_StudentAnswer;
    DEALLOCATE cursor_StudentAnswer;

    select Q.ID AS QuestionID , Q.ModelAnswer into #ModelAnswers
    from
        Exam AS E
        inner join ExamQuestions AS EQ ON E.ID = EQ.ExamID
        inner join Question AS Q ON Q.ID = EQ.QuestionID
    where E.ID = @ExamID;


    insert into Answer (ExamID, StudentID, QuestionID, StudentAnswer, ModelAnswer, Grade)
    select
        @ExamID,
        @StudentID,
        SA.QuestionID,
        SA.SAnswer,
        MA.ModelAnswer,
        case
            when SA.SAnswer = MA.ModelAnswer then Q.Points
            else 0
        end AS Grade
    from
        @StudentAnswerList AS SA
        inner join #ModelAnswers AS MA ON SA.QuestionID = MA.QuestionID
        inner join Question AS Q ON Q.ID = SA.QuestionID;

    drop table #ModelAnswers;  

end;
