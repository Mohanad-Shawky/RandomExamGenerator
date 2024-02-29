using RandomExamGenerator.BLL.Helpers;
using RandomExamGenerator.DAL.Models;

namespace RandomExamGenerator.BLL;

public class InstructorController:BaseController
{

    static List<Instructor> getAllInstructors()
    {
        return Ctxt.Instructors.ToList();
    }

    public static async Task<List<Instructor>> GetAllInstructors()
    {
        Ctxt.Instructors.Local.Clear();
        var task = await ContextProcedures.GetAllInstructorsAsync();
        var instructors = task;
        foreach (var instructor in instructors)
        {
            Ctxt.Instructors.Local.Add(instructor);
        }

        return instructors;
    }



    public static List<Instructor> GetAllInstructorsContains(string query)
    {

        var filteredEntities = Ctxt.Instructors.Local.Where(i => i.Name.Contains(query, StringComparison.CurrentCultureIgnoreCase)).ToList();
        return new List<Instructor>(filteredEntities);

    }
    public static int AddInstructor(Instructor instructor, string password, List<int> courseIDs)
    {

        var task = Task.Run(async () => await ContextProcedures.InsertInstructorWithCoursesAsync(
            UserName: instructor.Name,
            PasswordHash: UserHelper.GetHash(UserHelper.sha256, password).ToUpper(),
            Role: instructor.Role,
            Gender: instructor.Gender,
            DepartmentID: instructor.DepartmentId,
            CourseIDs: ToDataTable(courseIDs)
        ));
        var r = task.Result;
        Console.WriteLine(r);
        return r;
    }

    public static List<string> GetInstructorCoursesByID(int id)
    {
        var task = Task.Run(async () => await ContextProcedures.GetInstructorCoursesByIDAsync(id));
        var instructorCourses = task.Result;
        return instructorCourses.Select(IC => IC.Name).ToList();
    }
    public static int DeleteInstructorByID(int id)
    {
        var task = Task.Run(async () => await ContextProcedures.DeleteInstructorByIDAsync(id));
        var r = task.Result;
        return r;
    }
    public static async Task<int> UpdateInstructor(Instructor instructor, List<int> courseIDs)
    {
        var task = await ContextProcedures.UpdateInstructorByIDAsync(
            InstructorID: instructor.Id,
            Name: instructor.Name,
            Role: instructor.Role,
            Gender: instructor.Gender,
            DepartmentID: instructor.DepartmentId,
            CourseIDs: ToDataTable(courseIDs)
            );
        var r = task;
        Console.WriteLine(r);
        return r;
    }

}