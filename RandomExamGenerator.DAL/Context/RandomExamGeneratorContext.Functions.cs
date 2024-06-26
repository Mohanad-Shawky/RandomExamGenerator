﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using Microsoft.EntityFrameworkCore;
using System;
using System.Data;
using System.Linq;
using RandomExamGenerator.DAL.Models;

namespace RandomExamGenerator.DAL.Context
{
    public partial class RandomExamGeneratorContext
    {

        [DbFunction("checkTimeConflict", "dbo")]
        public static bool? checkTimeConflict(int? studId, int? CourseId, DateTime? from, DateTime? to)
        {
            throw new NotSupportedException("This method can only be called from Entity Framework Core queries");
        }

        [DbFunction("FnS_SHA256NVARCHAR", "dbo")]
        public static string FnS_SHA256NVARCHAR(string message)
        {
            throw new NotSupportedException("This method can only be called from Entity Framework Core queries");
        }

        [DbFunction("ifEnroll", "dbo")]
        public static bool? ifEnroll(int? studId, int? CourseId)
        {
            throw new NotSupportedException("This method can only be called from Entity Framework Core queries");
        }

        [DbFunction("ifTeach", "dbo")]
        public static bool? ifTeach(int? instId, int? CourseId)
        {
            throw new NotSupportedException("This method can only be called from Entity Framework Core queries");
        }

        protected void OnModelCreatingGeneratedFunctions(ModelBuilder modelBuilder)
        {
        }
    }
}
