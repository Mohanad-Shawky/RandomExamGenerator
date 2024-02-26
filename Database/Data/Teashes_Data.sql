USE [RandomExamGenerator]
GO

INSERT INTO [dbo].[Teaches]
           ([CourseID]
           ,[InstructorID]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (2,1,'2023-08-01','2023-08-20'),
		   (1,1,'2023-10-01','2023-10-20'),
		   (2,17,'2023-08-01','2023-08-20'),
		   (1,2,'2023-10-01','2023-10-20')
GO


