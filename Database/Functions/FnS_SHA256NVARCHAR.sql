USE [RandomExamGenerator]
GO

/****** Object:  UserDefinedFunction [dbo].[FnS_SHA256NVARCHAR]    Script Date: 1/28/2024 8:27:22 PM ******/
DROP FUNCTION IF EXISTS [dbo].[FnS_SHA256NVARCHAR]
GO

/****** Object:  UserDefinedFunction [dbo].[FnS_SHA256NVARCHAR]    Script Date: 1/28/2024 8:27:22 PM ******/
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


