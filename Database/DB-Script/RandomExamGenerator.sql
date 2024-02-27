USE [RandomExamGenerator]
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Question', N'COLUMN',N'ModelAnswer'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Question', @level2type=N'COLUMN',@level2name=N'ModelAnswer'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Exam', N'COLUMN',N'StudentTimeToSolve'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Exam', @level2type=N'COLUMN',@level2name=N'StudentTimeToSolve'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Exam', N'COLUMN',N'TotalTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Exam', @level2type=N'COLUMN',@level2name=N'TotalTime'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Answer', N'COLUMN',N'StudentAnswer'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Answer', @level2type=N'COLUMN',@level2name=N'StudentAnswer'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Answer', N'COLUMN',N'ModelAnswer'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Answer', @level2type=N'COLUMN',@level2name=N'ModelAnswer'
GO
/****** Object:  Trigger [TIOD_PreventDeletionOfTakenExamQuestions]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TRIGGER IF EXISTS [dbo].[TIOD_PreventDeletionOfTakenExamQuestions]
GO
/****** Object:  Trigger [UpdateExam]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TRIGGER IF EXISTS [dbo].[UpdateExam]
GO
/****** Object:  Trigger [TIOD_PreventDeletionOfTakenExams]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TRIGGER IF EXISTS [dbo].[TIOD_PreventDeletionOfTakenExams]
GO
/****** Object:  Trigger [CheckExamInfo]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TRIGGER IF EXISTS [dbo].[CheckExamInfo]
GO
/****** Object:  StoredProcedure [dbo].[UpdateTopic]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateTopic]
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudent]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateStudent]
GO
/****** Object:  StoredProcedure [dbo].[UpdateInstructorByID]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateInstructorByID]
GO
/****** Object:  StoredProcedure [dbo].[UpdateCourse]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[UpdateCourse]
GO
/****** Object:  StoredProcedure [dbo].[Un_EnrollStudentInCourse]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Un_EnrollStudentInCourse]
GO
/****** Object:  StoredProcedure [dbo].[SP_TopicesInCourses]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_TopicesInCourses]
GO
/****** Object:  StoredProcedure [dbo].[SP_StudentAnswers]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_StudentAnswers]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginWithPassword]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_LoginWithPassword]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginWithHash]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_LoginWithHash]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginAsStudentWithPassword]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_LoginAsStudentWithPassword]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginAsStudentWithHash]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_LoginAsStudentWithHash]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginAsInstructorWithPassword]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_LoginAsInstructorWithPassword]
GO
/****** Object:  StoredProcedure [dbo].[SP_LoginAsInstructorWithHash]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_LoginAsInstructorWithHash]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetStudentsByDepartment]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_GetStudentsByDepartment]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetStudentGrades]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_GetStudentGrades]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCoursesByInstructor]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_GetCoursesByInstructor]
GO
/****** Object:  StoredProcedure [dbo].[SP_ExamQuestions]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_ExamQuestions]
GO
/****** Object:  StoredProcedure [dbo].[SP_CreateStudentAnswer]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SP_CreateStudentAnswer]
GO
/****** Object:  StoredProcedure [dbo].[SelectTopics]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SelectTopics]
GO
/****** Object:  StoredProcedure [dbo].[SelectTopic]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SelectTopic]
GO
/****** Object:  StoredProcedure [dbo].[SelectStudents]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SelectStudents]
GO
/****** Object:  StoredProcedure [dbo].[SelectStudent]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SelectStudent]
GO
/****** Object:  StoredProcedure [dbo].[ReadTopic]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ReadTopic]
GO
/****** Object:  StoredProcedure [dbo].[insertNewQuestion]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[insertNewQuestion]
GO
/****** Object:  StoredProcedure [dbo].[InsertInstructorWithCourses]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[InsertInstructorWithCourses]
GO
/****** Object:  StoredProcedure [dbo].[InsertCourse]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[InsertCourse]
GO
/****** Object:  StoredProcedure [dbo].[insertChoice]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[insertChoice]
GO
/****** Object:  StoredProcedure [dbo].[GetTotalTimeForExam]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetTotalTimeForExam]
GO
/****** Object:  StoredProcedure [dbo].[GetStudentCourses]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetStudentCourses]
GO
/****** Object:  StoredProcedure [dbo].[GetStudentAnswerInExam]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetStudentAnswerInExam]
GO
/****** Object:  StoredProcedure [dbo].[GetQuestionsForExam]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetQuestionsForExam]
GO
/****** Object:  StoredProcedure [dbo].[GetInstructorCoursesByID]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetInstructorCoursesByID]
GO
/****** Object:  StoredProcedure [dbo].[GetExamQuestionsNum]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetExamQuestionsNum]
GO
/****** Object:  StoredProcedure [dbo].[GetExamInfoForStudent]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetExamInfoForStudent]
GO
/****** Object:  StoredProcedure [dbo].[GetExamHistory]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetExamHistory]
GO
/****** Object:  StoredProcedure [dbo].[GetExam]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetExam]
GO
/****** Object:  StoredProcedure [dbo].[GetCoursesTaughtByInstructor]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetCoursesTaughtByInstructor]
GO
/****** Object:  StoredProcedure [dbo].[GetChoicesForQuestion]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetChoicesForQuestion]
GO
/****** Object:  StoredProcedure [dbo].[GetAllInstructors]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllInstructors]
GO
/****** Object:  StoredProcedure [dbo].[GetAllDepartments]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllDepartments]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoursesForStudent]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllCoursesForStudent]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCourses]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[GetAllCourses]
GO
/****** Object:  StoredProcedure [dbo].[ExamGeneration]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ExamGeneration]
GO
/****** Object:  StoredProcedure [dbo].[EnrollStudentInCourse]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[EnrollStudentInCourse]
GO
/****** Object:  StoredProcedure [dbo].[DeleteTopic]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteTopic]
GO
/****** Object:  StoredProcedure [dbo].[DeleteStudent]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteStudent]
GO
/****** Object:  StoredProcedure [dbo].[DeleteInstructorToCourse]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteInstructorToCourse]
GO
/****** Object:  StoredProcedure [dbo].[DeleteInstructorByID]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteInstructorByID]
GO
/****** Object:  StoredProcedure [dbo].[DeleteCourse]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[DeleteCourse]
GO
/****** Object:  StoredProcedure [dbo].[CreateTopic]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CreateTopic]
GO
/****** Object:  StoredProcedure [dbo].[CorrectExam]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CorrectExam]
GO
/****** Object:  StoredProcedure [dbo].[checkStudentHaveExam]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[checkStudentHaveExam]
GO
/****** Object:  StoredProcedure [dbo].[AssignInstructorToCourse]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AssignInstructorToCourse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
ALTER TABLE [dbo].[Student] DROP CONSTRAINT IF EXISTS [CK_Student_Gender]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Question]') AND type in (N'U'))
ALTER TABLE [dbo].[Question] DROP CONSTRAINT IF EXISTS [CK_Question_Points]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Question]') AND type in (N'U'))
ALTER TABLE [dbo].[Question] DROP CONSTRAINT IF EXISTS [CK_Question_ModelAnswer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor]') AND type in (N'U'))
ALTER TABLE [dbo].[Instructor] DROP CONSTRAINT IF EXISTS [CK_Instructor_Gender]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exam]') AND type in (N'U'))
ALTER TABLE [dbo].[Exam] DROP CONSTRAINT IF EXISTS [CK_Exam_TotalTime]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exam]') AND type in (N'U'))
ALTER TABLE [dbo].[Exam] DROP CONSTRAINT IF EXISTS [CK_Exam_TotalPoints]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exam]') AND type in (N'U'))
ALTER TABLE [dbo].[Exam] DROP CONSTRAINT IF EXISTS [CK_Exam_SuccessPercent]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exam]') AND type in (N'U'))
ALTER TABLE [dbo].[Exam] DROP CONSTRAINT IF EXISTS [CK_Exam_StudentTimeToSolve]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exam]') AND type in (N'U'))
ALTER TABLE [dbo].[Exam] DROP CONSTRAINT IF EXISTS [CK_Exam_StudentScore]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Choice]') AND type in (N'U'))
ALTER TABLE [dbo].[Choice] DROP CONSTRAINT IF EXISTS [CK_Choice_OrderInQuestion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Answer]') AND type in (N'U'))
ALTER TABLE [dbo].[Answer] DROP CONSTRAINT IF EXISTS [CK_Answer_StudentAnswer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Answer]') AND type in (N'U'))
ALTER TABLE [dbo].[Answer] DROP CONSTRAINT IF EXISTS [CK_Answer_ModelAnswer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Answer]') AND type in (N'U'))
ALTER TABLE [dbo].[Answer] DROP CONSTRAINT IF EXISTS [CK_Answer_Grade]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAccount]') AND type in (N'U'))
ALTER TABLE [dbo].[UserAccount] DROP CONSTRAINT IF EXISTS [FK_UserAccount_UserAccountType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TopicQuestions]') AND type in (N'U'))
ALTER TABLE [dbo].[TopicQuestions] DROP CONSTRAINT IF EXISTS [FK_TopicQuestions_Topic]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TopicQuestions]') AND type in (N'U'))
ALTER TABLE [dbo].[TopicQuestions] DROP CONSTRAINT IF EXISTS [FK_TopicQuestions_Question]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Topic]') AND type in (N'U'))
ALTER TABLE [dbo].[Topic] DROP CONSTRAINT IF EXISTS [FK_Topic_Course]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teaches]') AND type in (N'U'))
ALTER TABLE [dbo].[Teaches] DROP CONSTRAINT IF EXISTS [FK_Teaches_Instructor]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teaches]') AND type in (N'U'))
ALTER TABLE [dbo].[Teaches] DROP CONSTRAINT IF EXISTS [FK_Teaches_Course]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
ALTER TABLE [dbo].[Student] DROP CONSTRAINT IF EXISTS [FK_Student_Department]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Question]') AND type in (N'U'))
ALTER TABLE [dbo].[Question] DROP CONSTRAINT IF EXISTS [FK_Question_QuestionType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Question]') AND type in (N'U'))
ALTER TABLE [dbo].[Question] DROP CONSTRAINT IF EXISTS [FK_Question_QuestionDifficulty]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Question]') AND type in (N'U'))
ALTER TABLE [dbo].[Question] DROP CONSTRAINT IF EXISTS [FK_Question_Course]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor]') AND type in (N'U'))
ALTER TABLE [dbo].[Instructor] DROP CONSTRAINT IF EXISTS [FK_Instructor_WorksIn_Department]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor]') AND type in (N'U'))
ALTER TABLE [dbo].[Instructor] DROP CONSTRAINT IF EXISTS [FK_Instructor_UserAccount]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor]') AND type in (N'U'))
ALTER TABLE [dbo].[Instructor] DROP CONSTRAINT IF EXISTS [FK_Instructor_InstructorRole]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamQuestions]') AND type in (N'U'))
ALTER TABLE [dbo].[ExamQuestions] DROP CONSTRAINT IF EXISTS [FK_ExamQuestions_Question]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamQuestions]') AND type in (N'U'))
ALTER TABLE [dbo].[ExamQuestions] DROP CONSTRAINT IF EXISTS [FK_ExamQuestions_Exam]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exam]') AND type in (N'U'))
ALTER TABLE [dbo].[Exam] DROP CONSTRAINT IF EXISTS [FK_Exam_Student]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exam]') AND type in (N'U'))
ALTER TABLE [dbo].[Exam] DROP CONSTRAINT IF EXISTS [FK_Exam_Instructor]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exam]') AND type in (N'U'))
ALTER TABLE [dbo].[Exam] DROP CONSTRAINT IF EXISTS [FK_Exam_Course]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EnrollsIn]') AND type in (N'U'))
ALTER TABLE [dbo].[EnrollsIn] DROP CONSTRAINT IF EXISTS [FK_EnrollsIn_Student]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EnrollsIn]') AND type in (N'U'))
ALTER TABLE [dbo].[EnrollsIn] DROP CONSTRAINT IF EXISTS [FK_EnrollsIn_Course]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DepartmentCourses]') AND type in (N'U'))
ALTER TABLE [dbo].[DepartmentCourses] DROP CONSTRAINT IF EXISTS [FK_DepartmentCourses_Department]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DepartmentCourses]') AND type in (N'U'))
ALTER TABLE [dbo].[DepartmentCourses] DROP CONSTRAINT IF EXISTS [FK_DepartmentCourses_Course]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
ALTER TABLE [dbo].[Department] DROP CONSTRAINT IF EXISTS [FK_Department_Has_Instructor_Manager]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Choice]') AND type in (N'U'))
ALTER TABLE [dbo].[Choice] DROP CONSTRAINT IF EXISTS [FK_Choice_Question]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Answer]') AND type in (N'U'))
ALTER TABLE [dbo].[Answer] DROP CONSTRAINT IF EXISTS [FK_Answer_Student]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Answer]') AND type in (N'U'))
ALTER TABLE [dbo].[Answer] DROP CONSTRAINT IF EXISTS [FK_Answer_Question]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Answer]') AND type in (N'U'))
ALTER TABLE [dbo].[Answer] DROP CONSTRAINT IF EXISTS [FK_Answer_Exam]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
ALTER TABLE [dbo].[Student] DROP CONSTRAINT IF EXISTS [DF_Student_DepartmentID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
ALTER TABLE [dbo].[Student] DROP CONSTRAINT IF EXISTS [DF_Student_IsDeleted]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor]') AND type in (N'U'))
ALTER TABLE [dbo].[Instructor] DROP CONSTRAINT IF EXISTS [DF_Instructor_IsDeleted]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exam]') AND type in (N'U'))
ALTER TABLE [dbo].[Exam] DROP CONSTRAINT IF EXISTS [DF_Exam_StudentScore]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EnrollsIn]') AND type in (N'U'))
ALTER TABLE [dbo].[EnrollsIn] DROP CONSTRAINT IF EXISTS [DF_EnrollsIn_IsPassed]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
ALTER TABLE [dbo].[Department] DROP CONSTRAINT IF EXISTS [DF_Department_InstructorManagerID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Answer]') AND type in (N'U'))
ALTER TABLE [dbo].[Answer] DROP CONSTRAINT IF EXISTS [DF_Answer_Grade]
GO
/****** Object:  Index [UQ_UserAccount_UserName]    Script Date: 2/27/2024 6:31:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAccount]') AND type in (N'U'))
ALTER TABLE [dbo].[UserAccount] DROP CONSTRAINT IF EXISTS [UQ_UserAccount_UserName]
GO
/****** Object:  Table [dbo].[UserAccountType]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[UserAccountType]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[UserAccount]
GO
/****** Object:  Table [dbo].[TopicQuestions]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[TopicQuestions]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[Topic]
GO
/****** Object:  Table [dbo].[Teaches]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[Teaches]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[Student]
GO
/****** Object:  Table [dbo].[QuestionType]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[QuestionType]
GO
/****** Object:  Table [dbo].[QuestionDifficulty]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[QuestionDifficulty]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[Question]
GO
/****** Object:  Table [dbo].[InstructorRole]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[InstructorRole]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[Instructor]
GO
/****** Object:  Table [dbo].[ExamQuestions]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[ExamQuestions]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[Exam]
GO
/****** Object:  Table [dbo].[DepartmentCourses]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[DepartmentCourses]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[Department]
GO
/****** Object:  Table [dbo].[Choice]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[Choice]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[Answer]
GO
/****** Object:  View [dbo].[CourseView]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP VIEW IF EXISTS [dbo].[CourseView]
GO
/****** Object:  Table [dbo].[EnrollsIn]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[EnrollsIn]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TABLE IF EXISTS [dbo].[Course]
GO
/****** Object:  UserDefinedFunction [dbo].[ifTeach]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP FUNCTION IF EXISTS [dbo].[ifTeach]
GO
/****** Object:  UserDefinedFunction [dbo].[ifEnroll]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP FUNCTION IF EXISTS [dbo].[ifEnroll]
GO
/****** Object:  UserDefinedFunction [dbo].[FnS_SHA256NVARCHAR]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP FUNCTION IF EXISTS [dbo].[FnS_SHA256NVARCHAR]
GO
/****** Object:  UserDefinedFunction [dbo].[checkTimeConflict]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP FUNCTION IF EXISTS [dbo].[checkTimeConflict]
GO
/****** Object:  UserDefinedTableType [dbo].[StudentAnswer]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TYPE IF EXISTS [dbo].[StudentAnswer]
GO
/****** Object:  UserDefinedTableType [dbo].[CourseIDList]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP TYPE IF EXISTS [dbo].[CourseIDList]
GO
/****** Object:  User [Instructor]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP USER IF EXISTS [Instructor]
GO
/****** Object:  User [Student]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP USER IF EXISTS [Student]
GO
USE [master]
GO
/****** Object:  Database [RandomExamGenerator]    Script Date: 2/27/2024 6:31:03 PM ******/
DROP DATABASE IF EXISTS [RandomExamGenerator]
GO
/****** Object:  Database [RandomExamGenerator]    Script Date: 2/27/2024 6:31:03 PM ******/
CREATE DATABASE [RandomExamGenerator]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RandomExamGenerator', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RandomExamGenerator.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RandomExamGenerator_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RandomExamGenerator_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 COLLATE SQL_Latin1_General_CP1_CI_AS
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [RandomExamGenerator] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RandomExamGenerator].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RandomExamGenerator] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET ARITHABORT OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RandomExamGenerator] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RandomExamGenerator] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RandomExamGenerator] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RandomExamGenerator] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET RECOVERY FULL 
GO
ALTER DATABASE [RandomExamGenerator] SET  MULTI_USER 
GO
ALTER DATABASE [RandomExamGenerator] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RandomExamGenerator] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RandomExamGenerator] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RandomExamGenerator] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RandomExamGenerator] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RandomExamGenerator] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RandomExamGenerator', N'ON'
GO
ALTER DATABASE [RandomExamGenerator] SET QUERY_STORE = ON
GO
ALTER DATABASE [RandomExamGenerator] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [RandomExamGenerator]
GO
/****** Object:  User [Student]    Script Date: 2/27/2024 6:31:03 PM ******/
CREATE USER [Student] FOR LOGIN [Student] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Instructor]    Script Date: 2/27/2024 6:31:03 PM ******/
CREATE USER [Instructor] FOR LOGIN [Instructor] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Student]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Student]
GO
ALTER ROLE [db_owner] ADD MEMBER [Instructor]
GO
/****** Object:  UserDefinedTableType [dbo].[CourseIDList]    Script Date: 2/27/2024 6:31:04 PM ******/
CREATE TYPE [dbo].[CourseIDList] AS TABLE(
	[CourseID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[StudentAnswer]    Script Date: 2/27/2024 6:31:04 PM ******/
CREATE TYPE [dbo].[StudentAnswer] AS TABLE(
	[QuestionID] [int] NULL,
	[SAnswer] [int] NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[checkTimeConflict]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  UserDefinedFunction [dbo].[FnS_SHA256NVARCHAR]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  UserDefinedFunction [dbo].[ifEnroll]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  UserDefinedFunction [dbo].[ifTeach]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnrollsIn]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnrollsIn](
	[StudentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[CourseActive] [bit] NOT NULL,
	[EnrollDate] [date] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[IsPassed] [bit] NULL,
	[IsCorrective] [bit] NULL,
 CONSTRAINT [PK_EnrollsIn] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[CourseView]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [dbo].[CourseView] 
AS
SELECT C.Name , COUNT(S.StudentID) AS [StudentCount]
FROM Course C JOIN EnrollsIn S
ON C.ID = S.CourseID
GROUP BY C.Name;
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[StudentID] [int] NOT NULL,
	[ExamID] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
	[ModelAnswer] [int] NOT NULL,
	[StudentAnswer] [int] NOT NULL,
	[Grade] [int] NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[ExamID] ASC,
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Choice]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choice](
	[QuestionID] [int] NOT NULL,
	[OrderInQuestion] [int] NOT NULL,
	[Body] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsAnswer] [bit] NOT NULL,
 CONSTRAINT [PK_Choice] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC,
	[OrderInQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[InstructorManagerID] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartmentCourses]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentCourses](
	[DepartmentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_DepartmentCourses] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TotalPoints] [int] NULL,
	[TotalTime] [int] NOT NULL,
	[ScheduledTime] [datetime] NOT NULL,
	[SuccessPercent] [float] NOT NULL,
	[InstructorID] [int] NULL,
	[CourseID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[StudentScore] [float] NULL,
	[StudentTimeToSolve] [int] NULL,
	[IsStudentPassed] [bit] NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamQuestions]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamQuestions](
	[ExamID] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
 CONSTRAINT [PK_ExamQuestions] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC,
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Role] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Gender] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InstructorRole]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstructorRole](
	[InstructorRoleID] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_InstructorRole] PRIMARY KEY CLUSTERED 
