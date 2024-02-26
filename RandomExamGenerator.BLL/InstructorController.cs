using RandomExamGenerator.DAL.Models;

namespace RandomExamGenerator.BLL;

public class InstructorController:BaseController
{

    static List<Instructor> getAllInstructors()
    {
        return Ctxt.Instructors.ToList();
    }
    
}