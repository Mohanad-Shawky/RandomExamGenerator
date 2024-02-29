using RandomExamGenerator.DAL.Context;
using RandomExamGenerator.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RandomExamGenerator.BLL
{
    public class StudentCourse
    {
        public RandomExamGeneratorContext context { set; get; }
        public RandomExamGeneratorContextProcedures ContextProcedures { set; get; }

        public StudentCourse()
        {
            context = new RandomExamGeneratorContext();
            ContextProcedures = new RandomExamGeneratorContextProcedures(context);
        }

        public Task<List<GetAllCoursesForStudentResult>> GetAllCoursesForStudent(int StudentID)
        {
            var Courses =  ContextProcedures.GetAllCoursesForStudentAsync(StudentID);
            return Courses;
        }
        public Task<List<GetExamInfoForStudentResult>> GetExamInfoForStudent(int StudentID , int CourseID)
        {
            var ExamInfo =  ContextProcedures.GetExamInfoForStudentAsync(StudentID, CourseID);
            return ExamInfo;
        }

        public Task <int> GetExamQuestionsNum(int ExamID, OutputParameter<int> returnValue)
        {
            return ContextProcedures.GetExamQuestionsNumAsync(ExamID , returnValue);
        }
    }
}
