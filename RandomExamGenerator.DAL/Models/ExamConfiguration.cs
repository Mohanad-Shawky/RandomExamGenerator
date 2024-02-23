﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable enable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace RandomExamGenerator.DAL.Models;

[Table("ExamConfiguration")]
public partial class ExamConfiguration
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [Column("ExamID")]
    public int? ExamId { get; set; }

    [StringLength(20)]
    public string QuestionDifficulty { get; set; } = null!;

    public int NumberOfQuestions { get; set; }

    [ForeignKey("ExamId")]
    [InverseProperty("ExamConfigurations")]
    public virtual Exam? Exam { get; set; }

    [ForeignKey("QuestionDifficulty")]
    [InverseProperty("ExamConfigurations")]
    public virtual QuestionDifficulty QuestionDifficultyNavigation { get; set; } = null!;
}