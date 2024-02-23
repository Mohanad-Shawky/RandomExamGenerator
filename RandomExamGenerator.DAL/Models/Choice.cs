﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable enable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace RandomExamGenerator.DAL.Models;

[PrimaryKey("QuestionId", "OrderInQuestion")]
[Table("Choice")]
public partial class Choice
{
    [Key]
    [Column("QuestionID")]
    public int QuestionId { get; set; }

    [Key]
    public int OrderInQuestion { get; set; }

    [StringLength(500)]
    public string Body { get; set; } = null!;

    public bool IsAnswer { get; set; }

    [ForeignKey("QuestionId")]
    [InverseProperty("Choices")]
    public virtual Question Question { get; set; } = null!;
}