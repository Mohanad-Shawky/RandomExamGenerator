﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

#nullable enable

namespace RandomExamGenerator.DAL.Models
{
    public partial class SP_LoginAsInstructorWithPasswordResult
    {
        public int ID { get; set; }
        public string Name { get; set; } = default!;
        public string Role { get; set; } = default!;
        public string Gender { get; set; } = default!;
        public int DepartmentID { get; set; }
    }
}
