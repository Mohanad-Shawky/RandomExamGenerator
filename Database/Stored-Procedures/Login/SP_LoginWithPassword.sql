DROP PROCEDURE IF EXISTS [dbo].[SP_LoginWithPassword];
GO

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
WITH ENCRYPTION, EXECUTE AS 'Instructor'
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
