﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

#nullable enable

namespace RandomExamGenerator.DAL.Models
{
    public partial class SP_StudentAnswersResult
    {
        public string Header { get; set; } = default!;
        public string? Question_Choices { get; set; }
        public int ModelAnswer { get; set; }
        public int StudentAnswer { get; set; }
    }
}