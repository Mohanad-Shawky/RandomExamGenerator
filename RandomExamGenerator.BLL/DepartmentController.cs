using RandomExamGenerator.DAL.Models;

namespace RandomExamGenerator.BLL;

public class DepartmentController:BaseController
{
    public static List<Department> GetAllDepartments()
    {
        //return Context.Departments.ToList();
        var task = Task.Run(async () => await ContextProcedures.GetAllDepartmentsAsync());
        var depts = task.Result ;
        foreach(var dept in depts)
        {
            Ctxt.Departments.Local.Add(dept);
        }
        return depts;
    }

    public static List<Department> GetAllDepartment()
    {
        return Ctxt.Departments.ToList();

    }

    public static void SaveAllTracks()
    {

        Ctxt.SaveChanges();

    }

}