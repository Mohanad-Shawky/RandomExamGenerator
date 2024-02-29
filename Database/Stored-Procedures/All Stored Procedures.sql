USE [RandomExamGenerator]
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserAccountWithPassword]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateUserAccountWithPassword]
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserAccountWithHash]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateUserAccountWithHash]
GO
/****** Object:  StoredProcedure [dbo].[UpdateTopic]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateTopic]
GO
/****** Object:  StoredProcedure [dbo].[UpdateTeaches]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateTeaches]
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentEnrollmentInCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateStudentEnrollmentInCourse]
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudent]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateStudent]
GO
/****** Object:  StoredProcedure [dbo].[UpdateInstructorByID]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateInstructorByID]
GO
/****** Object:  StoredProcedure [dbo].[UpdateInstructor]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateInstructor]
GO
/****** Object:  StoredProcedure [dbo].[UpdateDepartment]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateDepartment]
GO
/****** Object:  StoredProcedure [dbo].[UpdateCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateCourse]
GO
/****** Object:  StoredProcedure [dbo].[Un_EnrollStudentInCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Un_EnrollStudentInCourse]
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateQuestion]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_UpdateQuestion]
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateExam]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_UpdateExam]
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateChoice]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_UpdateChoice]
GO
/****** Object:  StoredProcedure [dbo].[SP_TopicesInCourses]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_TopicesInCourses]
GO
/****** Object:  StoredProcedure [dbo].[SP_StudentAnswers]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_StudentAnswers]
GO
/****** Object:  StoredProcedure [dbo].[SP_selectQuestion]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_selectQuestion]
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectExam]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_SelectExam]
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectChoice]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_SelectChoice]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginWithPassword]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_LoginWithPassword]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginWithHash]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_LoginWithHash]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginAsStudentWithPassword]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_LoginAsStudentWithPassword]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginAsStudentWithHash]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_LoginAsStudentWithHash]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginAsInstructorWithPassword]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_LoginAsInstructorWithPassword]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginAsInstructorWithHash]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_LoginAsInstructorWithHash]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetStudentsByDepartment]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_GetStudentsByDepartment]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetStudentGrades]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_GetStudentGrades]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCoursesByInstructor]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_GetCoursesByInstructor]
GO
/****** Object:  StoredProcedure [dbo].[SP_ExamQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_ExamQuestions]
GO
/****** Object:  StoredProcedure [dbo].[SP_deleteQuestion]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_deleteQuestion]
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteExam]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_DeleteExam]
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteChoice]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_DeleteChoice]
GO
/****** Object:  StoredProcedure [dbo].[SP_CreateStudentAnswer]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_CreateStudentAnswer]
GO
/****** Object:  StoredProcedure [dbo].[SelectTopics]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SelectTopics]
GO
/****** Object:  StoredProcedure [dbo].[SelectTopic]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SelectTopic]
GO
/****** Object:  StoredProcedure [dbo].[SelectStudents]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SelectStudents]
GO
/****** Object:  StoredProcedure [dbo].[SelectStudent]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SelectStudent]
GO
/****** Object:  StoredProcedure [dbo].[ReadTopic]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ReadTopic]
GO
/****** Object:  StoredProcedure [dbo].[InsertStudent]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[InsertStudent]
GO
/****** Object:  StoredProcedure [dbo].[insertNewQuestion]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[insertNewQuestion]
GO
/****** Object:  StoredProcedure [dbo].[InsertInstructorWithCourses]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[InsertInstructorWithCourses]
GO
/****** Object:  StoredProcedure [dbo].[InsertInstructor]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[InsertInstructor]
GO
/****** Object:  StoredProcedure [dbo].[InsertDepartment]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[InsertDepartment]
GO
/****** Object:  StoredProcedure [dbo].[InsertCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[InsertCourse]
GO
/****** Object:  StoredProcedure [dbo].[insertChoice]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[insertChoice]
GO
/****** Object:  StoredProcedure [dbo].[GetUserAccount]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetUserAccount]
GO
/****** Object:  StoredProcedure [dbo].[GetTotalTimeForExam]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetTotalTimeForExam]
GO
/****** Object:  StoredProcedure [dbo].[GetTopicQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetTopicQuestions]
GO
/****** Object:  StoredProcedure [dbo].[GetTeaches]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetTeaches]
GO
/****** Object:  StoredProcedure [dbo].[GetStudentEnrollmentInCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetStudentEnrollmentInCourse]
GO
/****** Object:  StoredProcedure [dbo].[GetStudentCourses]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetStudentCourses]
GO
/****** Object:  StoredProcedure [dbo].[GetStudentAnswerInExam]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetStudentAnswerInExam]
GO
/****** Object:  StoredProcedure [dbo].[GetQuestionsForExam]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetQuestionsForExam]
GO
/****** Object:  StoredProcedure [dbo].[GetInstructorCoursesByID]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetInstructorCoursesByID]
GO
/****** Object:  StoredProcedure [dbo].[GetInstructorByID]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetInstructorByID]
GO
/****** Object:  StoredProcedure [dbo].[GetExamQuestionsNum]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetExamQuestionsNum]
GO
/****** Object:  StoredProcedure [dbo].[GetExamQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetExamQuestions]
GO
/****** Object:  StoredProcedure [dbo].[GetExamInfoForStudent]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetExamInfoForStudent]
GO
/****** Object:  StoredProcedure [dbo].[GetExamHistory]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetExamHistory]
GO
/****** Object:  StoredProcedure [dbo].[GetExam]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetExam]
GO
/****** Object:  StoredProcedure [dbo].[GetDepartmentByID]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetDepartmentByID]
GO
/****** Object:  StoredProcedure [dbo].[GetCoursesTaughtByInstructor]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetCoursesTaughtByInstructor]
GO
/****** Object:  StoredProcedure [dbo].[GetCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetCourse]
GO
/****** Object:  StoredProcedure [dbo].[GetChoicesForQuestion]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetChoicesForQuestion]
GO
/****** Object:  StoredProcedure [dbo].[GetAllUserAccounts]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllUserAccounts]
GO
/****** Object:  StoredProcedure [dbo].[GetAllTopicQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllTopicQuestions]
GO
/****** Object:  StoredProcedure [dbo].[GetAllTeaches]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllTeaches]
GO
/****** Object:  StoredProcedure [dbo].[GetAllStudentEnrollments]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllStudentEnrollments]
GO
/****** Object:  StoredProcedure [dbo].[GetAllInstructors]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllInstructors]
GO
/****** Object:  StoredProcedure [dbo].[GetAllExamQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllExamQuestions]
GO
/****** Object:  StoredProcedure [dbo].[GetAllDepartments]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllDepartments]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoursesForStudent]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllCoursesForStudent]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCourses]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllCourses]
GO
/****** Object:  StoredProcedure [dbo].[ExamGeneration]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ExamGeneration]
GO
/****** Object:  StoredProcedure [dbo].[EnrollStudentInCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[EnrollStudentInCourse]
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserAccount]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteUserAccount]
GO
/****** Object:  StoredProcedure [dbo].[DeleteTopicQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteTopicQuestions]
GO
/****** Object:  StoredProcedure [dbo].[DeleteTopic]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteTopic]
GO
/****** Object:  StoredProcedure [dbo].[DeleteTeaches]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteTeaches]
GO
/****** Object:  StoredProcedure [dbo].[DeleteStudent]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteStudent]
GO
/****** Object:  StoredProcedure [dbo].[DeleteInstructorToCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteInstructorToCourse]
GO
/****** Object:  StoredProcedure [dbo].[DeleteInstructorByID]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteInstructorByID]
GO
/****** Object:  StoredProcedure [dbo].[DeleteExamQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteExamQuestions]
GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartment]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteDepartment]
GO
/****** Object:  StoredProcedure [dbo].[DeleteCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteCourse]
GO
/****** Object:  StoredProcedure [dbo].[CreateUserAccountWithPassword]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CreateUserAccountWithPassword]
GO
/****** Object:  StoredProcedure [dbo].[CreateUserAccountWithHash]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CreateUserAccountWithHash]
GO
/****** Object:  StoredProcedure [dbo].[CreateTopicQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CreateTopicQuestions]
GO
/****** Object:  StoredProcedure [dbo].[CreateTopic]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CreateTopic]
GO
/****** Object:  StoredProcedure [dbo].[CreateTeaches]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CreateTeaches]
GO
/****** Object:  StoredProcedure [dbo].[CreateExamQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CreateExamQuestions]
GO
/****** Object:  StoredProcedure [dbo].[CorrectExam]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CorrectExam]
GO
/****** Object:  StoredProcedure [dbo].[checkStudentHaveExam]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[checkStudentHaveExam]
GO
/****** Object:  StoredProcedure [dbo].[AssignInstructorToCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AssignInstructorToCourse]
GO
/****** Object:  UserDefinedFunction [dbo].[ifTeach]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP FUNCTION IF EXISTS [dbo].[ifTeach]
GO
/****** Object:  UserDefinedFunction [dbo].[ifEnroll]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP FUNCTION IF EXISTS [dbo].[ifEnroll]
GO
/****** Object:  UserDefinedFunction [dbo].[FnS_SHA256NVARCHAR]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP FUNCTION IF EXISTS [dbo].[FnS_SHA256NVARCHAR]
GO
/****** Object:  UserDefinedFunction [dbo].[checkTimeConflict]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP FUNCTION IF EXISTS [dbo].[checkTimeConflict]
GO
/****** Object:  UserDefinedTableType [dbo].[StudentAnswer]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP TYPE IF EXISTS [dbo].[StudentAnswer]
GO
/****** Object:  UserDefinedTableType [dbo].[CourseIDList]    Script Date: 2/29/2024 4:46:57 PM ******/
DROP TYPE IF EXISTS [dbo].[CourseIDList]
GO
/****** Object:  UserDefinedTableType [dbo].[CourseIDList]    Script Date: 2/29/2024 4:46:57 PM ******/
CREATE TYPE [dbo].[CourseIDList] AS TABLE(
	[CourseID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[StudentAnswer]    Script Date: 2/29/2024 4:46:57 PM ******/
CREATE TYPE [dbo].[StudentAnswer] AS TABLE(
	[QuestionID] [int] NULL,
	[SAnswer] [int] NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[checkTimeConflict]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create FUNCTION [dbo].[checkTimeConflict](@studId INT, @CourseId INT,@from datetime,@to datetime)
RETURNS BIT
AS
BEGIN                     
    RETURN (SELECT CASE WHEN NOT EXISTS(SELECT * FROM Exam
	                                    WHERE (CourseID != @CourseId and StudentID = @studId and ((ScheduledTime <= @to) and (DATEADD(SECOND, TotalTime, ScheduledTime) >= @from)))
										)THEN 1 ELSE 0 END);
END
GO
/****** Object:  UserDefinedFunction [dbo].[FnS_SHA256NVARCHAR]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Mohanad-Shawky
-- Create date: 28/01/2024
-- Description:	Returns the NVARCHAR(64) representing the SHA256 of the input
-- =============================================
CREATE FUNCTION [dbo].[FnS_SHA256NVARCHAR] 
(
	@message NVARCHAR(MAX)
)
RETURNS NVARCHAR(64)
AS
BEGIN

	DECLARE @Result NVARCHAR(64)

	SELECT @Result = CONVERT(NVARCHAR(64),HASHBYTES('SHA2_256',@message),2)

	RETURN @Result

END
GO
/****** Object:  UserDefinedFunction [dbo].[ifEnroll]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ifEnroll](@studId INT, @CourseId INT)
RETURNS BIT
AS
BEGIN 
    RETURN (SELECT CASE WHEN EXISTS(SELECT * FROM EnrollsIn WHERE StudentID = @studId AND CourseID = @CourseId) THEN 1 ELSE 0 END);
END;
GO
/****** Object:  UserDefinedFunction [dbo].[ifTeach]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ifTeach](@instId INT, @CourseId INT)
RETURNS BIT
AS
BEGIN 
    RETURN (SELECT CASE WHEN EXISTS(SELECT * FROM Teaches WHERE InstructorID = @instId AND CourseID = @CourseId) THEN 1 ELSE 0 END);
END;
GO
/****** Object:  StoredProcedure [dbo].[AssignInstructorToCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[AssignInstructorToCourse]
    @InstructorID INT,
    @CourseID INT,
	@StDate DATE,
	@ENDate DATE
AS
BEGIN
    -- Check if the instructor and course exist
    IF EXISTS (SELECT 1 FROM Instructor WHERE ID = @InstructorID) AND
               EXISTS (SELECT 1 FROM Course WHERE ID = @CourseID)
    BEGIN
        -- Check if the instructor is already assigned to the course
        IF NOT EXISTS (SELECT 1 FROM Teaches WHERE InstructorID = @InstructorID AND CourseID = @CourseID)
        BEGIN
            -- Assign the instructor to the course
            INSERT INTO Teaches(InstructorID, CourseID,StartDate,EndDate)
            VALUES (@InstructorID, @CourseID,@StDate ,@ENDate )

   
			Raiserror( 'Instructor assigned to the course successfully.',9,1)
        END
        ELSE
        BEGIN
            
			Raiserror( 'Instructor is already assigned to the course.',9,1)
        END
    END
    ELSE
    BEGIN
        
		Raiserror( 'Instructor or course not found. Please check the provided IDs.',9,1)
    END
END

GO
/****** Object:  StoredProcedure [dbo].[checkStudentHaveExam]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[checkStudentHaveExam]
    @crsId INT , @studId INT
AS
BEGIN
    RETURN (SELECT CASE WHEN  EXISTS(SELECT * FROM Exam WHERE StudentID=@studId and CourseID=@crsId) THEN 1 ELSE 0 END);
END


GO
/****** Object:  StoredProcedure [dbo].[CorrectExam]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[CorrectExam]
    @ExamID INT,
	@StudentID INT
AS
BEGIN
   DECLARE @TotalPoints INT
        DECLARE @StudentScore FLOAT
        DECLARE @StudentPercent FLOAT

		--select @TotalPoints = TotalPoints from Exam where ID = @ExamID

		IF NOT EXISTS (SELECT 1 FROM Exam WHERE ID = @ExamID)
		BEGIN
		;THROW 51000, 'Invalid ExamID provided.', 1;
		END
		IF NOT EXISTS (SELECT 1 FROM Student WHERE ID = @StudentID)
		BEGIN
		;THROW 51000, 'Invalid StudentID provided.', 1;
		END
        ---- Calculate Student Score
        SELECT @StudentScore = ISNULL(SUM(A.Grade), 0)
        FROM Answer A
        WHERE A.ExamID = @ExamID AND A.StudentID=@StudentID

         --Calculate Total Points
        SELECT @TotalPoints = Sum(Q.Points) 
		from Question Q inner join ExamQuestions E       
        on Q.ID = E.QuestionID
        and E.ExamID = @ExamID 

        -- Calculate StudentPercent
        SELECT @StudentPercent = (@StudentScore / @TotalPoints);

        -- Update Exam table
        UPDATE Exam
        SET StudentScore = @StudentScore,
			TotalPoints = @TotalPoints,
            IsStudentPassed = CASE WHEN @StudentPercent >= SuccessPercent THEN 1 ELSE 0 END
        WHERE ID = @ExamID AND StudentID=@StudentID ;

        -- Update EnrollsIn table
        UPDATE EN
        SET IsPassed = CASE WHEN @StudentPercent >= SuccessPercent THEN 1 ELSE 0 END,
            IsCorrective = CASE WHEN @StudentPercent >= SuccessPercent THEN 0 ELSE 1 END
        FROM EnrollsIn EN
        JOIN Exam E ON E.CourseID = EN.CourseID
        WHERE E.ID = @ExamID AND EN.StudentID=@StudentID;

		-- Return Modified Exam ROW
		SELECT * 
		FROM Exam
        WHERE ID = @ExamID AND StudentID=@StudentID ;

	
END;
GO
/****** Object:  StoredProcedure [dbo].[CreateExamQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[CreateExamQuestions]
@ExamID INT,
@QuestionID INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		INSERT INTO [dbo].[ExamQuestions]
		([ExamID], [QuestionID])
		VALUES
		(@ExamID, @QuestionID)
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[CreateTeaches]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[CreateTeaches]
@InstructorID INT,
@CourseID INT,
@StartDate DATE,
@EndDate DATE
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		INSERT INTO [dbo].[Teaches]
		([InstructorID], [CourseID], [StartDate], [EndDate])
		VALUES
		(@InstructorID, @CourseID, @StartDate, @EndDate)
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[CreateTopic]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[CreateTopic]
   
    @CourseID INT,
	@TopicName NVARCHAR(100),
	@InstID INT

AS
		IF	EXISTS (SELECT 1 FROM Instructor WHERE ID = @InstID)
BEGIN
	 IF EXISTS (SELECT 1 FROM Course WHERE ID = @CourseID) AND
		NOT EXISTS(SELECT 1 FROM Topic WHERE Name = @TopicName AND CourseID =@CourseID)
		 
BEGIN
    INSERT INTO Topic (Name, CourseID)
    VALUES ( @TopicName,@CourseID)

	Raiserror( 'Topic assigned to the course successfully.',9,1)
END 
 ELSE
        BEGIN
         
			Raiserror( 'Topic is already assigned to the course.',9,1)
        END

END
ELSE
		BEGIN
		
		Raiserror( 'Please check InstructorID.',9,1)

		END

GO
/****** Object:  StoredProcedure [dbo].[CreateTopicQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[CreateTopicQuestions]
@TopicID INT,
@QuestionID INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		INSERT INTO [dbo].[TopicQuestions]
		([TopicID], [QuestionID])
		VALUES
		(@TopicID, @QuestionID)
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[CreateUserAccountWithHash]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[CreateUserAccountWithHash]
	@UserName NVARCHAR(100), 
	@PasswordHash NVARCHAR(64),
	@Type NVARCHAR(20)
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
			IF EXISTS (SELECT * FROM [UserAccountType] WHERE [UserAccountTypeID] = @Type)
				BEGIN
					INSERT INTO [dbo].[UserAccount]
					([UserName], [PasswordHash], [Type])
					VALUES
					(@UserName, @PasswordHash, @Type)

					SELECT * FROM [dbo].[UserAccount] WHERE [UserName] = @UserName;
					COMMIT TRANSACTION
				END
			ELSE
				BEGIN
					RETURN -1;
				END
	END TRY
	BEGIN CATCH
		ROLLBACK
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[CreateUserAccountWithPassword]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[CreateUserAccountWithPassword] 
	@UserName NVARCHAR(100), 
	@Password NVARCHAR(64),
	@Type NVARCHAR(20)
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
			IF EXISTS (SELECT * FROM [UserAccountType] WHERE [UserAccountTypeID] = @Type)
				BEGIN
					INSERT INTO [dbo].[UserAccount]
					([UserName], [PasswordHash], [Type])
					VALUES
					(@UserName, [dbo].[FnS_SHA256NVARCHAR](@Password), @Type)

					SELECT * FROM [dbo].[UserAccount] WHERE [UserName] = @UserName;
					COMMIT TRANSACTION
				END
			ELSE
				BEGIN
					RETURN -1;
				END
	END TRY
	BEGIN CATCH
		ROLLBACK
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[DeleteCourse]
    @CourseName NVARCHAR(100),
    @CourseCode INT,
    @UserID INT
	
	
AS
BEGIN
   
    IF EXISTS (
        SELECT 1
        FROM Instructor I
        WHERE I.ID = @UserId 
    
    )
    BEGIN
        
        IF EXISTS (
            SELECT 1
            FROM Course c
            WHERE c.ID = @CourseCode
        )
        BEGIN
            Delete 
			From Course
            WHERE ID = @CourseCode AND Name =@CourseName;
        END
        ELSE
        BEGIN
           
			Raiserror( 'Course does not exist Please Check ',9,1)
        END
    END
    ELSE
    BEGIN
        -- If the user doesn't have the required permissions, print a message or handle accordingly
       
		Raiserror( 'You do not have permission to update courses.',9,1)
        -- You can also use other methods to handle the situation, like logging, auditing, etc.
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartment]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[DeleteDepartment]
	@DeptID INT
AS
BEGIN
		Delete FROM Department
		WHERE ID=@DeptID
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteExamQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[DeleteExamQuestions]
@ExamID INT,
@QuestionID INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		DELETE FROM [dbo].[ExamQuestions]
		WHERE [ExamID] = @ExamID AND [QuestionID] = @QuestionID
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteInstructorByID]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[DeleteInstructorByID]
@InstructorID int
AS
Begin TRY
	BEGIN Transaction
		UPDATE Instructor SET IsDeleted=1 where ID=@InstructorID 
	Commit Transaction
END TRY
 BEGIN CATCH 
	ROLLBACK TRANSACTION;
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[DeleteInstructorToCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[DeleteInstructorToCourse]
    @InstructorID INT,
    @CourseID INT
AS
BEGIN
    -- Check if the instructor and course exist
    IF EXISTS (SELECT 1 FROM Instructor WHERE ID = @InstructorID) AND
               EXISTS (SELECT 1 FROM Course WHERE ID = @CourseID)
    BEGIN
        -- Check if the instructor is already assigned to the course
        IF  EXISTS (SELECT 1 FROM Teaches WHERE InstructorID = @InstructorID AND CourseID = @CourseID)
        BEGIN
            -- Delete existing assignment
            DELETE FROM Teaches WHERE InstructorID = @InstructorID AND CourseID = @CourseID

			Raiserror( 'Existing assignment deleted.',9,1)
        END
        ELSE
        BEGIN
           
			Raiserror( 'Instructor is not assigned to the specified course.',9,1)
        END
    END
    ELSE
    BEGIN

		Raiserror( 'Instructor or course not found. Please check the provided IDs.',9,1)
    END
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteStudent]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC UpdateStudent @IDToSelect = 50, @NewName = '';
--GO

--====================================================================================================--


CREATE   PROCEDURE [dbo].[DeleteStudent]
    @IDToSelect INT
AS
BEGIN
    DELETE FROM Student
    WHERE ID = @IDToSelect;
END;

GO
/****** Object:  StoredProcedure [dbo].[DeleteTeaches]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[DeleteTeaches]
@InstructorID INT,
@CourseID INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		DELETE FROM [dbo].[Teaches]
		WHERE [InstructorID] = @InstructorID AND [CourseID] = @CourseID
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteTopic]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC UpdateTopic 
--    @TopicID = 51,
--    @CourseID = 6,
--    @NewTopicName = 'DS',
--	@InstID =2;


----<============================================================================================>--

---- =============================================
---- Author:		<Peter Gerges Gouda>
---- Create date: <30-1-2024>
---- Description:	<Instructors can Delete topics , Delete >
---- =============================================
----DELETE
--GO

CREATE   PROCEDURE [dbo].[DeleteTopic]
    @TopicID INT,
    @CourseID INT,
	@TopicName NVARCHAR(100),
    @InstID INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Instructor WHERE ID = @InstID)
    BEGIN
        IF EXISTS (SELECT 1 FROM Course WHERE ID = @CourseID) AND
           EXISTS (SELECT 1 FROM Topic WHERE ID = @TopicID AND CourseID = @CourseID AND Name=@TopicName ) 
        BEGIN
            DELETE FROM Topic
            WHERE ID = @TopicID AND CourseID = @CourseID AND Name=@TopicName;


			Raiserror( 'Topic deleted successfully.',9,1)
        END
        ELSE
        BEGIN
           
			Raiserror( 'Course or Topic not found. Please check CourseID and TopicID.',9,1)
        END
    END
    ELSE
    BEGIN

		Raiserror( 'Please check InstructorID.',9,1)
    END
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteTopicQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[DeleteTopicQuestions]
@TopicID INT,
@QuestionID INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		DELETE FROM [dbo].[TopicQuestions]
		WHERE [TopicID] = @TopicID AND [QuestionID] = @QuestionID
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserAccount]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[DeleteUserAccount]
	@ID INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		DELETE FROM [dbo].[UserAccount]
		WHERE [ID] = @ID
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR (N'Cannot delete referenced UserAccount, Try to delete the references before you delete this user', -- Message text.
           9, -- Severity,
           1 -- State
		   );
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[EnrollStudentInCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[EnrollStudentInCourse]
    @InstructorId INT,
    @StudentId INT,
    @CourseId INT,
	@CourseAC BIT,
	@EnrDate DATE,
	@StDate DATE,
	@EnDate DATE,
	@PassSatus BIT,
	@IsCorrec BIT
AS
BEGIN
    -- Check if the instructor is teaching the specified course
    IF EXISTS (
        SELECT 1
        FROM Teaches c JOIN Instructor i 
		ON c.InstructorId = i.Id
        WHERE i.Id = @InstructorId AND c.CourseId = @CourseId
    )
    BEGIN
        -- Check if the student is not already enrolled in the course
        IF NOT EXISTS (
            SELECT 1
            FROM  EnrollsIn SC
            WHERE SC.StudentID = @StudentId AND CourseId = @CourseId
        )
        BEGIN
            -- Enroll the student in the course
            INSERT INTO EnrollsIn(StudentId, CourseId,CourseActive,EnrollDate,StartDate,EndDate,IsPassed,IsCorrective)
            VALUES (@StudentId, @CourseId,@CourseAC,@EnrDate,@StDate,@EnDate,@PassSatus,@IsCorrec);

           
			Raiserror( 'Student enrolled successfully.',9,1)
        END
        ELSE
        BEGIN
            
			Raiserror( 'Student is already enrolled in the course.',9,1)
        END
    END
    ELSE
    BEGIN

		Raiserror( 'Instructor is not assigned to the specified course.',9,1)
    END
END;

GO
/****** Object:  StoredProcedure [dbo].[ExamGeneration]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[ExamGeneration]
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
/****** Object:  StoredProcedure [dbo].[GetAllCourses]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Courses CRUD Operations
--getAllCourses
Create   Procedure [dbo].[GetAllCourses]
AS
select * from Course

GO
/****** Object:  StoredProcedure [dbo].[GetAllCoursesForStudent]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetAllCoursesForStudent]
@StudentID int
as
select C.* from EnrollsIn E inner join Student S
on E.StudentID = S.ID inner join Course C
on C.ID = E.CourseID where S.ID = @StudentID
GO
/****** Object:  StoredProcedure [dbo].[GetAllDepartments]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Department CRUD Operations
--getAllDepartments
Create   Procedure [dbo].[GetAllDepartments]
AS
select * from Department;
GO
/****** Object:  StoredProcedure [dbo].[GetAllExamQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetAllExamQuestions]
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		SELECT * FROM [dbo].[ExamQuestions]
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllInstructors]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[GetAllInstructors]
AS
select * from Instructor where IsDeleted=0;
GO
/****** Object:  StoredProcedure [dbo].[GetAllStudentEnrollments]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetAllStudentEnrollments]

AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		SELECT * 
		FROM [dbo].[EnrollsIn]
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllTeaches]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetAllTeaches]
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		SELECT * 
		FROM [dbo].[Teaches] 
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllTopicQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetAllTopicQuestions]
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		SELECT * FROM [dbo].[TopicQuestions]
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllUserAccounts]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetAllUserAccounts]
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		SELECT * FROM UserAccount;
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[GetChoicesForQuestion]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetChoicesForQuestion]
@QuestionID  int
as
select C.* from Choice C inner join Question Q on C.QuestionID = Q.ID and Q.ID = @QuestionID
GO
/****** Object:  StoredProcedure [dbo].[GetCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetCourse]
@ID INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		SELECT * FROM [dbo].[Course] WHERE [ID] = @ID;
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[GetCoursesTaughtByInstructor]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[GetCoursesTaughtByInstructor]
    @InstructorId INT
AS
BEGIN
    SELECT course.*
    FROM Teaches t
    INNER JOIN Course course ON t.CourseId = course.Id
    WHERE t.InstructorId = @InstructorId;
END;


GO
/****** Object:  StoredProcedure [dbo].[GetDepartmentByID]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetDepartmentByID]
	@DeptID INT
AS
BEGIN
		SELECT D.ID , D.Name ,I.Name AS[Department Manager]
		FROM Department D Join Instructor I
		On I.ID =D.InstructorManagerID
		WHERE D.ID=@DeptID
END;
GO
/****** Object:  StoredProcedure [dbo].[GetExam]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetExam]
@CourseID int,
@StudentID int 
as
declare @ExamID INT
select @ExamID = ID
from Exam
where CourseID = @CourseID
and StudentID = @StudentID;

select EQ.ExamID,
       Q.ID AS QuestionID,
       Q.Type,
       Q.ModelAnswer,
       Q.Difficulty,
       Q.Header,
       Q.CourseID AS QuestionCourseID,
       Q.Points
from RandomExamGenerator.dbo.ExamQuestions EQ
inner join RandomExamGenerator.dbo.Question Q ON EQ.QuestionID = Q.ID
where EQ.ExamID = @ExamID;

GO
/****** Object:  StoredProcedure [dbo].[GetExamHistory]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[GetExamHistory]
@ExamID int
as
select*
from Exam E where E.ID = @ExamID;
GO
/****** Object:  StoredProcedure [dbo].[GetExamInfoForStudent]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetExamInfoForStudent]
@StudentID int , @courseID int
as
select * from Exam where StudentID = @StudentID and CourseID = @courseID
GO
/****** Object:  StoredProcedure [dbo].[GetExamQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetExamQuestions]
@ExamID INT,
@QuestionID INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		SELECT * FROM [dbo].[ExamQuestions]
		WHERE [ExamID] = ExamID
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[GetExamQuestionsNum]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetExamQuestionsNum]
    @ID INT
AS
BEGIN
    DECLARE @Num INT;
    SELECT @Num = COUNT(Q.QuestionID)
    FROM Exam E
    INNER JOIN ExamQuestions Q ON E.ID = Q.ExamID
    WHERE E.ID = @ID;
    
    RETURN @Num;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetInstructorByID]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetInstructorByID]
    @InstructorID int
AS
    SELECT * FROM Instructor WHERE IsDeleted = 0 AND ID = @InstructorID;

GO
/****** Object:  StoredProcedure [dbo].[GetInstructorCoursesByID]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--getInstructorCoursesByID
CREATE   Procedure [dbo].[GetInstructorCoursesByID]
@InstructorID int
AS
SELECT c.Name
FROM Teaches t
JOIN Course c
on t.CourseID=c.ID
WHERE t.InstructorID=@InstructorID;
GO
/****** Object:  StoredProcedure [dbo].[GetQuestionsForExam]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetQuestionsForExam]
@ExamID int
as
select EQ.ExamID,
       Q.ID AS QuestionID,
       Q.Type,
       Q.ModelAnswer,
       Q.Difficulty,
       Q.Header,
       Q.CourseID AS QuestionCourseID,
       Q.Points
from RandomExamGenerator.dbo.ExamQuestions EQ
inner join RandomExamGenerator.dbo.Question Q ON EQ.QuestionID = Q.ID
where EQ.ExamID = @ExamID;
GO
/****** Object:  StoredProcedure [dbo].[GetStudentAnswerInExam]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create proc [dbo].[GetStudentAnswerInExam]
@studentID int , @examID int , @questionID int 
as
select A.* from Answer A where A.StudentID = @studentID and A.ExamID = @examID and A.QuestionID = @questionID
GO
/****** Object:  StoredProcedure [dbo].[GetStudentCourses]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[GetStudentCourses]  @CourseID INT
AS
BEGIN
    SELECT stud.Name,stud.Gender,enrolls.*
    FROM EnrollsIn enrolls INNER JOIN Student stud
	ON enrolls.StudentID=stud.ID and enrolls.CourseID=@CourseID
END;
GO
/****** Object:  StoredProcedure [dbo].[GetStudentEnrollmentInCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetStudentEnrollmentInCourse]
@StudentID INT,
@CourseID INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		SELECT * 
		FROM [dbo].[EnrollsIn] 
		WHERE [StudentID] = @StudentID AND [CourseID] = @CourseID;
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[GetTeaches]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetTeaches]
@InstructorID INT,
@CourseID INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		SELECT * 
		FROM [dbo].[Teaches]
		WHERE [InstructorID] = @InstructorID AND [CourseID] = @CourseID
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[GetTopicQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetTopicQuestions]
@TopicID INT,
@QuestionID INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		SELECT * FROM [dbo].[TopicQuestions]
		WHERE [TopicID] = @TopicID AND [QuestionID] = @QuestionID
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[GetTotalTimeForExam]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetTotalTimeForExam]
@ExamID int
as
select TotalTime from Exam where ID = @ExamID
GO
/****** Object:  StoredProcedure [dbo].[GetUserAccount]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetUserAccount]
@ID INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		SELECT * FROM [dbo].[UserAccount] WHERE [ID] = @ID;
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[insertChoice]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[insertChoice]
            (@qId int,
			@orderId int
           ,@body nvarchar(500)
           ,@isCorrect bit)
AS
BEGIN
   INSERT INTO Choice
   VALUES (@qId,@orderId,@body,@isCorrect) 
           
END


GO
/****** Object:  StoredProcedure [dbo].[InsertCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[InsertCourse]
    @CourseName NVARCHAR(100),
    @UserId INT
	
AS
BEGIN
      IF EXISTS (
        SELECT 1
        FROM Instructor I
        WHERE I.ID = @UserId 
    )
	  
    BEGIN
        
        INSERT INTO Course ( Name)
        VALUES ( @CourseName);
    END
    ELSE
    BEGIN
        Raiserror( 'You do not have permission to insert courses.',9,1)
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertDepartment]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[InsertDepartment]
	@DeptName NVARCHAR(100),
	@InstManager INT
AS
BEGIN
		INSERT INTO Department
		VALUES (@DeptName,@InstManager)
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertInstructor]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[InsertInstructor]
    @UserName NVARCHAR(100),
    @PasswordHash NVARCHAR(64),
    @Role NVARCHAR(20),
    @Gender NVARCHAR(6),
    @DepartmentID INT
AS
BEGIN
	BEGIN TRY
		BEGIN Transaction
		SET NOCOUNT ON;

		DECLARE @InsertedIDs TABLE (ID INT);
		-- Insert data into UserAccount table
	   INSERT INTO [dbo].[UserAccount] ([UserName], [PasswordHash], [Type])
		OUTPUT inserted.ID INTO @InsertedIDs(ID)
		VALUES (@UserName, @PasswordHash, 'Instructor');

		DECLARE @NewInstructorID INT;
		SET @NewInstructorID =(Select TOP(1) ID FROM @InsertedIDs); 

		-- Insert data into Instructor table
		INSERT INTO [dbo].[Instructor] ([Name],[ID], [Role], [Gender], [DepartmentID],[IsDeleted])
		VALUES (@UserName, @NewInstructorID, @Role, @Gender, @DepartmentID,0);

		
		COMMIT TRANSACTION;
	END TRY
    BEGIN CATCH 
		ROLLBACK TRANSACTION;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[InsertInstructorWithCourses]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--insertInstructorWithCourses
Create   PROCEDURE [dbo].[InsertInstructorWithCourses]
    @UserName NVARCHAR(100),
    @PasswordHash NVARCHAR(64),
    @Role NVARCHAR(20),
    @Gender NVARCHAR(6),
    @DepartmentID INT,
    @CourseIDs CourseIDList READONLY
AS
BEGIN
	Begin TRY
		Begin Transaction
		SET NOCOUNT ON;

		DECLARE @InsertedIDs TABLE (ID INT);
		-- Insert data into UserAccount table
	   INSERT INTO [dbo].[UserAccount] ([UserName], [PasswordHash], [Type])
		OUTPUT inserted.ID INTO @InsertedIDs(ID)
		VALUES (@UserName, @PasswordHash, 'Instructor');

		DECLARE @NewInstructorID INT;
		SET @NewInstructorID =(Select TOP(1) ID FROM @InsertedIDs); 

		-- Insert data into Instructor table
		INSERT INTO [dbo].[Instructor] ([Name],[ID], [Role], [Gender], [DepartmentID])
		VALUES (@UserName, @NewInstructorID, @Role, @Gender, @DepartmentID);

		-- Insert courses into Teaches table for the new instructor
		INSERT INTO [dbo].[Teaches] ([CourseID], [InstructorID], [StartDate])
		SELECT CourseID, @NewInstructorID, GETDATE() FROM @CourseIDs;
		COMMIT TRANSACTION;
	END TRY
    BEGIN CATCH 
		ROLLBACK TRANSACTION;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[insertNewQuestion]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[insertNewQuestion]
    (@type nvarchar(20),
     @modelAnswer int,
     @difficulty nvarchar(20),
     @header nvarchar(1000),
     @courseID int,
     @points int,@QuestionID  INT Output)
AS
BEGIN
   

    INSERT INTO Question (Type, ModelAnswer, Difficulty, Header, CourseID, Points)
    VALUES (@type, @modelAnswer, @difficulty, @header, @courseID, @points);

    -- Get the last inserted identity value (Question ID)
    SET @QuestionID = SCOPE_IDENTITY();

END



----DECLARE @NewQuestionID int;
----EXEC @NewQuestionID = insertNewQuestion
----    @type = 'tf',
----    @modelAnswer = 1,
----    @difficulty = 'Easy',
----    @header = 'What is the capital of France?',
----    @courseID = 1,
----    @points = 10;

----PRINT 'New Question ID: ' + CAST(@NewQuestionID AS nvarchar(10));
---- INSERT INTO Question
----   VALUES ('tf','1','easy','lll',1,2)


GO
/****** Object:  StoredProcedure [dbo].[InsertStudent]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[InsertStudent]
    @InsertID INT,
	@StudentName NVARCHAR(100),
	@Gender NVARCHAR(6),
	@BDate DATE,
	@ISDelete BIT,
	@DeptID INT

AS
BEGIN
    INSERT INTO Student 
	values (@InsertID,@StudentName,@Gender,@BDate,@ISDelete,@DeptID)
END;

GO
/****** Object:  StoredProcedure [dbo].[ReadTopic]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--<============================================================================================>--
-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<Instructors can Read topics , Read >
-- =============================================
CREATE   PROCEDURE [dbo].[ReadTopic]
    @CourseID INT,
    @InstID INT
	
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Teaches TE  WHERE TE.InstructorID = @InstID AND TE.CourseID =@CourseID )
    BEGIN
        IF EXISTS (SELECT 1 FROM Course WHERE ID = @CourseID) AND
           EXISTS (SELECT 1 FROM Topic WHERE CourseID = @CourseID) 
        BEGIN
            SELECT T.Name AS[Topic Name] ,T.ID AS[Topic ID] , C.Name AS[Course Name]
			FROM Topic T JOIN Course C
			ON C.ID = T.CourseID AND T.CourseID = @CourseID
			JOIN Teaches TE 
			ON @CourseID = TE.CourseID AND TE.InstructorID =@InstID
			
        END
        ELSE
        BEGIN
           
			Raiserror( 'Topics not found.',9,1)
        END
    END
    ELSE
    BEGIN

		Raiserror( 'Please check InstructorID.',9,1)
    END
END

GO
/****** Object:  StoredProcedure [dbo].[SelectStudent]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Student CRUD

CREATE   PROCEDURE [dbo].[SelectStudent]
		@IDToSelect INT
AS
BEGIN
    SELECT *
    FROM Student S
	WHERE S.ID = @IDToSelect;
    
END;
GO
/****** Object:  StoredProcedure [dbo].[SelectStudents]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC SelectStudent @IDToSelect = 6;
--GO
--====================================================================================================--
CREATE   PROCEDURE [dbo].[SelectStudents]	
AS
BEGIN
    SELECT *
    FROM Student S
	;
    
END;
GO
/****** Object:  StoredProcedure [dbo].[SelectTopic]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SelectTopic]
		@IDToSelect INT
AS
BEGIN
    SELECT *
    FROM Topic T
	WHERE T.ID = @IDToSelect;
    
END;
GO
/****** Object:  StoredProcedure [dbo].[SelectTopics]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC SelectStudent @IDToSelect = 6;
--GO
--====================================================================================================--
CREATE   PROCEDURE [dbo].[SelectTopics]	
AS
BEGIN
    SELECT *
    FROM Topic 
	;
    
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CreateStudentAnswer]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_CreateStudentAnswer]
    @StudentAnswerList StudentAnswer READONLY,
    @StudentID INT,
    @ExamID INT
AS
begin
    declare @ModelAnswer INT, @QuestionID INT , @SAnswer INT, @CountForQuestionID INT;

	declare cursor_StudentAnswer cursor for
    select QuestionID, SAnswer from @StudentAnswerList;

    open cursor_StudentAnswer;

    fetch cursor_StudentAnswer into @QuestionID, @SAnswer;

    while @@fetch_STATUS = 0
    BEGIN

        select @CountForQuestionID = COUNT(QuestionID)
        from Choice
        where QuestionID = @QuestionID;

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

GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteChoice]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_DeleteChoice]
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
/****** Object:  StoredProcedure [dbo].[SP_DeleteExam]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_DeleteExam]
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
/****** Object:  StoredProcedure [dbo].[SP_deleteQuestion]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_deleteQuestion]
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
/****** Object:  StoredProcedure [dbo].[SP_ExamQuestions]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



---Report that takes exam number and returns the Questions in it and chocies [freeform report]
CREATE   PROCEDURE [dbo].[SP_ExamQuestions]
    @exam_id INT
AS
BEGIN
    SELECT
        quest.Header,
        STRING_AGG('Choice '+CONVERT(VARCHAR(10), choi.OrderInQuestion) + '. ' + choi.Body ,' , ') AS Question_Choices
    FROM ExamQuestions examQ
    JOIN Choice choi ON examQ.QuestionID = choi.QuestionID
    JOIN Question quest ON quest.ID = examQ.QuestionID
    WHERE examQ.ExamID = @exam_id
    GROUP BY quest.ID, quest.Header
    ORDER BY quest.ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCoursesByInstructor]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



----------•	Report that takes the instructor ID
----and returns the name of the courses that he teaches and the number of student per course.

CREATE   PROCEDURE [dbo].[SP_GetCoursesByInstructor]
    @InstructorID INT
AS
BEGIN
    SELECT CO.Name AS CourseName, COUNT(*) AS NumberStudents
	FROM Teaches TE,Course CO,EnrollsIn EN
	WHERE InstructorID=@InstructorID and 
	TE.CourseID=CO.ID AND EN.CourseID=CO.ID
	GROUP BY CO.Name
END;
---EXEC SP_GetCoursesByInstructor @InstructorID = 1;
GO
/****** Object:  StoredProcedure [dbo].[SP_GetStudentGrades]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Create a stored procedure to get student grades by student ID
CREATE   PROCEDURE [dbo].[SP_GetStudentGrades]
    @StudentID INT
AS
BEGIN
    SELECT(StudentScore/TotalPoints)*100 AS Grade,SuccessPercent*100 AS SuccessPercent,CO.Name
    FROM Exam EX,Course CO
    WHERE StudentID = @StudentID AND Co.ID=EX.CourseID;
END;

----EXEC SP_GetStudentGrades @StudentID = 6;
GO
/****** Object:  StoredProcedure [dbo].[SP_GetStudentsByDepartment]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_GetStudentsByDepartment]
    @DepartmentNo INT
AS
BEGIN
    SELECT stud.Name,stud.Gender,stud.Birthdate
    FROM Department dept,Student stud
    WHERE dept.ID= @DepartmentNo AND stud.DepartmentID = dept.ID
END;

GO
/****** Object:  StoredProcedure [dbo].[SP_LoginAsInstructorWithHash]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Create date: 29/01/2024
-- Description:	Returns the matched Instructor if the username and password hash are found
-- =============================================
CREATE PROCEDURE [dbo].[SP_LoginAsInstructorWithHash] 
	@UserName NVARCHAR(100), 
	@PasswordHash NVARCHAR(64)
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @account TABLE 
	(ID INT NOT NULL, 
	PasswordHash NVARCHAR(64) NOT NULL, 
	[Type] NVARCHAR(20) NOT NULL, 
	UserName NVARCHAR(100) NOT NULL);

	INSERT INTO @account EXEC [dbo].[SP_LoginWithHash] @UserName, @PasswordHash;

	SELECT i.*
	FROM @account a INNER JOIN [dbo].[Instructor] i 
	ON a.ID = i.ID

END
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginAsInstructorWithPassword]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Create date: 29/01/2024
-- Description:	Returns the matched Student if the username and password hash are found
-- =============================================
CREATE PROCEDURE [dbo].[SP_LoginAsInstructorWithPassword] 
	@UserName NVARCHAR(100), 
	@Password NVARCHAR(64)
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @account TABLE 
	(ID INT NOT NULL, 
	PasswordHash NVARCHAR(64) NOT NULL, 
	[Type] NVARCHAR(20) NOT NULL, 
	UserName NVARCHAR(100) NOT NULL);

	INSERT INTO @account EXEC [dbo].[SP_LoginWithPassword] @UserName, @Password;

	SELECT i.*
	FROM @account a INNER JOIN [dbo].[Instructor] i 
	ON a.ID = i.ID

END
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginAsStudentWithHash]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Create date: 29/01/2024
-- Description:	Returns the matched Student if the username and hash are found
-- =============================================
CREATE PROCEDURE [dbo].[SP_LoginAsStudentWithHash] 
	@UserName NVARCHAR(100), 
	@PasswordHash NVARCHAR(64)
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @account TABLE 
	(ID INT NOT NULL, 
	PasswordHash NVARCHAR(64) NOT NULL, 
	[Type] NVARCHAR(20) NOT NULL, 
	UserName NVARCHAR(100) NOT NULL);

	INSERT INTO @account EXEC [dbo].[SP_LoginWithHash] @UserName, @PasswordHash;

	SELECT s.*
	FROM @account a INNER JOIN [dbo].[Student] s 
	ON a.ID = s.ID

END
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginAsStudentWithPassword]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Create date: 29/01/2024
-- Description:	Returns the matched Student if the username and password hash are found
-- =============================================
CREATE PROCEDURE [dbo].[SP_LoginAsStudentWithPassword] 
	@UserName NVARCHAR(100), 
	@Password NVARCHAR(64)
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @account TABLE 
	(ID INT NOT NULL, 
	PasswordHash NVARCHAR(64) NOT NULL, 
	[Type] NVARCHAR(20) NOT NULL, 
	UserName NVARCHAR(100) NOT NULL);

	INSERT INTO @account EXEC [dbo].[SP_LoginWithPassword] @UserName, @Password;

	SELECT s.*
	FROM @account a INNER JOIN [dbo].[Student] s 
	ON a.ID = s.ID

END
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginWithHash]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Create date: 29/01/2024
-- Description:	Returns the matched UserAccount row if username and password hash are found
-- =============================================
CREATE PROCEDURE [dbo].[SP_LoginWithHash]
	@UserName NVARCHAR(100), 
	@PasswordHash NVARCHAR(64)
WITH EXECUTE AS 'Instructor'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT *
	FROM [dbo].[UserAccount] AS ua
	WHERE ua.[UserName] = @UserName AND ua.[PasswordHash] = @PasswordHash

END
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginWithPassword]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Create date: 29/01/2024
-- Description:	Returns the matched UserAccount row if username and password hash are found
-- =============================================
CREATE PROCEDURE [dbo].[SP_LoginWithPassword]
	@UserName NVARCHAR(100), 
	@Password NVARCHAR(64)
 with EXECUTE AS 'Instructor'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT *
	FROM [dbo].[UserAccount] AS ua
	WHERE ua.[UserName] = @UserName AND ua.[PasswordHash] = [dbo].[FnS_SHA256NVARCHAR](@Password)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectChoice]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SelectChoice]
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




GO
/****** Object:  StoredProcedure [dbo].[SP_SelectExam]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_SelectExam]
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






GO
/****** Object:  StoredProcedure [dbo].[SP_selectQuestion]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_selectQuestion]
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
GO
/****** Object:  StoredProcedure [dbo].[SP_StudentAnswers]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Report that takes exam number and the student ID then returns the Questions in this exam with the student answers. 
CREATE   PROCEDURE [dbo].[SP_StudentAnswers]
    @exam_id INT,
    @stud_id INT
AS
BEGIN
    WITH AggregatedChoices AS (
        SELECT
            examQ.QuestionID,
            STRING_AGG('Choice ' + CONVERT(VARCHAR(10), choi.OrderInQuestion) + '. ' + choi.Body, ', ') AS Question_Choices
			FROM ExamQuestions examQ
			JOIN Choice choi ON examQ.QuestionID = choi.QuestionID
			WHERE examQ.ExamID = @exam_id
			GROUP BY examQ.QuestionID)
    SELECT
        quest.Header,
        ac.Question_Choices,
        ans.ModelAnswer,
        ans.StudentAnswer
    FROM Answer ans
    JOIN AggregatedChoices ac ON ans.QuestionID = ac.QuestionID
    JOIN Question quest ON quest.ID = ans.QuestionID;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_TopicesInCourses]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




---Report that takes course ID and returns its topics 
Create    PROC [dbo].[SP_TopicesInCourses] 
   @CourseID int
as
select [Name] AS Topic_Name from Topic where CourseID = @CourseID
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateChoice]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdateChoice]
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
/****** Object:  StoredProcedure [dbo].[SP_UpdateExam]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdateExam]
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
/****** Object:  StoredProcedure [dbo].[SP_UpdateQuestion]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_UpdateQuestion]
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
/****** Object:  StoredProcedure [dbo].[Un_EnrollStudentInCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Un_EnrollStudentInCourse]
    @InstructorId INT,
    @StudentId INT,
    @CourseId INT
AS
BEGIN
    -- Check if the instructor is teaching the specified course
    IF EXISTS (
        SELECT 1
        FROM Teaches c JOIN Instructor i 
		ON c.InstructorId = i.Id
        WHERE i.Id = @InstructorId AND c.CourseId = @CourseId
    )
    BEGIN
        -- Check if the student is  already enrolled in the course
        IF  EXISTS (
            SELECT 1
            FROM  EnrollsIn SC
            WHERE SC.StudentID = @StudentId AND CourseId = @CourseId
        )
        BEGIN
            -- UN-Enroll the student in the course
           DELETE FROM EnrollsIn
		   WHERE StudentId = @StudentId
		   AND CourseId = @CourseId
		   



			Raiserror( 'Student Un-enrolled successfully.',9,1)
        END
        ELSE
        BEGIN
            
			Raiserror( 'Student is already NOT EXISTS .',9,1)
        END
    END
    ELSE
    BEGIN
       
		Raiserror( 'Instructor is not assigned to the specified course',9,1)
    END
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdateCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[UpdateCourse]
    @CourseName NVARCHAR(100),
    @CourseCode INT,
    @UserID INT
	
	
AS
BEGIN
   
    IF EXISTS (
        SELECT 1
        FROM Instructor I
        WHERE I.ID = @UserId 
    
    )
    BEGIN
        
        IF EXISTS (
            SELECT 1
            FROM Course c
            WHERE c.ID = @CourseCode
        )
        BEGIN
            UPDATE Course
            SET Name = @CourseName
            WHERE ID = @CourseCode;
        END
        ELSE
        BEGIN
           
			Raiserror( 'Course does not exist Please Check ',9,1)
        END
    END
    ELSE
    BEGIN
        -- If the user doesn't have the required permissions, print a message or handle accordingly
       
		Raiserror( 'You do not have permission to update courses.',9,1)
        -- You can also use other methods to handle the situation, like logging, auditing, etc.
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateDepartment]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[UpdateDepartment]
	@DeptID INT,
	@NewDeptName NVARCHAR(100),
	@NewInstManager INT
AS
BEGIN
		UPDATE  Department 
		SET Name =@NewDeptName , InstructorManagerID =@NewInstManager
		WHERE  ID=@DeptID;
		
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateInstructor]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   PROCEDURE [dbo].[UpdateInstructor]
    @InstructorID INT,
    @Name NVARCHAR(100),
    @Role NVARCHAR(20),
    @Gender NVARCHAR(6),
    @DepartmentID INT
AS
BEGIN
	Begin TRY
		Begin Transaction
		SET NOCOUNT ON;

		-- Update data in Instructor table
		UPDATE [dbo].[Instructor]
		SET [Name] = @Name,
			[Role] = @Role,
			[Gender] = @Gender,
			[DepartmentID] = @DepartmentID
		WHERE [ID] = @InstructorID;


		
	END TRY
    BEGIN CATCH 
		ROLLBACK TRANSACTION;
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateInstructorByID]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--updateInstructorById
Create   PROCEDURE [dbo].[UpdateInstructorByID]
    @InstructorID INT,
    @Name NVARCHAR(100),
    @Role NVARCHAR(20),
    @Gender NVARCHAR(6),
    @DepartmentID INT,
    @CourseIDs CourseIDList READONLY
AS
BEGIN
	Begin TRY
		Begin Transaction
		SET NOCOUNT ON;

		-- Update data in Instructor table
		UPDATE [dbo].[Instructor]
		SET [Name] = @Name,
			[Role] = @Role,
			[Gender] = @Gender,
			[DepartmentID] = @DepartmentID
		WHERE [ID] = @InstructorID;

		-- Remove existing courses for the instructor
		DELETE FROM [dbo].[Teaches]
		WHERE [InstructorID] = @InstructorID;

		-- Insert new courses for the instructor
		 INSERT INTO [dbo].[Teaches] ([CourseID], [InstructorID], [StartDate])
		 SELECT CourseID, @InstructorID, GETDATE() FROM @CourseIDs;
		 COMMIT TRANSACTION;
	END TRY
    BEGIN CATCH 
		ROLLBACK TRANSACTION;
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudent]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC SelectStudents ;
----====================================================================================================--

--GO

CREATE   PROCEDURE [dbo].[UpdateStudent]
		@IDToSelect INT,
		@NewName  NVARCHAR(100)
AS
BEGIN
    UPDATE  Student 
	SET Name = @NewName
	WHERE ID =@IDToSelect;    
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentEnrollmentInCourse]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[UpdateStudentEnrollmentInCourse]
@StudentID INT,
@CourseID INT,
@CourseActive BIT,
@EnrollDate DATE,
@StartDate DATE,
@EndDate DATE,
@IsPassed BIT,
@IsCorrective BIT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		UPDATE [dbo].[EnrollsIn] 
		SET 
		[CourseActive] = @CourseActive,
		[EnrollDate] = @EnrollDate,
		[StartDate] = @StartDate,
		[EndDate] = @EndDate,
		[IsPassed] = @IsPassed,
		[IsCorrective] = @IsCorrective
		WHERE [StudentID] = @StudentID AND [CourseID] = @CourseID;
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTeaches]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[UpdateTeaches]
@InstructorID INT,
@CourseID INT,
@StartDate DATE,
@EndDate DATE
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
		
		UPDATE[dbo].[Teaches]
		SET
		[StartDate] = @StartDate,
		[EndDate] = @EndDate
		WHERE [InstructorID] = @InstructorID AND [CourseID] = @CourseID
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTopic]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[UpdateTopic]
    @TopicID INT,
    @CourseID INT,
    @NewTopicName VARCHAR(100),
	@InstID INT
AS
	 IF EXISTS (SELECT 1 FROM Instructor WHERE ID = @InstID)
BEGIN
    IF EXISTS (SELECT 1 FROM Course WHERE ID = @CourseID) AND
       EXISTS (SELECT 1 FROM Topic WHERE ID = @TopicID AND CourseID = @CourseID) 
	   
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM Topic WHERE ID <> @TopicID AND Name = @NewTopicName AND CourseID = @CourseID)
        BEGIN
            UPDATE Topic
            SET Name = @NewTopicName
            WHERE ID = @TopicID AND CourseID = @CourseID;

           
			Raiserror( 'Topic updated successfully.',9,1)
        END
        ELSE
        BEGIN
           
			Raiserror( 'Another topic with the same name already exists in the course.',9,1)
        END
    END
    ELSE
    BEGIN
        
		Raiserror( 'Course or Topic not found. Please check CourseID and TopicID .',9,1)
    END
END
ELSE
		BEGIN
		
		Raiserror( 'Please check InstructorID.',9,1)
		END

GO
/****** Object:  StoredProcedure [dbo].[UpdateUserAccountWithHash]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[UpdateUserAccountWithHash]
	@ID INT,
	@UserName NVARCHAR(100), 
	@PasswordHash NVARCHAR(64),
	@Type NVARCHAR(20)
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
			IF EXISTS (SELECT * FROM [UserAccountType] WHERE [UserAccountTypeID] = @Type)
				BEGIN
					UPDATE [dbo].[UserAccount]
					SET
					[UserName] = @UserName,
					[PasswordHash] = @PasswordHash,
					[Type] = @Type
					WHERE [ID] = @ID

					SELECT * FROM [dbo].[UserAccount] WHERE [ID] = @ID
					COMMIT TRANSACTION
				END
			ELSE
				BEGIN
					RETURN -1;
				END
	END TRY
	BEGIN CATCH
		ROLLBACK
		RETURN -1;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserAccountWithPassword]    Script Date: 2/29/2024 4:46:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[UpdateUserAccountWithPassword]
	@ID INT,
	@UserName NVARCHAR(100), 
	@Password NVARCHAR(64),
	@Type NVARCHAR(20)
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		SET NOCOUNT ON;
			IF EXISTS (SELECT * FROM [UserAccountType] WHERE [UserAccountTypeID] = @Type)
				BEGIN
					UPDATE [dbo].[UserAccount]
					SET
					[UserName] = @UserName,
					[PasswordHash] = [dbo].[FnS_SHA256NVARCHAR](@Password),
					[Type] = @Type
					WHERE [ID] = @ID

					SELECT * FROM [dbo].[UserAccount] WHERE [ID] = @ID
					COMMIT TRANSACTION
				END
			ELSE
				BEGIN
					RETURN -1;
				END
	END TRY
	BEGIN CATCH
		ROLLBACK
		RETURN -1;
	END CATCH
END
GO
