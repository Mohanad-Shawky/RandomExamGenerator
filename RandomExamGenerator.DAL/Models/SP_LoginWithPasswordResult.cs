﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

#nullable enable

namespace RandomExamGenerator.DAL.Models
{
    public partial class SP_LoginWithPasswordResult
    {
        public int ID { get; set; }
        public string PasswordHash { get; set; } = default!;
        public string Type { get; set; } = default!;
        public string UserName { get; set; } = default!;
    }
}
