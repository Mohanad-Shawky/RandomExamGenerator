# Exam Generator Database

> This Folder/Branch is for the development of the database application

## Folder Structure Rules

### File Naming Rules

1. File name has the same name as the object.
   1. All object names follow the Snake_Pascal_Case.
   2. Stored procedure name starts with "SP" followed by the name of the procedure.
   3. Trigger name starts with "T" followed by the abb. of the trigger type like "Instead Of Insert" -> "IOI", "After Insert" -> "TAI". example: "TIOI_Exams", "TAI_Answers".
   4. View names start with "V" followed by the view name
2. Each folder has the name as the feature
3. The name of the documentation file for each feature can be the same as the feature name, or any name you like.

### Folder Structure Must Be Like This

```shell
📦Database
 ┣ 📂Data
 ┃ ┗ 📜PopulateDB.sql
 ┣ 📂DB-Script
 ┃ ┣ 📜Database_Name.sql
 ┣ ┗ 📜Database_Documentation.md
 ┣ 📂Stored-Procedures
 ┃ ┣ 📂Courses
 ┃ ┃ ┣ 📜SP_Courses_Documentation.md
 ┃ ┃ ┣ 📜SP_CreateCourse.sql
 ┃ ┃ ┣ 📜SP_DeleteCourse.sql
 ┃ ┃ ┗ 📜SP_UpdateCourse.sql
 ┃ ┗ 📂Login
 ┃ ┃ ┣ 📜SP_Login.sql
 ┃ ┃ ┗ 📜SP_Login_Documentation.md
 ┣ 📂Tables
 ┃ ┣ 📜Choices.sql
 ┃ ┣ 📜Courses.sql
 ┃ ┣ 📜DB_Mapping_Documentation.md
 ┃ ┣ 📜Exam.sql
 ┃ ┣ 📜Instructors.sql
 ┃ ┣ 📜Instructors_Teach_Courses.sql
 ┃ ┣ 📜Questions.sql
 ┃ ┣ 📜Student_Enroll_In_Course.sql
 ┃ ┣ 📜Students.sql
 ┃ ┗ 📜User_Account.sql
 ┣ 📂Triggers
 ┃ ┣ 📂Exam-Answers
 ┃ ┃ ┣ 📜TAI_Answers.sql
 ┃ ┃ ┣ 📜TIOU_Answers.sql
 ┃ ┃ ┗ 📜Triggers_Documentation.md
 ┃ ┗ 📂Exam-Generation
 ┃ ┃ ┣ 📜Exam_Gen_T_Documentation.md
 ┃ ┃ ┣ 📜TIOD_Exam.sql
 ┃ ┃ ┗ 📜TIOI_Exam.sql
 ┣ 📂Views
 ┃ ┣ 📂Courses
 ┃ ┃ ┣ 📜Views_Documentation.md
 ┃ ┃ ┣ 📜V_AllCoursesByInstructor.sql
 ┃ ┃ ┗ 📜V_AllCoursesByStudent.sql
 ┃ ┣ 📜Views_Documentation.md
 ┃ ┗ 📜V_Report_ModelAnswer.sql
 ┗ 📜README.md
```

## Commits

> In this branch and any sub-branch we have to unify the commit message and commit summary.

### Commit Messages

1. Each message must be in the present tense. Example: `Add SP to Create a question`
2. Messages must be descriptive in general.
3. Don't write too long messages
4. For newly added features or objects use `Add` for bug fixes use `Fix` for deleting a feature use `Remove` for changes use `Change ... to ...`.

### Commit Summary (Description)

>**The commit summery should provide a clear anc concise description of what happened in this commit with multiple lines**

## Branching

> Each feature will have a branch.
> For each object created for a feature, it is created within a folder with the feature name inside the object folder.
