
--Instructor CRUD
--C
--insert Instructor
DROP PROCEDURE IF EXISTS InsertInstructor
GO
CREATE OR ALTER PROCEDURE InsertInstructor
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
--Exec InsertInstructor 'tempusr4','FFFF','lecturer','male',2



--R
--get all instructors
DROP PROCEDURE IF EXISTS GetAllInstructors
GO
CREATE OR ALTER Procedure GetAllInstructors
AS
select * from Instructor where IsDeleted=0;
GO

-- get Instructor By Specific ID
DROP PROCEDURE IF EXISTS GetInstructorByID
GO
CREATE OR ALTER PROCEDURE GetInstructorByID
    @InstructorID int
AS
    SELECT * FROM Instructor WHERE IsDeleted = 0 AND ID = @InstructorID;

GO


--U
--UpdateInstructorByID
DROP PROCEDURE IF EXISTS UpdateInstructor
GO
Create OR ALTER PROCEDURE UpdateInstructor
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

--D
--DeleteInstructorByID
DROP PROCEDURE IF EXISTS DeleteInstructorByID
GO
CREATE OR ALTER Procedure DeleteInstructorByID
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

-- EXEC DeleteInstructorByID 66