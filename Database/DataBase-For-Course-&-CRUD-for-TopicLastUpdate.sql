-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<Create Stored Procedure , Insert course>
-- =============================================
/*Create Stored Procedure:*/
GO
CREATE OR ALTER PROCEDURE InsertCourse
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

/*DECLARE @CourseName VARCHAR(50) = 'test';
DECLARE @UserId INT = 2; 
EXEC InsertCourse
    @CourseName = @CourseName,
    @UserId = @UserId ;*/
	
GO
--<============================================================================================>--
-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<Create View , Course>
-- =============================================
--/*Create View:*/
GO
CREATE OR ALTER VIEW CourseView 
AS
SELECT C.Name , COUNT(S.StudentID) AS [StudentCount]
FROM Course C JOIN EnrollsIn S
ON C.ID = S.CourseID
GROUP BY C.Name;
GO
--SELECT * FROM CourseView;
GO
--<============================================================================================>--
-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<Update Courses>
-- =============================================
--/* Update Courses:*/
GO
CREATE OR ALTER PROCEDURE UpdateCourse
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

/*DECLARE @CourseName VARCHAR(50) = 'test1';
DECLARE @CourseCode INT = 30;
DECLARE @UserId INT = 2; 
--DECLARE @Password INT = 123;
EXEC UpdateCourse
    @CourseName = @CourseName,
    @CourseCode =@CourseCode,
    @UserId = @UserId 
	--@password =@password;*/
GO

-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<PROCEDURE DELETE , Table Course>
-- =============================================
/*PROCEDURE DELETE*/
GO
CREATE OR ALTER PROCEDURE DeleteCourse
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

/*DECLARE @CourseName VARCHAR(50) = 'test1';
DECLARE @CourseCode INT = 30;
DECLARE @UserId INT = 2; 

EXEC DeleteCourse
    @CourseName = @CourseName,
    @CourseCode =@CourseCode,
    @UserId = @UserId */

GO



/*GO
CREATE OR ALTER TRIGGER TriggerUpdate
ON Course
INSTEAD OF UPDATE
AS
BEGIN
    PRINT 'Updates to Course table are not allowed.';
END;

GO
--UPDATE Course
UPDATE Course
SET Name = 'Oss'
WHERE ID = 696;

GO*/

/*
CREATE OR ALTER TRIGGER TRIGGERDELETE
ON Course
INSTEAD OF Delete
AS
BEGIN
    PRINT 'Updates to Course table are not allowed.';
END;*/

--Delete Courses:

GO
--<============================================================================================>--
-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<Trigger Delete , Table Course>
-- =============================================
/*Trigger Delete:*/

GO
/*CREATE OR ALTER TRIGGER CourseDelete
ON Course
INSTEAD OF DELETE
AS
BEGIN
    DECLARE @UserId INT;
    DECLARE @Password INT;

    SELECT @UserId = Id
    FROM UserAccount
    WHERE Id = 10 AND PasswordHash = @Password AND Type = 'Instructor';

    IF @UserId IS NOT NULL
    BEGIN
        DELETE FROM Course
        WHERE ID IN (SELECT ID FROM DELETED);
        PRINT 'Courses deleted successfully.';
    END
    ELSE
    BEGIN
        PRINT 'You do not have permission to delete courses.';
    END
END;

GO

DELETE FROM Course WHERE ID = 120;

GO

DELETE FROM Course
WHERE ID = '123';

GO*/
GO
--<============================================================================================>--
-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<Instructors can Enroll a student in a course he teaches , Table EnrollsIn>
-- =============================================
--Instructors can Enroll a student in a course he teaches
GO

CREATE OR ALTER PROCEDURE EnrollStudentInCourse
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

/*EXEC EnrollStudentInCourse  @InstructorId =1,
    @StudentId = 6,
    @CourseId = 2,
	@CourseAC = 0,
	@EnrDate = '12/31/2021',
	@StDate = '12/31/2021',
	@EnDate = '12/31/2021',
	@PassSatus = 1,
	@IsCorrec = null*/

GO
--<============================================================================================>--
-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<Instructors can Un-Enroll a student from a course he teaches , Table EnrollsIn>
-- =============================================
--Instructors can Un-Enroll a student from a course he teaches
GO

CREATE OR ALTER PROCEDURE Un_EnrollStudentInCourse
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

EXEC Un_EnrollStudentInCourse  @InstructorId =1,
    @StudentId = 6,
    @CourseId = 2;

GO
--<============================================================================================>--
-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<The Instructor can teach any course , Insert , Create a stored procedure to assign an instructor to a course>
-- =============================================

--The Instructor can teach any course 
--Insert
--Create a stored procedure to assign an instructor to a course

GO
CREATE OR ALTER PROCEDURE AssignInstructorToCourse
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

EXEC AssignInstructorToCourse @InstructorID =2 ,  @CourseID  = 6 ,@StDate ='2023-10-01' ,@ENDate =NULL

GO

--<============================================================================================>--
-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<The Instructor can teach any course , DELETE , Create a stored procedure to DELETE an instructor to a course>
-- =============================================
--DELETE
GO

CREATE OR ALTER PROCEDURE DeleteInstructorToCourse
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

--EXEC DeleteInstructorToCourse @InstructorID =2 ,  @CourseID  = 6;

GO
--<============================================================================================>--
-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<Instructors can create topics , Insert >
-- =============================================
--Instructors can create topics
GO

CREATE OR ALTER PROCEDURE CreateTopic
   
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

EXEC CreateTopic  
    @CourseID = 6,
	@TopicName = 'OOP',
	@InstID = 2;

GO
--<============================================================================================>--
-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<Instructors can Update topics , Update >
-- =============================================
--Instructors can Update topics
GO

CREATE OR ALTER PROCEDURE UpdateTopic
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

EXEC UpdateTopic 
    @TopicID = 51,
    @CourseID = 6,
    @NewTopicName = 'DS',
	@InstID =2;


--<============================================================================================>--

-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<Instructors can Delete topics , Delete >
-- =============================================
--DELETE
GO

CREATE OR ALTER PROCEDURE DeleteTopic
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

/*EXEC DeleteTopic 
    @TopicID = 51,
    @CourseID = 6,
    @TopicName = 'DS',
	@InstID =2;*/

GO

--<============================================================================================>--
-- =============================================
-- Author:		<Peter Gerges Gouda>
-- Create date: <30-1-2024>
-- Description:	<Instructors can Read topics , Read >
-- =============================================
CREATE OR ALTER PROCEDURE ReadTopic
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

/*EXEC ReadTopic
    @CourseID = 2,
    @InstID = 17;*/
	
GO
