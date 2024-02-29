using Microsoft.EntityFrameworkCore;
using RandomExamGenerator.DAL.Context;
using RandomExamGenerator.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RandomExamGenerator.BLL
{
    public class StudentController : BaseController
    {

        //public static RandomExamGeneratorContext CTT = Ctxt;
        public static List<Student> GetAllStudents()
        {
            return Ctxt.Students.ToList();

        }

        public static void  SaveAllStudents()
        {  

             Ctxt.SaveChanges();
            
        }
        public static bool InsertStudents(Student ST)
        {
           
            if (ST != null)
            {
                Ctxt.Students.Add(ST);
                return true;
            }
            return false;


        }
    }
}
