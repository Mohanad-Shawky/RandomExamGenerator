// Ignore Spelling: BLL Questionid

using RandomExamGenerator.DAL.Context;
using RandomExamGenerator.DAL.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RandomExamGenerator.BLL
{
    public class ExamManagement
    {
        public RandomExamGeneratorContext context { set; get; }
        public RandomExamGeneratorContextProcedures ContextProcedures { set; get; }

        public ExamManagement()
        {
            context = new RandomExamGeneratorContext();
            ContextProcedures = new RandomExamGeneratorContextProcedures(context);
        }

        public  Task<List<GetExamHistoryResult>> GetExamHistory(int ExamIDText)
        {
            var ExamInfo =  ContextProcedures.GetExamHistoryAsync(ExamIDText);
            return ExamInfo;
        }

        public  Task<List<GetQuestionsForExamResult>> GetQuestionsForExam(int ExamIDText)
        {
            var ExamQuestions =  ContextProcedures.GetQuestionsForExamAsync(ExamIDText);
            return ExamQuestions;
        }

        public  Task<List<GetStudentAnswerInExamResult>> GetStudentAnswerInExam(int StudentID , int ExamIDText , int Questionid)
        {
            var StudentAnswers =  ContextProcedures.GetStudentAnswerInExamAsync(StudentID, ExamIDText, Questionid);
            return StudentAnswers;
        }

        public  Task<List<GetChoicesForQuestionResult>> GetChoicesForQuestion(int Questionid)
        {
            var QuestionChoices =  ContextProcedures.GetChoicesForQuestionAsync(Questionid);
            return QuestionChoices;
        }

        public Task<List<GetExamResult>> GetExam(int CourseID , int StudentID)
        {
            var ExamQuestions =  ContextProcedures.GetExamAsync(CourseID, StudentID);
            return ExamQuestions;
        }

        public Task<List<GetTotalTimeForExamResult>> GetTotalTimeForExam(int ExamID)
        {
            var TotalTimeForExam =  ContextProcedures.GetTotalTimeForExamAsync(ExamID);
            return TotalTimeForExam;
        }

        public Task<List<SP_CreateStudentAnswerResult>> CreateStudentAnswer(DataTable answersTable, int StudentID, int ExamID)
        {
              var hh = ContextProcedures.SP_CreateStudentAnswerAsync(answersTable, StudentID, ExamID);
            return hh;
        }
        public Task<List<CorrectExamResult>> CorrectExam(int ExamID , int StudentID)
        {
            return ContextProcedures.CorrectExamAsync(ExamID, StudentID);

        }
        public void SaveChanges()
        {
             context.SaveChangesAsync();
        }

    }
}
