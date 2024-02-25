using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RandomExamGenerator.DAL.Context;

namespace RandomExamGenerator.DAL.Models;


public partial class Student
{

    public Student() { }
    public Student(SP_LoginAsStudentWithPasswordResult loginAsStudentWithPasswordResult)
    {
        this.Id = loginAsStudentWithPasswordResult.ID;
        this.Name = loginAsStudentWithPasswordResult.Name;
        this.Gender = loginAsStudentWithPasswordResult.Gender;
        this.Birthdate = loginAsStudentWithPasswordResult.Birthdate;
    }

    public Student(SP_LoginAsStudentWithHashResult loginAsStudentWithHashResult)
    {
        this.Id = loginAsStudentWithHashResult.ID;
        this.Name = loginAsStudentWithHashResult.Name;
        this.Gender = loginAsStudentWithHashResult.Gender;
        this.Birthdate = loginAsStudentWithHashResult.Birthdate;
    }

}
