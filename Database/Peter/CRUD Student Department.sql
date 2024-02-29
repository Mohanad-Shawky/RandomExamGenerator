--InsertStudent
CREATE OR ALTER PROCEDURE InsertStudent
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
--EXEC InsertStudent @InsertID,@StudentName,@Gender,@BDate,@ISDelete,@DeptID;
GO
--DeleteStudent -- UpdateStudent ---SelectStudent--SelectStudents
--====================================================================--
GO
--DeleteDepartment
CREATE OR ALTER PROCEDURE DeleteDepartment
	@DeptID INT
AS
BEGIN
		Delete FROM Department
		WHERE ID=@DeptID
END;
GO
--Exec DeleteDepartment @DeptID=10; 
GO
--==============================================================================
--InsertDepartment
CREATE OR ALTER PROCEDURE InsertDepartment
	@DeptID INT,
	@DeptName NVARCHAR(100),
	@InstManager INT
AS
BEGIN
		INSERT INTO Department
		VALUES (@DeptID,@DeptName,@InstManager)
END;
GO
--Exec InsertDepartment @DeptID=10,@DeptName='SWA',@InstManager=1; 
GO

--==============================================================================
--UpdateDepartment
CREATE OR ALTER PROCEDURE UpdateDepartment
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
--Exec InsertDepartment @DeptID=10,@NewDeptName='SWA',@NewInstManager=1; 
GO
--======================================================================
GO
--GetDepartmentByID
CREATE OR ALTER PROCEDURE GetDepartmentByID
	@DeptID INT
AS
BEGIN
		SELECT D.ID , D.Name ,I.Name AS[Department Manager]
		FROM Department D Join Instructor I
		On I.ID =D.InstructorManagerID
		WHERE D.ID=@DeptID
END;
GO
--Exec GetDepartmentByID @DeptID=10; 
GO

--GetAllDerpartments