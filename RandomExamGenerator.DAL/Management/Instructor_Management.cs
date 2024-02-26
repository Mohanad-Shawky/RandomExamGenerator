using Microsoft.EntityFrameworkCore.Storage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RandomExamGenerator.DAL.Context;
using RandomExamGenerator.DAL.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Data.SqlClient;
using System.Data;
using Newtonsoft.Json.Linq;
using System.Security.Cryptography;
using Azure;

namespace RandomExamGenerator.DAL.Management
{
    public class Instructor_Management
    {

        public static RandomExamGeneratorContext dbManager=new();

        public static Dictionary<Course, List<GetCoursesTaughtByInstructorResult>> instCourseStudents(int instId)
        {
            var courseStudentsMap = new Dictionary<Course, List<GetCoursesTaughtByInstructorResult>>();
            try
            {
                var coursesTaughtByInstructor = dbManager.Set<Course>().FromSqlRaw("EXEC GetCoursesTaughtByInstructor @InstructorId", new SqlParameter("@InstructorId", instId)).ToList();

                foreach (var course in coursesTaughtByInstructor)
                {
                    using (var dbManager = new RandomExamGeneratorContext())
                    {
                        var studentsEnrolledInCourse = dbManager.Database.SqlQueryRaw<GetCoursesTaughtByInstructorResult>(
                                                        "GetStudentCourses @CourseID",
                                                        new SqlParameter("@CourseID", course.Id)).AsNoTracking().ToList();
                        courseStudentsMap.Add(course, studentsEnrolledInCourse);
                    }
                }
            }
            catch(Exception ex)
            {
                return null;
            }
            return courseStudentsMap;
        }

        public static bool updateCourse(int instId, int cId, string newCourseName)
        {
            try
            {
                dbManager.Database.ExecuteSqlRaw("EXEC UpdateCourse  @courseName,@courseid,@InstructorId"
                                                     , new SqlParameter("@InstructorId", instId),
                                                       new SqlParameter("@courseid", cId),
                                                       new SqlParameter("@courseName", newCourseName));
            }
            catch(Exception ex)
            {
                return false;
            }
            return true;
        }


        public static bool deleteStudentEnroll(int instId, int sutId, int cId)
        {
            bool ifSucces = true;
            try
            {

                using (var context = new RandomExamGeneratorContext())
                {
                    var result = new SqlParameter("@Result", SqlDbType.Int);
                    result.Direction = ParameterDirection.ReturnValue;


                    context.Database.ExecuteSqlRaw("EXEC checkStudentHaveExam @courseid, @studId",
                                                    new SqlParameter("@courseid", cId),
                                                    new SqlParameter("@studId", sutId), result);

                    if ((int)result.Value == 0)
                    {
                        context.Database.ExecuteSqlRaw("EXEC Un_EnrollStudentInCourse  @InstructorId,@studId,@courseid"
                                                         , new SqlParameter("@InstructorId", instId),
                                                         new SqlParameter("@courseid", cId),
                                                         new SqlParameter("@studId", sutId));
                    }
                    else ifSucces = false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            return ifSucces;
        }


        public static int addNewQuestion(Question question)
        {
            try
            {
                var questionIdParam = new SqlParameter("@QuestionID", SqlDbType.Int);
                questionIdParam.Direction = ParameterDirection.Output;

                dbManager.Database.ExecuteSqlRaw("EXEC insertNewQuestion @type, @modelAnswer, @difficulty, @header, @courseID, @points, @QuestionID OUTPUT",
                    new SqlParameter("@type", question.Type),
                    new SqlParameter("@modelAnswer", question.ModelAnswer),
                    new SqlParameter("@difficulty", question.Difficulty),
                    new SqlParameter("@header", question.Header),
                    new SqlParameter("@courseID", question.CourseId),
                    new SqlParameter("@points", question.Points),
                    questionIdParam);
                return (int)questionIdParam.Value;
            }
            catch(Exception ex)
            {
                return -1;
            }
        }


        public static bool insertChoice(int order,int qId, string body, bool isCorrect)
        {
            try
            {
                dbManager.Database.ExecuteSqlRaw("EXEC   insertChoice @qId,@orderId,@body,@isCorrect"
                     , new SqlParameter("@qId", qId),
                     new SqlParameter("@orderId", order),
                     new SqlParameter("@body", body),
                     new SqlParameter("@isCorrect", isCorrect));
                return true;
            }
            catch(Exception ex)
            {
                return false;

            }
        }


        public static bool addNewCourse(int instId,string courseName)
        {
            try
            {
                dbManager.Database.ExecuteSqlRaw("EXEC InsertCourse @courseName,@instId"
                     , new SqlParameter("@courseName", courseName),
                     new SqlParameter("@instId", instId));
            }
            catch(Exception ex)
            {
                return false;
            }
            return true;
        }


        public static bool genertaeExam(int crsId,int  studId, int instId,float totalTime, DateTime combinedDateTime,
                float succesPer,int easyNo ,int mediamNo,int hardNo)
        {
            try
            {
                dbManager.Database.ExecuteSqlRaw("EXEC ExamGeneration @crsId,@studID,@instID,@totalTime,@scheduledTime ," +
                   "@successPrecent,@easyNo,@mediamNo,@hardNo"
               , new SqlParameter("@crsId", crsId),
               new SqlParameter("@studID", studId),
               new SqlParameter("@instID", instId),
               new SqlParameter("@totalTime", totalTime),
               new SqlParameter("@scheduledTime", combinedDateTime),
               new SqlParameter("@successPrecent", succesPer),
               new SqlParameter("@easyNo", easyNo),
               new SqlParameter("@mediamNo", mediamNo),
               new SqlParameter("@hardNo", hardNo)
               );

            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }
    }
 }
