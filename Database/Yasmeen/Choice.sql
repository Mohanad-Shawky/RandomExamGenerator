


---------------------------- Choices  --------------------------
--- Create       Already Exist
--- Update 
---- Delete
---- Select 

drop proc IF EXISTS SP_UpdateChoice
GO
create proc SP_UpdateChoice
    @QuestionID int,
    @OrderInQuestion int,
    @Body nvarchar(500),
    @IsAnswer bit
AS
begin
    IF EXISTS (select 1 from Question where ID = @QuestionID)
    begin
        update Choice 
        set Body = @Body,
            IsAnswer = @IsAnswer
        where QuestionID = @QuestionID AND OrderInQuestion = @OrderInQuestion;
    end
    else
    begin
        print 'QuestionID does not Exist';
    end
end;


GO

drop proc IF EXISTS SP_DeleteChoice
GO
create proc SP_DeleteChoice
    @QuestionID int,
    @OrderInQuestion int
as
begin
	IF EXISTS (select 1 from Choice WHERE QuestionID = @QuestionID AND OrderInQuestion = @OrderInQuestion)
	begin
		delete from Choice 
		where QuestionID = @QuestionID and OrderInQuestion = @OrderInQuestion;
	end
    else
    begin
        print 'QuestionID does not Exist';
    end
end;

GO

drop proc IF EXISTS SP_SelectChoice
GO
create proc SP_SelectChoice
    @QuestionID int,
    @OrderInQuestion int
as
begin
	IF EXISTS (select 1 from Choice WHERE QuestionID = @QuestionID AND OrderInQuestion = @OrderInQuestion)
	begin
	   select * from Choice 
		where QuestionID = @QuestionID and OrderInQuestion = @OrderInQuestion;
	end
	 else
    begin
        print 'QuestionID does not Exist';
    end
end;




