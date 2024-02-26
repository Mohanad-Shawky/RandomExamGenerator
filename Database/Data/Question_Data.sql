USE [RandomExamGenerator]
GO

INSERT INTO [dbo].[Question] ([Type],[Difficulty],[ModelAnswer], [Header], [CourseID],[Points])
VALUES
       ('tf','easy',1, 'All files in a single-level directory must have unique names.', 2,1),
       ('tf','easy',1, 'Without a mechanism such as an address-space identifier, the TLB must be flushed during a context switch.', 2,2),
       ('tf','easy',2, 'LOOK disk head scheduling offers no practical benefit over SCAN disk head scheduling.', 2,3),

	   ('tf','easy',1, 'VFS allows dissimilar file systems to be accessed similarly.', 2,1),
       ('tf','easy',2, 'A relative path name begins at the root directory', 2,1),


       ('tf','medium',1, 'An access matrix is generally sparse.', 2,1),
       ('tf','medium',1, 'A cache is a region of faster memory that holds copies of data from a slower memory.', 2,2),
	   ('tf','medium',1, 'It is not generally possible to prevent denial-of-service attacks.', 2,1),
	   ('tf','medium',2, 'It is easier to protect computer systems against malicious misuse than against accidental misuse.', 2,1),
	   ('tf','medium',1, 'An access matrix is generally sparse.', 2,2),

       ('tf','hard',1, 'A system call is triggered by software', 2,1),
       ('tf','hard',1, 'A system call is triggered by software', 2,2),
       ('tf','hard',2, 'Solaris, Windows XP, and Linux assign higher-priority threads/tasks longer time quanta and lower-priority tasks shorter time quanta.', 2,1),
	   ('tf','hard',1, 'The most complex scheduling algorithms we discussed is the multilevel feedback-queue algorithm.', 2,2),
	   ('tf','hard',1, 'In RR scheduling, the time quantum should be large with respect to the context-switch time.', 2,2),
	   ('tf','hard',2, 'In a multi-threaded process, the threads share a single, common register set and stack.', 2,1),
	  
	   ('tf','easy',1, 'In general, Windows system calls have longer, more descriptive names and UNIX system calls use shorter, less descriptive names.', 2,1),
	   ('tf','easy',2, 'Inverted page tables require each process to have its own page table.', 2,1),
	   ('tf','easy',1, 'Java condition variables must always be used in conjunction with a reentrant lock', 2,1),
	   ('tf','easy',2, 'Protocols to prevent hold-and-wait conditions typically also prevent starvation.', 2,2),
	   ('tf','easy',1, 'Mutex locks and binary semaphores are essentially the same thing.', 2,1),
	   ('tf','easy',2, 'A deadlock-free solution eliminates the possibility of starvation.', 2,1),
	   ('smcq','easy',4, 'UNIX operating system', 2,1),
	   ('smcq','easy',1, 'Which of the following software is used to simplify using of system software?', 2,2),
       ('smcq','easy',1, 'What is the name of the operating system that reads and reacts in terms of actual time?', 2,2),
	   ('smcq','easy',4, 'Computer system is divided into how many numbers of components?', 2,1),


	   ('smcq','easy',1, 'Two basic types of operating systems are', 2,1),
	   ('smcq','easy',3, 'Operating system is resident in memory of which part?', 2,1),
	   ('smcq','easy',2, 'Which of the following is an example of a spooled device?', 2,1),   
	   ('smcq','medium',2, 'Context switching is part of', 2,1),
	   ('smcq','medium',3, 'Card reader is an example of', 2,2),

	  
	   ('smcq','hard',2, 'What is FIFO scheduling?', 2,3),
	   ('smcq','hard',4, 'What makes an operating system whole?', 2,3),
	   ('smcq','hard',3, 'What of the following isn’t directly related to the operating system?', 2,1),
	   ('smcq','hard',3, ' What is a time sharing operating system?', 2,3),
	   ('smcq','hard',2, 'What is a batch operating system?', 2,1),
	   ('smcq','hard',2, 'What are file extensions?', 2,1),
	   ('smcq','hard',1, 'What are the properties of processes in an operating system?', 2,1),
	   ('smcq','easy',4, 'Which one of the following isn’t considered a real-time operating system?', 2,1),
	   ('smcq','easy',4, 'Where are the errors and bugs recorded?', 2,3),
	   ('smcq','easy',4, 'What operations mentioned are done by an operating system?', 2,1),
	   ('smcq','easy',1, 'What does restarting an operating system do?', 2,3),
	   ('smcq','easy',2, 'Who needs a BIOS to function properly?', 2,3),
	   ('smcq','easy',3, 'What does FAT mean?', 2,3),
	   
	   ('smcq','easy',1, 'The main purpose of JavaScript in web browser is to', 1,2),
	   ('smcq','hard',3, 'A JavaScript program can traverse and manipulate document content through', 1,1),
	   ('smcq','hard',2, 'The behaviour of the document elements can be defined by', 1,2),
	   ('smcq','easy',3, 'The service(s) that enables networking through scripted HTTP requests is', 1,1),
	   ('smcq','medium',4, 'The HTML5 specification does not includes', 1,3),
	   ('smcq','medium',2, 'Which of the following is not an advanced services?', 1,1);

GO








