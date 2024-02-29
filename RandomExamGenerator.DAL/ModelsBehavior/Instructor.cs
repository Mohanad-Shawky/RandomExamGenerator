using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RandomExamGenerator.DAL.Context;

namespace RandomExamGenerator.DAL.Models;


public partial class Instructor
{

    public Instructor() { }

    public Instructor(SP_LoginAsInstructorWithPasswordResult loginAsInstructorWithPasswordResult)
    {
        this.Id = loginAsInstructorWithPasswordResult.ID;
        this.Name = loginAsInstructorWithPasswordResult.Name;
        this.Role = loginAsInstructorWithPasswordResult.Role;
        this.Gender = loginAsInstructorWithPasswordResult.Gender;
    }

    public Instructor(SP_LoginAsInstructorWithHashResult loginAsInstructorWithHashResult)
    {
        this.Id = loginAsInstructorWithHashResult.ID;
        this.Name = loginAsInstructorWithHashResult.Name;
        this.Role = loginAsInstructorWithHashResult.Role;
        this.Gender = loginAsInstructorWithHashResult.Gender;
    }
}