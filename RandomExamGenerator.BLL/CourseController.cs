using RandomExamGenerator.DAL.Models;

namespace RandomExamGenerator.BLL;

public class CourseController:BaseController
{
    public static List<Course> GetAllCourses()
    {
       // return Context.Courses.ToList().Select(t=>t.Name).ToList();
       var task = Task.Run(async () => await ContextProcedures.GetAllCoursesAsync());     
       var courses = task.Result;
       return courses;
    } 
}