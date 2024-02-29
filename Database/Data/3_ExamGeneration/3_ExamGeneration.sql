USE [RandomExamGenerator]
GO
INSERT [dbo].[QuestionDifficulty] ([QuestionDifficultyID]) VALUES (N'easy')
GO
INSERT [dbo].[QuestionDifficulty] ([QuestionDifficultyID]) VALUES (N'hard')
GO
INSERT [dbo].[QuestionDifficulty] ([QuestionDifficultyID]) VALUES (N'medium')
GO
INSERT [dbo].[QuestionType] ([QuestionTypeID]) VALUES (N'smcq')
GO
INSERT [dbo].[QuestionType] ([QuestionTypeID]) VALUES (N'tf')
GO
SET IDENTITY_INSERT [dbo].[Question] ON 
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (1, N'tf', 1, N'easy', N'All files in a single-level directory must have unique names.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (2, N'tf', 1, N'easy', N'Without a mechanism such as an address-space identifier, the TLB must be flushed during a context switch.', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (3, N'tf', 2, N'easy', N'LOOK disk head scheduling offers no practical benefit over SCAN disk head scheduling.', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (4, N'tf', 1, N'easy', N'VFS allows dissimilar file systems to be accessed similarly.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (5, N'tf', 2, N'easy', N'A relative path name begins at the root directory', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (6, N'tf', 1, N'medium', N'An access matrix is generally sparse.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (7, N'tf', 1, N'medium', N'A cache is a region of faster memory that holds copies of data from a slower memory.', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (8, N'tf', 1, N'medium', N'It is not generally possible to prevent denial-of-service attacks.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (9, N'tf', 2, N'medium', N'It is easier to protect computer systems against malicious misuse than against accidental misuse.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (10, N'tf', 1, N'medium', N'An access matrix is generally sparse.', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (11, N'tf', 1, N'hard', N'A system call is triggered by software', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (12, N'tf', 1, N'hard', N'A system call is triggered by software', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (13, N'tf', 2, N'hard', N'Solaris, Windows XP, and Linux assign higher-priority threads/tasks longer time quanta and lower-priority tasks shorter time quanta.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (14, N'tf', 1, N'hard', N'The most complex scheduling algorithms we discussed is the multilevel feedback-queue algorithm.', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (15, N'tf', 1, N'hard', N'In RR scheduling, the time quantum should be large with respect to the context-switch time.', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (16, N'tf', 2, N'hard', N'In a multi-threaded process, the threads share a single, common register set and stack.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (17, N'tf', 1, N'easy', N'In general, Windows system calls have longer, more descriptive names and UNIX system calls use shorter, less descriptive names.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (18, N'tf', 2, N'easy', N'Inverted page tables require each process to have its own page table.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (19, N'tf', 1, N'easy', N'Java condition variables must always be used in conjunction with a reentrant lock', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (20, N'tf', 2, N'easy', N'Protocols to prevent hold-and-wait conditions typically also prevent starvation.', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (21, N'tf', 1, N'easy', N'Mutex locks and binary semaphores are essentially the same thing.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (22, N'tf', 2, N'easy', N'A deadlock-free solution eliminates the possibility of starvation.', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (23, N'smcq', 4, N'easy', N'UNIX operating system', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (24, N'smcq', 1, N'easy', N'Which of the following software is used to simplify using of system software?', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (25, N'smcq', 1, N'easy', N'What is the name of the operating system that reads and reacts in terms of actual time?', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (26, N'smcq', 4, N'easy', N'Computer system is divided into how many numbers of components?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (27, N'smcq', 1, N'easy', N'Two basic types of operating systems are', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (28, N'smcq', 3, N'easy', N'Operating system is resident in memory of which part?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (29, N'smcq', 2, N'easy', N'Which of the following is an example of a spooled device?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (30, N'smcq', 2, N'medium', N'Context switching is part of', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (31, N'smcq', 3, N'medium', N'Card reader is an example of', 2, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (32, N'smcq', 2, N'hard', N'What is FIFO scheduling?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (33, N'smcq', 4, N'hard', N'What makes an operating system whole?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (34, N'smcq', 3, N'hard', N'What of the following isn’t directly related to the operating system?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (35, N'smcq', 3, N'hard', N' What is a time sharing operating system?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (36, N'smcq', 2, N'hard', N'What is a batch operating system?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (37, N'smcq', 2, N'hard', N'What are file extensions?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (38, N'smcq', 1, N'hard', N'What are the properties of processes in an operating system?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (39, N'smcq', 4, N'easy', N'Which one of the following isn’t considered a real-time operating system?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (40, N'smcq', 4, N'easy', N'Where are the errors and bugs recorded?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (41, N'smcq', 4, N'easy', N'What operations mentioned are done by an operating system?', 2, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (42, N'smcq', 1, N'easy', N'What does restarting an operating system do?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (43, N'smcq', 2, N'easy', N'Who needs a BIOS to function properly?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (44, N'smcq', 3, N'easy', N'What does FAT mean?', 2, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (45, N'smcq', 1, N'easy', N'The main purpose of JavaScript in web browser is to', 1, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (46, N'smcq', 3, N'hard', N'A JavaScript program can traverse and manipulate document content through', 1, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (47, N'smcq', 2, N'hard', N'The behaviour of the document elements can be defined by', 1, 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (48, N'smcq', 3, N'easy', N'The service(s) that enables networking through scripted HTTP requests is', 1, 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (49, N'smcq', 4, N'medium', N'The HTML5 specification does not includes', 1, 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [ModelAnswer], [Difficulty], [Header], [CourseID], [Points]) VALUES (50, N'smcq', 2, N'medium', N'Which of the following is not an advanced services?', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (1, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (1, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (2, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (2, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (3, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (3, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (4, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (4, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (5, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (5, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (6, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (6, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (7, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (7, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (8, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (8, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (9, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (9, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (10, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (10, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (11, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (11, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (12, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (12, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (13, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (13, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (14, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (14, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (15, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (15, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (16, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (16, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (17, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (17, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (18, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (18, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (19, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (19, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (20, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (20, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (21, 1, N'True', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (21, 2, N'False', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (22, 1, N'True', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (22, 2, N'False', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (23, 1, N'can run on PC’s and larger system', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (23, 2, N'is multitasking', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (23, 3, N'is multiuser', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (23, 4, N'all of these', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (24, 1, N'Time sharing', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (24, 2, N'Multi-tasking', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (24, 3, N'Operating environment', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (24, 4, N'Spreadsheet', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (25, 1, N'Real time system', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (25, 2, N'Time sharing system', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (25, 3, N'Quick response system', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (25, 4, N'Batch system', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (26, 1, N'1', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (26, 2, N'2', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (26, 3, N'3', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (26, 4, N'4', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (27, 1, N'Batch and interactive', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (27, 2, N'Sequential and real time', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (27, 3, N'Batch and time share', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (27, 4, N'Sequential and direct', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (28, 1, N'Middle', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (28, 2, N'Lower', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (28, 3, N'Upper', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (28, 4, N'all of these', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (29, 1, N'A graphic display device', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (29, 2, N'A line printer used to print the output of a number of jobs', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (29, 3, N'A secondary storage device in a virtual memory system', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (29, 4, N'A terminal used to enter input data to a running program', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (30, 1, N'Interrupt servicing', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (30, 2, N'Interrupt handling', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (30, 3, N'Polling', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (30, 4, N'Spooling', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (31, 1, N'Multi-tasking', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (31, 2, N'Multiprogramming', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (31, 3, N'Batch operating system', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (31, 4, N'None of these', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (32, 1, N'First input-output scheduling', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (32, 2, N'First in first out scheduling', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (32, 3, N'Free input free output', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (32, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (33, 1, N'Log files', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (33, 2, N'Input devices', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (33, 3, N'Output devices', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (33, 4, N'All of the above', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (34, 1, N'BIOS', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (34, 2, N'Software programs', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (34, 3, N'Hardware devices', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (34, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (35, 1, N'Makes use of log files to do basic task', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (35, 2, N'One shell seems to be shared', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (35, 3, N'Allows users to use one system with two different terminals', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (35, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (36, 1, N'Multiple individual tasks', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (36, 2, N'Similar types of tasks are grouped together', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (36, 3, N'Tasks operating at different systems', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (36, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (37, 1, N'Log files', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (37, 2, N'Output types for file formats', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (37, 3, N'Software programs', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (37, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (38, 1, N'Global variables, personal address', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (38, 2, N'Shutdown', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (38, 3, N'Restarting services', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (38, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (39, 1, N'PSOS', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (39, 2, N'linuxRT', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (39, 3, N'VRTX', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (39, 4, N'Windows', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (40, 1, N'notepad', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (40, 2, N'New program', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (40, 3, N'Running process', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (40, 4, N'Logfile', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (41, 1, N'Maintaining recycle bin', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (41, 2, N'Transfer files', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (41, 3, N'Opens a program', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (41, 4, N'All of the above', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (42, 1, N'Restarts all the processes', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (42, 2, N'Shuts down the operating system completely', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (42, 3, N'Terminates all running programs completely', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (42, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (43, 1, N'A mobile device', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (43, 2, N'An operating system', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (43, 3, N'Hardware devices', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (43, 4, N'All of the above', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (44, 1, N'File format attribute', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (44, 2, N'Font allocation tree', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (44, 3, N'File allocation table', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (44, 4, N'Font attribute table', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (45, 1, N'Creating animations and other visual effects', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (45, 2, N'User Interface', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (45, 3, N'Visual effects', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (45, 4, N'User experience', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (46, 1, N'Element Object', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (46, 2, N'Document Object', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (46, 3, N'Both Element and Document Object', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (46, 4, N'Data object', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (47, 1, N'Using document object', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (47, 2, N'Registering appropriate event handlers', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (47, 3, N'Using element object', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (47, 4, N'Using data element', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (48, 1, N'XMLHttpResponse', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (48, 2, N'XMLRequest', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (48, 3, N'XMLHttpRequest', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (48, 4, N'XMLHttps', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (49, 1, N'Data storage', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (49, 2, N'Graphics APIs', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (49, 3, N'Other APIs for web apps', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (49, 4, N'Networking', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (50, 1, N'Data storage', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (50, 2, N'Networking', 1)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (50, 3, N'XMLHttpRequest object', 0)
GO
INSERT [dbo].[Choice] ([QuestionID], [OrderInQuestion], [Body], [IsAnswer]) VALUES (50, 4, N'Graphics APIs', 0)
GO
