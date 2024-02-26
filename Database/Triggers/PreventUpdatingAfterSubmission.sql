
-- the Student CAN NOT update & delete answers after Submission

alter trigger T_tr1
on StudentAnswer
instead of update as 
begin
    IF exists (
        select 1
        from inserted i
        join deleted d on i.ExamID = d.ExamID and i.StudentID = d.StudentID
        where i.ExamID is not null and i.StudentID is not null
    )
    begin
         RAISERROR ( 'Updating Not Allowed!', 16, 1) ;
    end;
end

alter trigger T_tr2
on StudentAnswer
instead of delete
as
begin
    if exists (
        select 1
        from deleted d
        where d.ExamID is not null and d.StudentID is not null
    )
    begin
        RAISERROR ('Deleting Not Allowed!', 16, 1) ;
    end;
end;

-- Testing--
update StudentAnswer set ModelAnswer = 7 where ExamID = 1 and StudentID = 1

delete from StudentAnswer where ExamID = 1 and StudentID = 1



-- after Submission

 create trigger T_ExamSubmission
  on StudentAnswer
  after Insert
  As 
  begin
  print 'Submission Is Successfull';
  end