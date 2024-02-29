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
/****** Object:  Trigger [TIOD_PreventDeletionOfTakenExamQuestions]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TRIGGER IF EXISTS [dbo].[TIOD_PreventDeletionOfTakenExamQuestions]
GO
/****** Object:  Trigger [TIOD_PreventDeletionOfTakenExams]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TRIGGER IF EXISTS [dbo].[TIOD_PreventDeletionOfTakenExams]
GO
/****** Object:  Trigger [CheckExamInfo]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TRIGGER IF EXISTS [dbo].[CheckExamInfo]
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
/****** Object:  Table [dbo].[UserAccountType]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[UserAccountType]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[UserAccount]
GO
/****** Object:  Table [dbo].[TopicQuestions]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[TopicQuestions]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[Topic]
GO
/****** Object:  Table [dbo].[Teaches]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[Teaches]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[Student]
GO
/****** Object:  Table [dbo].[QuestionType]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[QuestionType]
GO
/****** Object:  Table [dbo].[QuestionDifficulty]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[QuestionDifficulty]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[Question]
GO
/****** Object:  Table [dbo].[InstructorRole]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[InstructorRole]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[Instructor]
GO
/****** Object:  Table [dbo].[ExamQuestions]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[ExamQuestions]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[Exam]
GO
/****** Object:  Table [dbo].[EnrollsIn]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[EnrollsIn]
GO
/****** Object:  Table [dbo].[DepartmentCourses]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[DepartmentCourses]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[Department]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[Course]
GO
/****** Object:  Table [dbo].[Choice]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[Choice]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 2/29/2024 5:20:37 PM ******/
DROP TABLE IF EXISTS [dbo].[Answer]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 2/29/2024 5:20:37 PM ******/
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
/****** Object:  Table [dbo].[Choice]    Script Date: 2/29/2024 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choice](
	[QuestionID] [int] NOT NULL,
	[OrderInQuestion] [int] NOT NULL,
	[Body] [nvarchar](500) NOT NULL,
	[IsAnswer] [bit] NOT NULL,
 CONSTRAINT [PK_Choice] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC,
	[OrderInQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2/29/2024 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2/29/2024 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[InstructorManagerID] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartmentCourses]    Script Date: 2/29/2024 5:20:37 PM ******/
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
/****** Object:  Table [dbo].[EnrollsIn]    Script Date: 2/29/2024 5:20:37 PM ******/
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
/****** Object:  Table [dbo].[Exam]    Script Date: 2/29/2024 5:20:37 PM ******/
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
/****** Object:  Table [dbo].[ExamQuestions]    Script Date: 2/29/2024 5:20:37 PM ******/
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
/****** Object:  Table [dbo].[Instructor]    Script Date: 2/29/2024 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Role] [nvarchar](20) NOT NULL,
	[Gender] [nvarchar](6) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InstructorRole]    Script Date: 2/29/2024 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstructorRole](
	[InstructorRoleID] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_InstructorRole] PRIMARY KEY CLUSTERED 
(
	[InstructorRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 2/29/2024 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[ModelAnswer] [int] NOT NULL,
	[Difficulty] [nvarchar](20) NOT NULL,
	[Header] [nvarchar](1000) NOT NULL,
	[CourseID] [int] NOT NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionDifficulty]    Script Date: 2/29/2024 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionDifficulty](
	[QuestionDifficultyID] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_QuestionDifficulty] PRIMARY KEY CLUSTERED 
(
	[QuestionDifficultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionType]    Script Date: 2/29/2024 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionType](
	[QuestionTypeID] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_QuestionType] PRIMARY KEY CLUSTERED 
(
	[QuestionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2/29/2024 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](6) NOT NULL,
	[Birthdate] [date] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teaches]    Script Date: 2/29/2024 5:20:37 PM ******/
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
/****** Object:  Table [dbo].[Topic]    Script Date: 2/29/2024 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Topic_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopicQuestions]    Script Date: 2/29/2024 5:20:37 PM ******/
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
/****** Object:  Table [dbo].[UserAccount]    Script Date: 2/29/2024 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PasswordHash] [nvarchar](64) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_UserAccount_UserName] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccountType]    Script Date: 2/29/2024 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccountType](
	[UserAccountTypeID] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_UserAccountType] PRIMARY KEY CLUSTERED 
(
	[UserAccountTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
/****** Object:  Trigger [dbo].[CheckExamInfo]    Script Date: 2/29/2024 5:20:37 PM ******/
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
/****** Object:  Trigger [dbo].[TIOD_PreventDeletionOfTakenExams]    Script Date: 2/29/2024 5:20:38 PM ******/
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
/****** Object:  Trigger [dbo].[TIOD_PreventDeletionOfTakenExamQuestions]    Script Date: 2/29/2024 5:20:38 PM ******/
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