(
	[InstructorRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ModelAnswer] [int] NOT NULL,
	[Difficulty] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Header] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CourseID] [int] NOT NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionDifficulty]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionDifficulty](
	[QuestionDifficultyID] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_QuestionDifficulty] PRIMARY KEY CLUSTERED 
(
	[QuestionDifficultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionType]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionType](
	[QuestionTypeID] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_QuestionType] PRIMARY KEY CLUSTERED 
(
	[QuestionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Gender] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Birthdate] [date] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teaches]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teaches](
	[CourseID] [int] NOT NULL,
	[InstructorID] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Teaches] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC,
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[Name] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Topic_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopicQuestions]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopicQuestions](
	[TopicID] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
 CONSTRAINT [PK_TopicQuestions] PRIMARY KEY CLUSTERED 
(
	[TopicID] ASC,
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PasswordHash] [nvarchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Type] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UserName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccountType]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccountType](
	[UserAccountTypeID] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_UserAccountType] PRIMARY KEY CLUSTERED 
(
	[UserAccountTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (1, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (1, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (2, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (2, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (3, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (3, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (4, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (4, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (5, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (5, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (6, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (6, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (7, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (7, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (8, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (8, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (9, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (9, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (10, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (10, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (11, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (11, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (12, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (12, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (13, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (13, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (14, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (14, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (15, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (15, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (16, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (16, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (17, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (17, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (18, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (18, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (19, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (19, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (20, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (20, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (21, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (21, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (22, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (22, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (23, 1, N'can run on PC’s and larger system', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (23, 2, N'is multitasking', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (23, 3, N'is multiuser', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (23, 4, N'all of these', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (24, 1, N'Time sharing', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (24, 2, N'Multi-tasking', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (24, 3, N'Operating environment', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (24, 4, N'Spreadsheet', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (25, 1, N'Real time system', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (25, 2, N'Time sharing system', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (25, 3, N'Quick response system', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (25, 4, N'Batch system', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (26, 1, N'1', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (26, 2, N'2', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (26, 3, N'3', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (26, 4, N'4', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (27, 1, N'Batch and interactive', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (27, 2, N'Sequential and real time', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (27, 3, N'Batch and time share', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (27, 4, N'Sequential and direct', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (28, 1, N'Middle', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (28, 2, N'Lower', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (28, 3, N'Upper', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (28, 4, N'all of these', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (29, 1, N'A graphic display device', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (29, 2, N'A line printer used to print the output of a number of jobs', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (29, 3, N'A secondary storage device in a virtual memory system', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (29, 4, N'A terminal used to enter input data to a running program', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (30, 1, N'Interrupt servicing', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (30, 2, N'Interrupt handling', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (30, 3, N'Polling', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (30, 4, N'Spooling', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (31, 1, N'Multi-tasking', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (31, 2, N'Multiprogramming', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (31, 3, N'Batch operating system', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (31, 4, N'None of these', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (32, 1, N'First input-output scheduling', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (32, 2, N'First in first out scheduling', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (32, 3, N'Free input free output', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (32, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (33, 1, N'Log files', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (33, 2, N'Input devices', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (33, 3, N'Output devices', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (33, 4, N'All of the above', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (34, 1, N'BIOS', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (34, 2, N'Software programs', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (34, 3, N'Hardware devices', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (34, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (35, 1, N'Makes use of log files to do basic task', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (35, 2, N'One shell seems to be shared', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (35, 3, N'Allows users to use one system with two different terminals', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (35, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (36, 1, N'Multiple individual tasks', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (36, 2, N'Similar types of tasks are grouped together', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (36, 3, N'Tasks operating at different systems', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (36, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (37, 1, N'Log files', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (37, 2, N'Output types for file formats', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (37, 3, N'Software programs', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (37, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (38, 1, N'Global variables, personal address', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (38, 2, N'Shutdown', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (38, 3, N'Restarting services', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (38, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (39, 1, N'PSOS', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (39, 2, N'linuxRT', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (39, 3, N'VRTX', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (39, 4, N'Windows', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (40, 1, N'notepad', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (40, 2, N'New program', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (40, 3, N'Running process', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (40, 4, N'Logfile', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (41, 1, N'Maintaining recycle bin', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (41, 2, N'Transfer files', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (41, 3, N'Opens a program', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (41, 4, N'All of the above', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (42, 1, N'Restarts all the processes', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (42, 2, N'Shuts down the operating system completely', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (42, 3, N'Terminates all running programs completely', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (42, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (43, 1, N'A mobile device', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (43, 2, N'An operating system', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (43, 3, N'Hardware devices', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (43, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (44, 1, N'File format attribute', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (44, 2, N'Font allocation tree', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (44, 3, N'File allocation table', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (44, 4, N'Font attribute table', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (45, 1, N'Creating animations and other visual effects', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (45, 2, N'User Interface', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (45, 3, N'Visual effects', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (45, 4, N'User experience', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (46, 1, N'Element Object', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (46, 2, N'Document Object', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (46, 3, N'Both Element and Document Object', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (46, 4, N'Data object', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (47, 1, N'Using document object', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (47, 2, N'Registering appropriate event handlers', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (47, 3, N'Using element object', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (47, 4, N'Using data element', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (48, 1, N'XMLHttpResponse', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (48, 2, N'XMLRequest', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (48, 3, N'XMLHttpRequest', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (48, 4, N'XMLHttps', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (49, 1, N'Data storage', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (49, 2, N'Graphics APIs', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (49, 3, N'Other APIs for web apps', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (49, 4, N'Networking', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (50, 1, N'Data storage', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (50, 2, N'Networking', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (50, 3, N'XMLHttpRequest object', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (50, 4, N'Graphics APIs', 0)
GO
SET IDENTITY_INSERT [dbo].[Course] ON 
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (1, N'Client Side Technology')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (2, N'Operating Systems')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (3, N'Database Systems')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (4, N'Networks')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (5, N'C Programming')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (6, N'Object Oriented Programming')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (7, N'XML')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (8, N'Software Engineering')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (9, N'Advanced SQL')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (10, N'Data Structures and Algorithms')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (11, N'Unified Modeling Language (UML)')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (12, N'Agile')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (13, N'C#')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (14, N'Java')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (15, N'Design Patterns')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (16, N'ASP .NET Core MVC')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (17, N'Machine Learning')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (18, N'Data Analysis')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (19, N'Data Mining Algorithms')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (20, N'First Order Logic')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (21, N'Abstract Algebra')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (22, N'Node JS')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (23, N'PHP Fundamentals')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (24, N'IOT Sensors')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (25, N'Arduino Fundamentals')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (26, N'Python Fundamentals')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (27, N'Photoshop Fundamentals')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (28, N'Painting Fundamentals')
GO
INSERT [dbo].[Course] ([ID], [Name]) VALUES (29, N'Unreal Enginge Fundamentals')
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (1, N'SD', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (2, N'Java', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (3, N'Game Development', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (4, N'English', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (5, N'Soft Skills', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (6, N'Artistic Design', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (7, N'Embedded Systems', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (8, N'IOT', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (9, N'AI', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (10, N'Data', NULL)
GO
INSERT [dbo].[Department] ([ID], [Name], [InstructorManagerID]) VALUES (11, N'Open Source', NULL)
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
INSERT [dbo].[EnrollsIn] ([StudentID], [CourseID], [CourseActive], [EnrollDate], [StartDate], [EndDate], [IsPassed], [IsCorrective]) VALUES (6, 1, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-10-01' AS Date), CAST(N'2023-10-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[EnrollsIn] ([StudentID], [CourseID], [CourseActive], [EnrollDate], [StartDate], [EndDate], [IsPassed], [IsCorrective]) VALUES (6, 2, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-08-01' AS Date), CAST(N'2023-08-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[EnrollsIn] ([StudentID], [CourseID], [CourseActive], [EnrollDate], [StartDate], [EndDate], [IsPassed], [IsCorrective]) VALUES (7, 1, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-10-01' AS Date), CAST(N'2023-10-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[EnrollsIn] ([StudentID], [CourseID], [CourseActive], [EnrollDate], [StartDate], [EndDate], [IsPassed], [IsCorrective]) VALUES (7, 2, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-08-01' AS Date), CAST(N'2023-08-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (1, N'Hassan', N'lecturer', N'male', 1, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (2, N'Peter', N'lecturer', N'male', 2, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (3, N'Sondos', N'lecturer', N'female', 3, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (4, N'Mohanad', N'lecturer', N'male', 1, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (5, N'Yasmeen', N'lecturer', N'female', 1, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (17, N'Ebtsam', N'lecturer', N'female', 4, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (25, N'Gylan', N'lecturer', N'female', 5, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (28, N'Hany', N'lecturer', N'male', 6, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (32, N'Kamel', N'lecturer', N'male', 7, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (37, N'Mohamad', N'lecturer', N'male', 8, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (40, N'Marian', N'lecturer', N'female', 9, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (41, N'Nagwa', N'lecturer', N'female', 10, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (44, N'Olievia', N'lecturer', N'female', 11, 0)
GO
INSERT [dbo].[Instructor] ([ID], [Name], [Role], [Gender], [DepartmentID], [IsDeleted]) VALUES (54, N'Warda', N'lecturer', N'female', 3, 0)
GO
INSERT [dbo].[InstructorRole] ([InstructorRoleID]) VALUES (N'head')
GO
INSERT [dbo].[InstructorRole] ([InstructorRoleID]) VALUES (N'lecturer')
GO
INSERT [dbo].[InstructorRole] ([InstructorRoleID]) VALUES (N'supervisor')
GO
INSERT [dbo].[InstructorRole] ([InstructorRoleID]) VALUES (N'ta')
GO
SET IDENTITY_INSERT [dbo].[Question] ON 
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (1, N'tf', 1, N'easy', N'All files in a single-level directory must have unique names.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (2, N'tf', 1, N'easy', N'Without a mechanism such as an address-space identifier, the TLB must be flushed during a context switch.', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (3, N'tf', 2, N'easy', N'LOOK disk head scheduling offers no practical benefit over SCAN disk head scheduling.', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (4, N'tf', 1, N'easy', N'VFS allows dissimilar file systems to be accessed similarly.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (5, N'tf', 2, N'easy', N'A relative path name begins at the root directory', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (6, N'tf', 1, N'medium', N'An access matrix is generally sparse.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (7, N'tf', 1, N'medium', N'A cache is a region of faster memory that holds copies of data from a slower memory.', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (8, N'tf', 1, N'medium', N'It is not generally possible to prevent denial-of-service attacks.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (9, N'tf', 2, N'medium', N'It is easier to protect computer systems against malicious misuse than against accidental misuse.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (10, N'tf', 1, N'medium', N'An access matrix is generally sparse.', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (11, N'tf', 1, N'hard', N'A system call is triggered by software', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (12, N'tf', 1, N'hard', N'A system call is triggered by software', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (13, N'tf', 2, N'hard', N'Solaris, Windows XP, and Linux assign higher-priority threads/tasks longer time quanta and lower-priority tasks shorter time quanta.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (14, N'tf', 1, N'hard', N'The most complex scheduling algorithms we discussed is the multilevel feedback-queue algorithm.', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (15, N'tf', 1, N'hard', N'In RR scheduling, the time quantum should be large with respect to the context-switch time.', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (16, N'tf', 2, N'hard', N'In a multi-threaded process, the threads share a single, common register set and stack.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (17, N'tf', 1, N'easy', N'In general, Windows system calls have longer, more descriptive names and UNIX system calls use shorter, less descriptive names.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (18, N'tf', 2, N'easy', N'Inverted page tables require each process to have its own page table.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (19, N'tf', 1, N'easy', N'Java condition variables must always be used in conjunction with a reentrant lock', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (20, N'tf', 2, N'easy', N'Protocols to prevent hold-and-wait conditions typically also prevent starvation.', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (21, N'tf', 1, N'easy', N'Mutex locks and binary semaphores are essentially the same thing.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (22, N'tf', 2, N'easy', N'A deadlock-free solution eliminates the possibility of starvation.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (23, N'smcq', 4, N'easy', N'UNIX operating system', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (24, N'smcq', 1, N'easy', N'Which of the following software is used to simplify using of system software?', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (25, N'smcq', 1, N'easy', N'What is the name of the operating system that reads and reacts in terms of actual time?', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (26, N'smcq', 4, N'easy', N'Computer system is divided into how many numbers of components?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (27, N'smcq', 1, N'easy', N'Two basic types of operating systems are', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (28, N'smcq', 3, N'easy', N'Operating system is resident in memory of which part?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (29, N'smcq', 2, N'easy', N'Which of the following is an example of a spooled device?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (30, N'smcq', 2, N'medium', N'Context switching is part of', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (31, N'smcq', 3, N'medium', N'Card reader is an example of', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (32, N'smcq', 2, N'hard', N'What is FIFO scheduling?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (33, N'smcq', 4, N'hard', N'What makes an operating system whole?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (34, N'smcq', 3, N'hard', N'What of the following isn’t directly related to the operating system?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (35, N'smcq', 3, N'hard', N' What is a time sharing operating system?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (36, N'smcq', 2, N'hard', N'What is a batch operating system?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (37, N'smcq', 2, N'hard', N'What are file extensions?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (38, N'smcq', 1, N'hard', N'What are the properties of processes in an operating system?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (39, N'smcq', 4, N'easy', N'Which one of the following isn’t considered a real-time operating system?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (40, N'smcq', 4, N'easy', N'Where are the errors and bugs recorded?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (41, N'smcq', 4, N'easy', N'What operations mentioned are done by an operating system?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (42, N'smcq', 1, N'easy', N'What does restarting an operating system do?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (43, N'smcq', 2, N'easy', N'Who needs a BIOS to function properly?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (44, N'smcq', 3, N'easy', N'What does FAT mean?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (45, N'smcq', 1, N'easy', N'The main purpose of JavaScript in web browser is to', 1, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (46, N'smcq', 3, N'hard', N'A JavaScript program can traverse and manipulate document content through', 1, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (47, N'smcq', 2, N'hard', N'The behaviour of the document elements can be defined by', 1, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (48, N'smcq', 3, N'easy', N'The service(s) that enables networking through scripted HTTP requests is', 1, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (49, N'smcq', 4, N'medium', N'The HTML5 specification does not includes', 1, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (50, N'smcq', 2, N'medium', N'Which of the following is not an advanced services?', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
INSERT [dbo].[QuestionDifficulty] ([QuestionDifficultyID]) VALUES (N'easy')
GO
INSERT [dbo].[QuestionDifficulty] ([QuestionDifficultyID]) VALUES (N'hard')
GO
INSERT [dbo].[QuestionDifficulty] ([QuestionDifficultyID]) VALUES (N'medium')
GO
INSERT [dbo].[QuestionType] ([QuestionTypeID]) VALUES (N'smcq')
GO
INSERT [dbo].[QuestionType] ([QuestionTypeID]) VALUES (N'tf')
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (6, N'Ahmad', N'male', CAST(N'2000-12-15' AS Date), 0, 3)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (7, N'Amir', N'male', CAST(N'2000-12-15' AS Date), 0, 1)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (8, N'Amany', N'female', CAST(N'2000-12-15' AS Date), 0, 7)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (9, N'Amin', N'male', CAST(N'2000-12-15' AS Date), 0, 3)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (10, N'Basem', N'female', CAST(N'2000-12-15' AS Date), 0, 7)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (11, N'Basma', N'female', CAST(N'2000-12-15' AS Date), 0, 6)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (12, N'Basant', N'female', CAST(N'2000-12-15' AS Date), 0, 2)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (13, N'Careem', N'male', CAST(N'2000-12-15' AS Date), 0, 4)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (14, N'Casandra', N'female', CAST(N'2000-12-15' AS Date), 0, 8)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (15, N'Dalia', N'female', CAST(N'2000-12-15' AS Date), 0, 1)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (16, N'Doaa', N'female', CAST(N'2000-12-15' AS Date), 0, 6)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (18, N'Essam', N'male', CAST(N'2000-12-15' AS Date), 0, 4)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (19, N'Eslam', N'male', CAST(N'2000-12-15' AS Date), 0, 2)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (20, N'Fatma', N'female', CAST(N'2000-12-15' AS Date), 0, 9)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (21, N'Fatin', N'female', CAST(N'2000-12-15' AS Date), 0, 3)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (22, N'Fawzy', N'male', CAST(N'2000-12-15' AS Date), 0, 5)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (23, N'Foaad', N'male', CAST(N'2000-12-15' AS Date), 0, 10)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (24, N'Gamal', N'male', CAST(N'2000-12-15' AS Date), 0, 9)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (26, N'Gom3a', N'male', CAST(N'2000-12-15' AS Date), 0, 4)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (27, N'Hosam', N'male', CAST(N'2000-12-15' AS Date), 0, 10)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (29, N'Heba', N'female', CAST(N'2000-12-15' AS Date), 0, 7)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (30, N'Hadeel', N'female', CAST(N'2000-12-15' AS Date), 0, 6)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (31, N'Hazem', N'male', CAST(N'2000-12-15' AS Date), 0, 4)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (33, N'Karima', N'female', CAST(N'2000-12-15' AS Date), 0, 7)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (34, N'Karma', N'female', CAST(N'2000-12-15' AS Date), 0, 8)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (35, N'Lisa', N'female', CAST(N'2000-12-15' AS Date), 0, 9)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (36, N'Laila', N'female', CAST(N'2000-12-15' AS Date), 0, 11)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (38, N'Mostafa', N'male', CAST(N'2000-12-15' AS Date), 0, 7)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (39, N'Mo3taz', N'male', CAST(N'2000-12-15' AS Date), 0, 5)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (42, N'Nader', N'male', CAST(N'2000-12-15' AS Date), 0, 11)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (43, N'Osman', N'male', CAST(N'2000-12-15' AS Date), 0, 10)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (45, N'Qamar', N'male', CAST(N'2000-12-15' AS Date), 0, 7)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (46, N'Sandy', N'female', CAST(N'2000-12-15' AS Date), 0, 6)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (47, N'Samir', N'male', CAST(N'2000-12-15' AS Date), 0, 11)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (48, N'Sha3ban', N'male', CAST(N'2000-12-15' AS Date), 0, 7)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (49, N'Tamer', N'male', CAST(N'2000-12-15' AS Date), 0, 5)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (50, N'Tamara', N'female', CAST(N'2000-12-15' AS Date), 0, 3)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (51, N'Vector', N'male', CAST(N'2000-12-15' AS Date), 0, 2)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (52, N'Wael', N'male', CAST(N'2000-12-15' AS Date), 0, 3)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (53, N'Waseem', N'male', CAST(N'2000-12-15' AS Date), 0, 10)
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Birthdate], [IsDeleted], [DepartmentID]) VALUES (55, N'Zahra', N'female', CAST(N'2000-12-15' AS Date), 0, 1)
GO
INSERT [dbo].[Teaches] ([CourseID], [InstructorID], [StartDate], [EndDate]) VALUES (1, 1, CAST(N'2023-10-01' AS Date), CAST(N'2023-10-20' AS Date))
GO
INSERT [dbo].[Teaches] ([CourseID], [InstructorID], [StartDate], [EndDate]) VALUES (1, 2, CAST(N'2023-10-01' AS Date), CAST(N'2023-10-20' AS Date))
GO
INSERT [dbo].[Teaches] ([CourseID], [InstructorID], [StartDate], [EndDate]) VALUES (2, 1, CAST(N'2023-08-01' AS Date), CAST(N'2023-08-20' AS Date))
GO
INSERT [dbo].[Teaches] ([CourseID], [InstructorID], [StartDate], [EndDate]) VALUES (2, 17, CAST(N'2023-08-01' AS Date), CAST(N'2023-08-20' AS Date))
GO
INSERT [dbo].[Teaches] ([CourseID], [InstructorID], [StartDate], [EndDate]) VALUES (6, 2, CAST(N'2023-10-01' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[Topic] ON 
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (1, 1, N'Markup Languagues')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (2, 1, N'Browser HTML Engine')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (3, 2, N'Systems Layers')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (4, 2, N'Memory Management')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (5, 2, N'Sceduling')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (6, 3, N'ERD')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (7, 3, N'Mapping')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (8, 3, N'SQL')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (9, 4, N'Network Topologies')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (10, 4, N'Network OSI Model')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (11, 4, N'Network Configuration')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (12, 5, N'Data Types in C')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (13, 5, N'I/O Operations')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (14, 5, N'Functional Programming')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (15, 5, N'Pointers in C')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (16, 5, N'Memory Stack and Heap')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (17, 6, N'Abstraction')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (18, 6, N'Encapsulation')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (19, 6, N'Inheritance')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (20, 6, N'Polymorphism')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (21, 7, N'XML Structure')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (23, 7, N'XML Schema')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (24, 7, N'XML Validation')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (25, 8, N'Software Development Life Cycle')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (26, 8, N'SDLC Process Models')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (27, 9, N'File Groups and Pages')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (28, 9, N'T-SQL Variables')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (29, 9, N'T-SQL Conditionals')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (30, 9, N'T-SQL Functions')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (31, 9, N'T-SQL Views')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (32, 9, N'T-SQL Stored Procedures')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (33, 9, N'T-SQL Indexers')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (34, 10, N'Stack Data Structure')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (35, 10, N'Queue Data Structure')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (36, 10, N'Linked List')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (37, 10, N'Bubble Sort')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (38, 10, N'Selection Sort')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (39, 10, N'Binary Search Tree')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (40, 10, N'Binary Search')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (41, 11, N'Activity Diagram')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (42, 11, N'Class Diagram')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (43, 11, N'Use Case Diagram')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (44, 12, N'SCRUM')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (45, 12, N'Lean')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (46, 13, N'C# Data Types')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (47, 13, N'C# OOP Features')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (48, 13, N'C# Generics')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (49, 13, N'C# Delegates')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (50, 13, N'C# Events')
GO
INSERT [dbo].[Topic] ([ID], [CourseID], [Name]) VALUES (51, 6, N'DS')
GO
SET IDENTITY_INSERT [dbo].[Topic] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAccount] ON 
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (1, N'30A7FBE6F0388AF8C514AB8A5B08758C0A3EBEA84B55CEAE32C4E517F515C044', N'instructor', N'Hassan')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (2, N'4A6A53021591045C4729DEC8FA7CFF4518A1BE58CCCA97D0EAD8C66976AC6AF9', N'instructor', N'Peter')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (3, N'87B156431ACF8B478296504918CD83B557369273174B3BBCD25250EF74DA5ED3', N'instructor', N'Sondos')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (4, N'C78450AFB47BEA2174406C7FBABB204497D7F7065B22B67465EEC073513C3573', N'instructor', N'Mohanad')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (5, N'9DB298348727498A3257AF9E3820D00C63DA4625ABCE520FFC72CBD26CF82396', N'instructor', N'Yasmeen')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (6, N'0960B3DF22D9B7D42BE422A6E5BADF80A77B6E323ED1AD49A378F06AED17F4FE', N'student', N'Ahmad')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (7, N'3AEE174E33E82F6FC73AFC7E69A09FF9759A782AD401C77073B48F6EA58215DE', N'student', N'Amir')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (8, N'F53F7B331C8CFCDAFAEA06BD063B196BFF45973F2943F1F6BE07DF5A30EA1457', N'student', N'Amany')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (9, N'D3023E8CB2E87592CE028ECD451C8223EC63AC41907BBD1FAC3A3227D705B370', N'student', N'Amin')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (10, N'BF054AE5F4795E08A3FA5FD36AFE2E664649B989111DFA9AFF2BCD13DA019DE7', N'student', N'Basem')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (11, N'8A30BBA65A7561A017C5E5E5A742D8AAA9E185458E4E3EE130636609DD5557F8', N'student', N'Basma')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (12, N'2CB96532AFEAD484B5E845C62B03C7337C6991F30571A5370971112A8DDAECA5', N'student', N'Basant')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (13, N'98AD28B792B3D334C9DAF8605EC44ABD72B001D3980DD648F82BC17D3CE2FB80', N'student', N'Careem')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (14, N'7DBFFD55B61A76E98B07B487DCCD717F27311B08DA2B7F8574F7AA3748233B3E', N'student', N'Casandra')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (15, N'6BB231CACE94A5D59921F529333EEBFB66FB2E18D81A28EEA6403A8DC1846F3B', N'student', N'Dalia')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (16, N'E1F7CC8B270C0060263824935FAAC809471C6AF7A7BA78B09D3B593CFFC29EE6', N'student', N'Doaa')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (17, N'E751C503AFECDBD5158BB5B3C8B977EC48C36F06ADBCEFCAC8ABC3083F0CF7B1', N'instructor', N'Ebtsam')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (18, N'9E80E406B48A005620A56829B0AC8D3C3F75C7480F7F80CC202C0EE22547273F', N'student', N'Essam')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (19, N'E48D083E847AED81915ABDF48485BC895D0F0A924D85634AE6FA034B1B898265', N'student', N'Eslam')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (20, N'EB26E1DA85DC150A3623F3D6FBE1D65FA1D41D8D3CB54F684E1C5538470B6438', N'student', N'Fatma')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (21, N'808C27CE7D5F9404EF5E92FDF85D697E28B23A871D6803F4CDC553E1C39A614D', N'student', N'Fatin')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (22, N'5838A3C9C09239752CD8C3075B0AC9F7FA7506F3EFE5E42DA3A6BD0CCF5F4837', N'student', N'Fawzy')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (23, N'FD26F747EF8CE1DB32232BA8BBAE58892A187E9436CE8ADF4D38B49585B70E06', N'student', N'Foaad')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (24, N'4467ECDDBA43D3FE0DBE8714BC0AF0252EDD9451FAD1D3D2C07C2A7DEF4035AC', N'student', N'Gamal')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (25, N'D51CFAFC85C1003C9FD62C902D76482F6FFF10AC1C1C126E4AEC273DC036C089', N'instructor', N'Gylan')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (26, N'DBCDD41F9CE92E1A33D4334E5365C62D635D7D9AA6097372FCAEEBE5824FA493', N'student', N'Gom3a')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (27, N'F6BCA4AA23A3895DACFBA41BFCE7FFC4A9CA4B059BFBC203492AA41CB0F4E4A2', N'student', N'Hosam')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (28, N'FEB50492BEFA0B989B00F217692F945A58B87D5A857104BD31CEB7CFE21ACC09', N'instructor', N'Hany')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (29, N'96F5E232C932A55AD87492C7608D073B2E658D05BE926B22CDD2091F981BCF2A', N'student', N'Heba')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (30, N'2864D076D05583033C3AE46AD4AA03D0DB60ADB8C8524899048D3D0F0A0302E8', N'student', N'Hadeel')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (31, N'5D686EA448E43F6F2DC0D24C88C58172D4FF58F42FEF310315421F6B6BB8C1B3', N'student', N'Hazem')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (32, N'36CD5DDD8F420433F21F9F152C05B24DB4E4087FE34F1938AB677FA3A5915AEF', N'instructor', N'Kamel')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (33, N'047D01345BA4B77B7772C0E9AEB9CF415B42C2671FFCCCF19B27E1841CAB73F0', N'student', N'Karima')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (34, N'55A0818B5B5516B20D132B255A6BE07E504B46FA72D7868F253F5CBA43FEDCCD', N'student', N'Karma')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (35, N'B1EB1C8CB40362CB39A74CFFF84DC7688460CD9D0A453488B517B542F79748D0', N'student', N'Lisa')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (36, N'523A5951CFD9B135C74E67C41BB506B32DC188BE3F2A3225B4F498091DCD9481', N'student', N'Laila')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (37, N'B89D65B8B10E8EAE3AB16A58D98F82861F823F527EBBC7053F3F271D991039E0', N'instructor', N'Mohamad')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (38, N'9EE4669956B752FBEE05024A52E52B48D08BF9AAEED1CB81BA558C60E5ED7098', N'student', N'Mostafa')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (39, N'B8D6ECE6E89D7708BA1D2DC837B2BC63DF20933BC92D2280BD0F6F66FE463748', N'student', N'Mo3taz')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (40, N'1326D507F5C5191675EAB3B7E35A0164E42710298C67F43FEFF1B4E50D9E46BE', N'instructor', N'Marian')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (41, N'C2937B797A2B43BF20800516BBDF97476F7BF16415D72C996F70435D64FB0321', N'instructor', N'Nagwa')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (42, N'FABFBA51EDFE85FA9B1286BC2503E300C6BFD38D3DA681206930213C310ED03A', N'student', N'Nader')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (43, N'47F4E0114336DD0516070750B32ABEB91E84A601B0297C121036BE6161D7B47F', N'student', N'Osman')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (44, N'37BD07248580459F38BE41FAACA1D715C2A9E08D22420BB2FE8DE966CDA22E62', N'instructor', N'Olievia')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (45, N'766EFCF4A5F2CC63B3605256DF551883BE81A016D16777519453E3870D180E30', N'student', N'Qamar')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (46, N'5EE36C4474334126D28F870C62801C2C8B72F10A277C51EB46B2740DC9A2B7FA', N'student', N'Sandy')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (47, N'876CE4F66233832D239468F55469055D273C162885BFC05E2A655682406AC89D', N'student', N'Samir')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (48, N'A81DE8D52F05CE26AF5A0ADD01F502440DD296A97982114AE57A7466FA7BF00F', N'student', N'Sha3ban')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (49, N'CC4394EAAE2505C8368770E7DC597946158123578A59EDA222DC7DEE205754A9', N'student', N'Tamer')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (50, N'1571D3F63D34202AB34C3F4BE5D3C288EA506630B898943CEEFFE8A8651C2358', N'student', N'Tamara')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (51, N'B17D61157E4223FD7D711A5F75ECE5E021AD57D0ABE457C6C7A711FD651930DC', N'student', N'Vector')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (52, N'79EA07538D9921FE5A23BAF6CCA8865E66D21F338625593B5C2F0FDB3F56A22A', N'student', N'Wael')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (53, N'BEE9880BBDA3BAEC7CE5A13F9E0BC4BA2D1087BABA3A86673EE50A46E8116C85', N'student', N'Waseem')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (54, N'9869695D882E09FC0CA2923D1D4B5109E25B9E8BB884AC5BC86077A9263D8631', N'instructor', N'Warda')
GO
INSERT [dbo].[UserAccount] ([ID], [PasswordHash], [Type], [UserName]) VALUES (55, N'F6F601A0B39D77ECE2B55F9E8533EED12A8BD7DEF9C21ED32B08EC1648DB18BD', N'student', N'Zahra')
GO
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
GO
INSERT [dbo].[UserAccountType] ([UserAccountTypeID]) VALUES (N'instructor')
GO
INSERT [dbo].[UserAccountType] ([UserAccountTypeID]) VALUES (N'student')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_UserAccount_UserName]    Script Date: 2/27/2024 6:31:04 PM ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [UQ_UserAccount_UserName] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Answer] ADD  CONSTRAINT [DF_Answer_Grade]  DEFAULT ((0)) FOR [Grade]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_InstructorManagerID]  DEFAULT (NULL) FOR [InstructorManagerID]
GO
ALTER TABLE [dbo].[EnrollsIn] ADD  CONSTRAINT [DF_EnrollsIn_IsPassed]  DEFAULT (NULL) FOR [IsPassed]
GO
ALTER TABLE [dbo].[Exam] ADD  CONSTRAINT [DF_Exam_StudentScore]  DEFAULT ((0)) FOR [StudentScore]
GO
ALTER TABLE [dbo].[Instructor] ADD  CONSTRAINT [DF_Instructor_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_DepartmentID]  DEFAULT (NULL) FOR [DepartmentID]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Exam] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ID])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Exam]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Question] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([ID])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Question]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Student]
GO
ALTER TABLE [dbo].[Choice]  WITH CHECK ADD  CONSTRAINT [FK_Choice_Question] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Choice] CHECK CONSTRAINT [FK_Choice_Question]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Has_Instructor_Manager] FOREIGN KEY([InstructorManagerID])
REFERENCES [dbo].[Instructor] ([ID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Has_Instructor_Manager]
GO
ALTER TABLE [dbo].[DepartmentCourses]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentCourses_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[DepartmentCourses] CHECK CONSTRAINT [FK_DepartmentCourses_Course]
GO
ALTER TABLE [dbo].[DepartmentCourses]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentCourses_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[DepartmentCourses] CHECK CONSTRAINT [FK_DepartmentCourses_Department]
GO
ALTER TABLE [dbo].[EnrollsIn]  WITH CHECK ADD  CONSTRAINT [FK_EnrollsIn_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[EnrollsIn] CHECK CONSTRAINT [FK_EnrollsIn_Course]
GO
ALTER TABLE [dbo].[EnrollsIn]  WITH CHECK ADD  CONSTRAINT [FK_EnrollsIn_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[EnrollsIn] CHECK CONSTRAINT [FK_EnrollsIn_Student]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Course]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Instructor] FOREIGN KEY([InstructorID])
REFERENCES [dbo].[Instructor] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Instructor]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Student]
GO
ALTER TABLE [dbo].[ExamQuestions]  WITH CHECK ADD  CONSTRAINT [FK_ExamQuestions_Exam] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ID])
GO
ALTER TABLE [dbo].[ExamQuestions] CHECK CONSTRAINT [FK_ExamQuestions_Exam]
GO
ALTER TABLE [dbo].[ExamQuestions]  WITH CHECK ADD  CONSTRAINT [FK_ExamQuestions_Question] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([ID])
GO
ALTER TABLE [dbo].[ExamQuestions] CHECK CONSTRAINT [FK_ExamQuestions_Question]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_InstructorRole] FOREIGN KEY([Role])
REFERENCES [dbo].[InstructorRole] ([InstructorRoleID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_InstructorRole]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_UserAccount] FOREIGN KEY([ID])
REFERENCES [dbo].[UserAccount] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_UserAccount]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_WorksIn_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_WorksIn_Department]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Course]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_QuestionDifficulty] FOREIGN KEY([Difficulty])
REFERENCES [dbo].[QuestionDifficulty] ([QuestionDifficultyID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_QuestionDifficulty]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_QuestionType] FOREIGN KEY([Type])
REFERENCES [dbo].[QuestionType] ([QuestionTypeID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_QuestionType]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO
ALTER TABLE [dbo].[Teaches]  WITH CHECK ADD  CONSTRAINT [FK_Teaches_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[Teaches] CHECK CONSTRAINT [FK_Teaches_Course]
GO
ALTER TABLE [dbo].[Teaches]  WITH CHECK ADD  CONSTRAINT [FK_Teaches_Instructor] FOREIGN KEY([InstructorID])
REFERENCES [dbo].[Instructor] ([ID])
GO
ALTER TABLE [dbo].[Teaches] CHECK CONSTRAINT [FK_Teaches_Instructor]
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [FK_Topic_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [FK_Topic_Course]
GO
ALTER TABLE [dbo].[TopicQuestions]  WITH CHECK ADD  CONSTRAINT [FK_TopicQuestions_Question] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([ID])
GO
ALTER TABLE [dbo].[TopicQuestions] CHECK CONSTRAINT [FK_TopicQuestions_Question]
GO
ALTER TABLE [dbo].[TopicQuestions]  WITH CHECK ADD  CONSTRAINT [FK_TopicQuestions_Topic] FOREIGN KEY([TopicID])
REFERENCES [dbo].[Topic] ([ID])
GO
ALTER TABLE [dbo].[TopicQuestions] CHECK CONSTRAINT [FK_TopicQuestions_Topic]
GO
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_UserAccount_UserAccountType] FOREIGN KEY([Type])
REFERENCES [dbo].[UserAccountType] ([UserAccountTypeID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_UserAccount_UserAccountType]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [CK_Answer_Grade] CHECK  (([Grade]>=(0)))
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [CK_Answer_Grade]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [CK_Answer_ModelAnswer] CHECK  (([ModelAnswer]>(0)))
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [CK_Answer_ModelAnswer]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [CK_Answer_StudentAnswer] CHECK  (([StudentAnswer]>(0)))
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [CK_Answer_StudentAnswer]
GO
ALTER TABLE [dbo].[Choice]  WITH CHECK ADD  CONSTRAINT [CK_Choice_OrderInQuestion] CHECK  (([OrderInQuestion]>(0)))
GO
ALTER TABLE [dbo].[Choice] CHECK CONSTRAINT [CK_Choice_OrderInQuestion]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [CK_Exam_StudentScore] CHECK  (([StudentScore]>=(0)))
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [CK_Exam_StudentScore]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [CK_Exam_StudentTimeToSolve] CHECK  (([StudentTimeToSolve]>(0)))
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [CK_Exam_StudentTimeToSolve]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [CK_Exam_SuccessPercent] CHECK  (([SuccessPercent]>(0) AND [SuccessPercent]<=(1)))
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [CK_Exam_SuccessPercent]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [CK_Exam_TotalPoints] CHECK  (([TotalPoints]>(0)))
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [CK_Exam_TotalPoints]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [CK_Exam_TotalTime] CHECK  (([TotalTime]>(0)))
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [CK_Exam_TotalTime]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [CK_Instructor_Gender] CHECK  (([Gender]='female' OR [Gender]='male'))
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [CK_Instructor_Gender]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [CK_Question_ModelAnswer] CHECK  (([ModelAnswer]>(0)))
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [CK_Question_ModelAnswer]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [CK_Question_Points] CHECK  (([Points]>(0)))
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [CK_Question_Points]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Student_Gender] CHECK  (([Gender]='female' OR [Gender]='male'))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Student_Gender]
GO
/****** Object:  StoredProcedure [dbo].[AssignInstructorToCourse]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkStudentHaveExam]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CorrectExam]    Script Date: 2/27/2024 6:31:04 PM ******/
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

		select @TotalPoints = TotalPoints from Exam where ID = @ExamID

		IF NOT EXISTS (SELECT 1 FROM Exam WHERE ID = @ExamID)
		BEGIN
		;THROW 51000, 'Invalid ExamID provided.', 1;
		END
		IF NOT EXISTS (SELECT 1 FROM Student WHERE ID = @StudentID)
		BEGIN
		;THROW 51000, 'Invalid StudentID provided.', 1;
		END
        ---- Calculate TotalPoints
        SELECT @StudentScore = ISNULL(SUM(A.Grade), 0)
        FROM Answer A
        WHERE A.ExamID = @ExamID AND A.StudentID=@StudentID

        -- Calculate StudentScore
        --SELECT @StudentScore = ISNULL(SUM(CASE WHEN A.ModelAnswer = A.StudentAnswer THEN Q.Points ELSE 0 END), 0)
        --FROM Answer A
        --JOIN Question Q ON A.QuestionID = Q.ID
        --WHERE A.ExamID = @ExamID AND A.StudentID=@StudentID;

        -- Calculate StudentPercent
        SELECT @StudentPercent = (@StudentScore / @TotalPoints);

        -- Update Exam table
        UPDATE Exam
        SET StudentScore = @StudentScore,
			--TotalPoints = @TotalPoints,
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
/****** Object:  StoredProcedure [dbo].[CreateTopic]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteCourse]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteInstructorByID]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--deleteInstructorByID
CREATE   Procedure [dbo].[DeleteInstructorByID]
@InstructorID int
AS
Begin TRY
	BEGIN Transaction
		Delete From Teaches Where  InstructorID = @InstructorID
		Delete From Instructor Where  ID = @InstructorID
		Delete From UserAccount Where  ID = @InstructorID
	Commit Transaction
END TRY
 BEGIN CATCH 
	ROLLBACK TRANSACTION;
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[DeleteInstructorToCourse]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteStudent]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteTopic]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[EnrollStudentInCourse]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ExamGeneration]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllCourses]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllCoursesForStudent]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllDepartments]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllInstructors]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[GetAllInstructors]
AS
select * from Instructor;
GO
/****** Object:  StoredProcedure [dbo].[GetChoicesForQuestion]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetChoicesForQuestion]
@QuestionID  int
as
select C.* from Choice C inner join Question Q on C.QuestionID = Q.ID and Q.ID = @QuestionID
GO
/****** Object:  StoredProcedure [dbo].[GetCoursesTaughtByInstructor]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetExam]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetExamHistory]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetExamInfoForStudent]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetExamInfoForStudent]
@StudentID int , @courseID int
as
select * from Exam where StudentID = @StudentID and CourseID = @courseID
GO
/****** Object:  StoredProcedure [dbo].[GetExamQuestionsNum]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetInstructorCoursesByID]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetQuestionsForExam]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetStudentAnswerInExam]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create proc [dbo].[GetStudentAnswerInExam]
@studentID int , @examID int , @questionID int 
as
select A.* from Answer A where A.StudentID = @studentID and A.ExamID = @examID and A.QuestionID = @questionID
GO
/****** Object:  StoredProcedure [dbo].[GetStudentCourses]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetTotalTimeForExam]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetTotalTimeForExam]
@ExamID int
as
select TotalTime from Exam where ID = @ExamID
GO
/****** Object:  StoredProcedure [dbo].[insertChoice]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[InsertCourse]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[InsertInstructorWithCourses]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertNewQuestion]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ReadTopic]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SelectStudent]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SelectStudents]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SelectTopic]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SelectTopics]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CreateStudentAnswer]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ExamQuestions]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetCoursesByInstructor]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetStudentGrades]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetStudentsByDepartment]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LoginAsInstructorWithHash]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LoginAsInstructorWithPassword]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LoginAsStudentWithHash]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LoginAsStudentWithPassword]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LoginWithHash]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LoginWithPassword]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_StudentAnswers]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_TopicesInCourses]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Un_EnrollStudentInCourse]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateCourse]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateInstructorByID]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateStudent]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTopic]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  Trigger [dbo].[CheckExamInfo]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[CheckExamInfo]
ON [dbo].[Exam]
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
GO
ALTER TABLE [dbo].[Exam] ENABLE TRIGGER [CheckExamInfo]
GO
/****** Object:  Trigger [dbo].[TIOD_PreventDeletionOfTakenExams]    Script Date: 2/27/2024 6:31:04 PM ******/
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
/****** Object:  Trigger [dbo].[UpdateExam]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER [dbo].[UpdateExam]
ON [dbo].[Exam]
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
ALTER TABLE [dbo].[Exam] ENABLE TRIGGER [UpdateExam]
GO
/****** Object:  Trigger [dbo].[TIOD_PreventDeletionOfTakenExamQuestions]    Script Date: 2/27/2024 6:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Mohanad-Shawky
-- Create date: 29/01/2024
-- Description:	Prevents the Deletion of Exam Questions if the Exam is finished
-- =============================================
CREATE TRIGGER [dbo].[TIOD_PreventDeletionOfTakenExamQuestions]
   ON  [dbo].[ExamQuestions] 
   INSTEAD OF DELETE
AS 
BEGIN

	SET NOCOUNT ON;

    DECLARE @Exams TABLE 
	(
	[ID] INT NOT NULL,
	[TotalPoints] INT NULL,
	[TotalTime] INT NULL,
	[ScheduledTime] DATETIME NOT NULL,
	[SuccessPercent] FLOAT NOT NULL,
	[InstructorID] INT NOT NULL,
	[CourseID] INT NOT NULL,
	[StudentID] INT NOT NULL,
	[StudentScore] FLOAT NULL,
	[StudentTimeToSolve] INT NULL,
	[IsStudentPassed] BIT NULL
	)

	INSERT INTO @Exams
	SELECT * 
	FROM [dbo].[Exam] AS e
	WHERE e.[ID] IN (SELECT ExamID FROM deleted)

	IF EXISTS (SELECT * 
				FROM @Exams 
				WHERE 
					StudentScore IS NOT NULL OR 
					StudentTimeToSolve IS NOT NULL OR 
					IsStudentPassed IS NOT NULL
				)
	BEGIN
		-- RAISERROR with severity 11-19 will cause execution to
		-- jump to the CATCH block.
		-- RAISERROR with severity 20-25 will cause Database connection to close 
		-- after recieving error message as it is considered fatal error
		-- the error is logged in the error and application logs.
		RAISERROR (
				'Cannot delete Questions from taken Exams. Set the student data to null to delete the questions.', -- Message text.
				16, -- Severity.
				1 -- State.
				);
		ROLLBACK TRANSACTION;
	END

	ELSE
	BEGIN
		/*DELETE eq 
			FROM
				[dbo].[ExamQuestions] AS eq 
				INNER JOIN deleted AS d 
				ON eq.ExamID = d.ExamID AND eq.QuestionID = d.QuestionID;*/

		/*DELETE FROM [dbo].[ExamQuestions]
		FROM [dbo].[ExamQuestions] AS eq 
		INNER JOIN deleted d 
		ON eq.ExamID = d.ExamID AND eq.QuestionID = d.QuestionID;*/

		DELETE 
		FROM [dbo].[ExamQuestions] 
			FROM deleted;
	END

END
GO
ALTER TABLE [dbo].[ExamQuestions] ENABLE TRIGGER [TIOD_PreventDeletionOfTakenExamQuestions]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents OrderInQuestion for the choice marked as the answer for this (Single Choice,T/F) Question.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Answer', @level2type=N'COLUMN',@level2name=N'ModelAnswer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents OrderInQuestion for the choice marked the student selected as his answer fort his (Single Choice,T/F) Question.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Answer', @level2type=N'COLUMN',@level2name=N'StudentAnswer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents the duration of the exam in seconds.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Exam', @level2type=N'COLUMN',@level2name=N'TotalTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents the time the student took to solve the exam in seconds.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Exam', @level2type=N'COLUMN',@level2name=N'StudentTimeToSolve'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents OrderInQuestion for the choice marked as the answer for this (Single Choice,T/F) Question' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Question', @level2type=N'COLUMN',@level2name=N'ModelAnswer'
GO
USE [master]
GO
ALTER DATABASE [RandomExamGenerator] SET  READ_WRITE 
GO
