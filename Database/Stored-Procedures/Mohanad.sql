-- #################### BEGIN Of User Account CRUD ####################
USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Creates a UserAccount given a plain text password
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[CreateUserAccountWithPassword]
GO
CREATE OR ALTER PROCEDURE CreateUserAccountWithPassword 
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Creates a UserAccount given a hashed password
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[CreateUserAccountWithHash]
GO
CREATE OR ALTER PROCEDURE CreateUserAccountWithHash
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

USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Updates a UserAccount given the ID and a plain text password
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[UpdateUserAccountWithPassword]
GO
CREATE OR ALTER PROCEDURE UpdateUserAccountWithPassword
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Updates a UserAccount given the ID and a hashed password
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[UpdateUserAccountWithHash]
GO
CREATE OR ALTER PROCEDURE UpdateUserAccountWithHash
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

USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Deletes a UserAccount given the ID
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[DeleteUserAccount]
GO
CREATE OR ALTER PROCEDURE DeleteUserAccount
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Gets all the User Accounts
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[GetAllUserAccounts]
GO
CREATE OR ALTER PROCEDURE GetAllUserAccounts
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Finds a UserAccount given the ID
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[GetUserAccount]
GO
CREATE OR ALTER PROCEDURE GetUserAccount
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
-- #################### END Of User Account CRUD ####################




-- #################### BEGIN Of Course CRUD ####################
USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Finds a Course given the ID
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[GetCourse]
GO
CREATE OR ALTER PROCEDURE GetCourse
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
-- #################### END Of Course CRUD ####################



-- #################### BEGIN Of EnrollsIn CRUD ####################
USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Gets All Enrollment Data 
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[GetAllStudentEnrollments]
GO
CREATE OR ALTER PROCEDURE GetAllStudentEnrollments

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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Get enrollment data for a student in a course
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[GetStudentEnrollmentInCourse]
GO
CREATE OR ALTER PROCEDURE GetStudentEnrollmentInCourse
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



USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Updates Enrollment data for a student in a course
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[UpdateStudentEnrollmentInCourse]
GO
CREATE OR ALTER PROCEDURE UpdateStudentEnrollmentInCourse
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
-- #################### END Of EnrollsIn CRUD ####################





-- #################### BEGIN Of Teaches CRUD ####################

USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Gets Teaches data for an instructor with a course
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[CreateTeaches]
GO
CREATE OR ALTER PROCEDURE CreateTeaches
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Gets all Teaches data
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[GetAllTeaches]
GO
CREATE OR ALTER PROCEDURE GetAllTeaches
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Gets Teaches data for an instructor with a course
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[GetTeaches]
GO
CREATE OR ALTER PROCEDURE GetTeaches
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Updates Teaches data for an instructor with a course
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[UpdateTeaches]
GO
CREATE OR ALTER PROCEDURE UpdateTeaches
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Deletes Teaches data for an instructor with a course
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[DeleteTeaches]
GO
CREATE OR ALTER PROCEDURE DeleteTeaches
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
-- #################### END Of Teaches CRUD ####################




-- #################### BEGIN Of ExamQuestions CRUD ####################
USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Inserts ExamQeustion data
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[CreateExamQuestions]
GO
CREATE OR ALTER PROCEDURE CreateExamQuestions
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Gets ExamQuestion data
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[GetExamQuestions]
GO
CREATE OR ALTER PROCEDURE GetExamQuestions
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Gets ExamQuestion data
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[GetAllExamQuestions]
GO
CREATE OR ALTER PROCEDURE GetAllExamQuestions
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

USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Gets ExamQuestion data
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[DeleteExamQuestions]
GO
CREATE OR ALTER PROCEDURE DeleteExamQuestions
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
-- #################### END Of ExamQuestions CRUD ####################



-- #################### BEGIN Of TopicQuestions CRUD ####################
USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Inserts TopicQuestion data record
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[CreateTopicQuestions]
GO
CREATE OR ALTER PROCEDURE CreateTopicQuestions
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Inserts TopicQuestion data record
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[GetAllTopicQuestions]
GO
CREATE OR ALTER PROCEDURE GetAllTopicQuestions
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Inserts TopicQuestion data record
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[GetTopicQuestions]
GO
CREATE OR ALTER PROCEDURE GetTopicQuestions
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


USE [RandomExamGenerator]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mohanad-Shawky
-- Description:	Inserts TopicQuestion data record
-- =============================================
DROP PROCEDURE IF EXISTS [dbo].[DeleteTopicQuestions]
GO
CREATE OR ALTER PROCEDURE DeleteTopicQuestions
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

-- #################### END Of TopicQuestions CRUD ####################
