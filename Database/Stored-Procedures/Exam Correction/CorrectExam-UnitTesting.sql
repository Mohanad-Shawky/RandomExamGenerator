INSERT INTO [dbo].[EnrollsIn] (StudentID, CourseID, CourseActive, EnrollDate, StartDate, EndDate, IsPassed, IsCorrective)
VALUES
    (6, 1, 1, '2022-01-01', '2022-02-01', '2022-03-01', NULL, NULL),
    (7, 1, 1, '2022-01-05', '2022-02-05', '2022-03-05', NULL, NULL),
    (8, 1, 1, '2022-01-10', '2022-02-10', '2022-03-10', NULL, NULL)

INSERT INTO [dbo].[Exam] ([Type], [TotalPoints], [TotalTime], [ScheduledTime], [SuccessPercent], [InstructorID], [CourseID], [StudentID], [StudentScore], [StudentTimeToSolve], [IsStudentPassed])
VALUES
    ('final', 100, 1200, '2024-02-03 12:00:00', 0.6, 1, 1, 6, 0, 1, NULL)


-- Insert data for Answer
INSERT INTO [dbo].[Answer] (StudentID, ExamID, QuestionID, ModelAnswer, StudentAnswer, Grade)
VALUES
    (6, 18, 12, 1, 1, 10),
    (6, 18, 13, 2, 2, 5),
    (6, 18, 14, 2, 3, 15)

INSERT INTO [dbo].[Question] (Type, ModelAnswer, Difficulty, Header, CourseID, Points)
VALUES
    ('smcq', 1, 'easy', 'What is the capital of France?', 1, 10),
    ('tf', 1, 'medium', 'Is the sky blue?', 1, 5),
    ('smcq', 3, 'hard', 'Explain the concept of gravity.', 1, 15)

EXEC dbo.CorrectExam 18,6