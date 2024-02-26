DROP PROCEDURE IF EXISTS [dbo].[SP_LoginAsInstructorWithHash];
GO

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
WITH ENCRYPTION
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