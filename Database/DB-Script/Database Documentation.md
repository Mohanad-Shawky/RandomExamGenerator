# Exam Generator Database

This Folder/Branch is for the development of the database application

## Folder Structure Rules

### File Naming Rules

1. File name has the same name as the object.
2. Each folder has the name as the feature
3. The name of the documentation file name for each feature can be the same as the feature name, or any name you like.

### Folder Structure Must Be Like This

```shell
📦Database
 ┣ 📂Data
 ┃ ┗ 📜PopulateDB.sql
 ┣ 📂DB-Script
 ┃ ┗ 📜Database_Name.sql
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
