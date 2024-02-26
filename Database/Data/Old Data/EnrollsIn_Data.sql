USE [RandomExamGenerator]
GO

INSERT INTO [dbo].[EnrollsIn]
           ([StudentID]
           ,[CourseID]
           ,[CourseActive]
           ,[EnrollDate]
           ,[StartDate]
           ,[EndDate]
           ,[IsPassed]
           ,[IsCorrective])
     VALUES
      (6,2,1,'2023-07-20','2023-08-01','2023-08-20',null,null),
	  (6,1,1,'2023-07-20','2023-10-01','2023-10-20',null,null),
	  (7,2,1,'2023-07-20','2023-08-01','2023-08-20',null,null),
	  (7,1,1,'2023-07-20','2023-10-01','2023-10-20',null,null)
GO


