USE [RandomExamGenerator]
GO

INSERT INTO [dbo].[Choice] ([QuestionID],[OrderInQuestion],[Body],[IsAnswer])
VALUES (1,1,'True',1),
       (1,2,'False',0),

       (2,1,'True',1),
       (2,2,'False',0),

	   (3,1,'True',0),
       (3,2,'False',1),


	   (4,1,'True',1),
       (4,2,'False',0),

	   (5,1,'True',0),
       (5,2,'False',1),


	   (6,1,'True',1),
       (6,2,'False',0),


	   (7,1,'True',1),
       (7,2,'False',0),

	   (8,1,'True',1),
       (8,2,'False',0),

	   (9,1,'True',0),
       (9,2,'False',1),

	   (10,1,'True',1),
       (10,2,'False',0),




	   (11,1,'True',1),
       (11,2,'False',0),

	   (12,1,'True',1),
       (12,2,'False',0),


	   (13,1,'True',0),
       (13,2,'False',1),

	   (14,1,'True',1),
       (14,2,'False',0),

	   (15,1,'True',1),
       (15,2,'False',0),


	   (16,1,'True',0),
       (16,2,'False',1),




	   (17,1,'True',1),
       (17,2,'False',0),


	   (18,1,'True',0),
       (18,2,'False',1),


	   (19,1,'True',1),
       (19,2,'False',0),


	   (20,1,'True',0),
       (20,2,'False',1),

	   (21,1,'True',1),
       (21,2,'False',0),

	   (22,1,'True',0),
       (22,2,'False',1),

	   (23,1,'can run on PC’s and larger system',0),
       (23,2,'is multitasking',0),
	   (23,3,'is multiuser',0),
	   (23,4,'all of these',1),

	   (24,1,'Time sharing',1),
       (24,2,'Multi-tasking',0),
	   (24,3,'Operating environment',0),
	   (24,4,'Spreadsheet',0),


	   (25,1,'Real time system',1),
       (25,2,'Time sharing system',0),
	   (25,3,'Quick response system',0),
	   (25,4,'Batch system',0),

	   (26,1,'1',0),
       (26,2,'2',0),
	   (26,3,'3',0),
	   (26,4,'4',1),



	   (27,1,'Batch and interactive',1),
       (27,2,'Sequential and real time',0),
	   (27,3,'Batch and time share',0),
	   (27,4,'Sequential and direct',0),


	   (28,1,'Middle',0),
       (28,2,'Lower',0),
	   (28,3,'Upper',1),
	   (28,4,'all of these',0),

	   (29,1,'A graphic display device',0),
       (29,2,'A line printer used to print the output of a number of jobs',1),
	   (29,3,'A secondary storage device in a virtual memory system',0),
	   (29,4,'A terminal used to enter input data to a running program',0),


	   (30,1,'Interrupt servicing',0),
       (30,2,'Interrupt handling',1),
	   (30,3,'Polling',0),
	   (30,4,'Spooling',0),

	   (31,1,'Multi-tasking',0),
       (31,2,'Multiprogramming',0),
	   (31,3,'Batch operating system',1),
	   (31,4,'None of these',0),



	   (32,1,'First input-output scheduling',0),
       (32,2,'First in first out scheduling',1),
	   (32,3,'Free input free output',0),
	   (32,4,'All of the above',0),


	   (33,1,'Log files',0),
       (33,2,'Input devices',0),
	   (33,3,'Output devices',0),
	   (33,4,'All of the above',1),

	   (34,1,'BIOS',0),
       (34,2,'Software programs',0),
	   (34,3,'Hardware devices',1),
	   (34,4,'All of the above',0),


	   (35,1,'Makes use of log files to do basic task',0),
       (35,2,'One shell seems to be shared',0),
	   (35,3,'Allows users to use one system with two different terminals',1),
	   (35,4,'All of the above',0),


	   (36,1,'Multiple individual tasks',0),
       (36,2,'Similar types of tasks are grouped together',1),
	   (36,3,'Tasks operating at different systems',0),
	   (36,4,'All of the above',0),



	   
	   (37,1,'Log files',0),
       (37,2,'Output types for file formats',1),
	   (37,3,'Software programs',0),
	   (37,4,'All of the above',0),

	   (38,1,'Global variables, personal address',1),
       (38,2,'Shutdown',0),
	   (38,3,'Restarting services',0),
	   (38,4,'All of the above',0),

	  
	   (39,1,'PSOS',0),
       (39,2,'linuxRT',0),
	   (39,3,'VRTX',0),
	   (39,4,'Windows',1),


	   (40,1,'notepad',0),
       (40,2,'New program',0),
	   (40,3,'Running process',0),
	   (40,4,'Logfile',1),



	   (41,1,'Maintaining recycle bin',0),
       (41,2,'Transfer files',0),
	   (41,3,'Opens a program',0),
	   (41,4,'All of the above',1),



	   
	   (42,1,'Restarts all the processes',1),
       (42,2,'Shuts down the operating system completely',0),
	   (42,3,'Terminates all running programs completely',0),
	   (42,4,'All of the above',0),

	   (43,1,'A mobile device',0),
       (43,2,'An operating system',1),
	   (43,3,'Hardware devices',0),
	   (43,4,'All of the above',0),


	   (44,1,'File format attribute',0),
       (44,2,'Font allocation tree',0),
	   (44,3,'File allocation table',1),
	   (44,4,'Font attribute table',0),


	   (45,1,'Creating animations and other visual effects',1),
       (45,2,'User Interface',0),
	   (45,3,'Visual effects',0),
	   (45,4,'User experience',0),

	   (46,1,'Element Object',0),
       (46,2,'Document Object',0),
	   (46,3,'Both Element and Document Object',1),
	   (46,4,'Data object',0),

	   (47,1,'Using document object',0),
       (47,2,'Registering appropriate event handlers',1),
	   (47,3,'Using element object',0),
	   (47,4,'Using data element',0),



	   (48,1,'XMLHttpResponse',0),
       (48,2,'XMLRequest',0),
	   (48,3,'XMLHttpRequest',1),
	   (48,4,'XMLHttps',0),


       (49,1,'Data storage',0),
	   (49,2,'Graphics APIs',0),
       (49,3,'Other APIs for web apps',0),
       (49,4,'Networking',1),

	   (50,1,'Data storage',0),
	   (50,2,'Networking',1),
	   (50,3,'XMLHttpRequest object',0),
	   (50,4,'Graphics APIs',0);


GO



