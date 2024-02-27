﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable enable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace RandomExamGenerator.DAL.Models;

[Table("Student")]
public partial class Student
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [StringLength(100)]
    public string Name { get; set; } = null!;

    [StringLength(6)]
    public string Gender { get; set; } = null!;

    public DateOnly Birthdate { get; set; }

    public bool IsDeleted { get; set; }

    [Column("DepartmentID")]
    public int DepartmentId { get; set; }

    [InverseProperty("Student")]
    public virtual ICollection<Answer> Answers { get; set; } = new List<Answer>();

    [ForeignKey("DepartmentId")]
    [InverseProperty("Students")]
    public virtual Department Department { get; set; } = null!;

    [InverseProperty("Student")]
    public virtual ICollection<EnrollsIn> EnrollsIns { get; set; } = new List<EnrollsIn>();

    [InverseProperty("Student")]
    public virtual ICollection<Exam> Exams { get; set; } = new List<Exam>();
}