﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable enable
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using RandomExamGenerator.DAL.Models;

namespace RandomExamGenerator.DAL.Context;

public partial class RandomExamGeneratorContext : DbContext
{
    private static RandomExamGeneratorContext? instance;

    public static RandomExamGeneratorContext Context(DbContextOptions<RandomExamGeneratorContext>? options = null)
    {
        if(instance == null)
        {
            if(options == null)
            {
                instance = new RandomExamGeneratorContext();
            }
            else
            {
                instance = new RandomExamGeneratorContext(options);
            }
        }
        return instance;
    }

    static RandomExamGeneratorContext()
    {
        instance = null;
    }

    protected RandomExamGeneratorContext()
    {
    }

    protected RandomExamGeneratorContext(DbContextOptions<RandomExamGeneratorContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Answer> Answers { get; set; }

    public virtual DbSet<Choice> Choices { get; set; }

    public virtual DbSet<Course> Courses { get; set; }

    public virtual DbSet<CourseView> CourseViews { get; set; }

    public virtual DbSet<Department> Departments { get; set; }

    public virtual DbSet<EnrollsIn> EnrollsIns { get; set; }

    public virtual DbSet<Exam> Exams { get; set; }

    public virtual DbSet<ExamConfiguration> ExamConfigurations { get; set; }

    public virtual DbSet<ExamQuestion> ExamQuestions { get; set; }

    public virtual DbSet<Instructor> Instructors { get; set; }

    public virtual DbSet<InstructorRole> InstructorRoles { get; set; }

    public virtual DbSet<Question> Questions { get; set; }

    public virtual DbSet<QuestionDifficulty> QuestionDifficulties { get; set; }

    public virtual DbSet<QuestionType> QuestionTypes { get; set; }

    public virtual DbSet<Student> Students { get; set; }

    public virtual DbSet<TaughtIn> TaughtIns { get; set; }

    public virtual DbSet<Teach> Teaches { get; set; }

    public virtual DbSet<Topic> Topics { get; set; }

    public virtual DbSet<TopicQuestion> TopicQuestions { get; set; }

    public virtual DbSet<Track> Tracks { get; set; }

    public virtual DbSet<UserAccount> UserAccounts { get; set; }

    public virtual DbSet<UserAccountType> UserAccountTypes { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseSqlServer("Data Source=.;Initial Catalog=RandomExamGenerator;Integrated Security=True;Encrypt=False");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Answer>(entity =>
        {
            entity.Property(e => e.ModelAnswer).HasComment("Represents OrderInQuestion for the choice marked as the answer for this (Single Choice,T/F) Question.");
            entity.Property(e => e.StudentAnswer).HasComment("Represents OrderInQuestion for the choice marked the student selected as his answer fort his (Single Choice,T/F) Question.");

            entity.HasOne(d => d.Exam).WithMany(p => p.Answers)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Answer_Exam");

            entity.HasOne(d => d.Question).WithMany(p => p.Answers)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Answer_Question");

            entity.HasOne(d => d.Student).WithMany(p => p.Answers)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Answer_Student");
        });

        modelBuilder.Entity<Choice>(entity =>
        {
            entity.HasOne(d => d.Question).WithMany(p => p.Choices).HasConstraintName("FK_Choice_Question");
        });

        modelBuilder.Entity<CourseView>(entity =>
        {
            entity.ToView("CourseView");
        });

        modelBuilder.Entity<Department>(entity =>
        {
            entity.Property(e => e.InstructorManagerId).HasDefaultValueSql("(NULL)");

            entity.HasOne(d => d.InstructorManager).WithMany(p => p.Departments).HasConstraintName("FK_Department_Has_Instructor_Manager");
        });

        modelBuilder.Entity<EnrollsIn>(entity =>
        {
            entity.Property(e => e.IsPassed).HasDefaultValueSql("(NULL)");

            entity.HasOne(d => d.Course).WithMany(p => p.EnrollsIns)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_EnrollsIn_Course");

            entity.HasOne(d => d.Student).WithMany(p => p.EnrollsIns)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_EnrollsIn_Student");
        });

        modelBuilder.Entity<Exam>(entity =>
        {
            entity.ToTable("Exam", tb =>
                {
                    tb.HasTrigger("CheckExamInfo");
                    tb.HasTrigger("TIOD_PreventDeletionOfTakenExams");
                    tb.HasTrigger("UpdateExam");
                });

            entity.Property(e => e.StudentScore).HasDefaultValue(0.0);
            entity.Property(e => e.StudentTimeToSolve).HasComment("Represents the time the student took to solve the exam in seconds.");
            entity.Property(e => e.TotalTime).HasComment("Represents the duration of the exam in seconds.");

            entity.HasOne(d => d.Course).WithMany(p => p.Exams)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Exam_Course");

            entity.HasOne(d => d.Instructor).WithMany(p => p.Exams)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("FK_Exam_Instructor");

            entity.HasOne(d => d.Student).WithMany(p => p.Exams)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Exam_Student");
        });

        modelBuilder.Entity<ExamConfiguration>(entity =>
        {
            entity.HasOne(d => d.Exam).WithMany(p => p.ExamConfigurations).HasConstraintName("FK_ExamConfiguration_Exam");

            entity.HasOne(d => d.QuestionDifficultyNavigation).WithMany(p => p.ExamConfigurations)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_ExamConfiguration_QuestionDifficulty");
        });

        modelBuilder.Entity<ExamQuestion>(entity =>
        {
            entity.ToTable(tb => tb.HasTrigger("TIOD_PreventDeletionOfTakenExamQuestions"));

            entity.HasOne(d => d.Exam).WithMany(p => p.ExamQuestions)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_ExamQuestions_Exam");

            entity.HasOne(d => d.Question).WithMany(p => p.ExamQuestions)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_ExamQuestions_Question");
        });

        modelBuilder.Entity<Instructor>(entity =>
        {
            entity.Property(e => e.Id).ValueGeneratedNever();

            entity.HasOne(d => d.Department).WithMany(p => p.Instructors)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Instructor_WorksIn_Department");

            entity.HasOne(d => d.IdNavigation).WithOne(p => p.Instructor).HasConstraintName("FK_Instructor_UserAccount");

            entity.HasOne(d => d.RoleNavigation).WithMany(p => p.Instructors)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Instructor_InstructorRole");
        });

        modelBuilder.Entity<Question>(entity =>
        {
            entity.Property(e => e.ModelAnswer).HasComment("Represents OrderInQuestion for the choice marked as the answer for this (Single Choice,T/F) Question");

            entity.HasOne(d => d.Course).WithMany(p => p.Questions).HasConstraintName("FK_Question_Course");

            entity.HasOne(d => d.DifficultyNavigation).WithMany(p => p.Questions)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Question_QuestionDifficulty");

            entity.HasOne(d => d.TypeNavigation).WithMany(p => p.Questions)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Question_QuestionType");
        });

        modelBuilder.Entity<Student>(entity =>
        {
            entity.Property(e => e.Id).ValueGeneratedNever();

            entity.HasOne(d => d.IdNavigation).WithOne(p => p.Student).HasConstraintName("FK_Student_UserAccount");
        });

        modelBuilder.Entity<TaughtIn>(entity =>
        {
            entity.HasOne(d => d.Course).WithMany()
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_TaughtIn_Course");

            entity.HasOne(d => d.Track).WithMany()
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_TaughtIn_Track");
        });

        modelBuilder.Entity<Teach>(entity =>
        {
            entity.HasOne(d => d.Course).WithMany(p => p.Teaches)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Teaches_Course");

            entity.HasOne(d => d.Instructor).WithMany(p => p.Teaches)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Teaches_Instructor");
        });

        modelBuilder.Entity<Topic>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK_Topic_1");

            entity.HasOne(d => d.Course).WithMany(p => p.Topics).HasConstraintName("FK_Topic_Course");
        });

        modelBuilder.Entity<TopicQuestion>(entity =>
        {
            entity.HasOne(d => d.Question).WithMany(p => p.TopicQuestions)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_TopicQuestions_Question");

            entity.HasOne(d => d.Topic).WithMany(p => p.TopicQuestions)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_TopicQuestions_Topic");
        });

        modelBuilder.Entity<Track>(entity =>
        {
            entity.HasOne(d => d.Department).WithMany(p => p.Tracks).HasConstraintName("FK_Track_Department");

            entity.HasOne(d => d.InstructorSupervisorNavigation).WithMany(p => p.Tracks)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("FK_Track_Instructor_Supervisor");
        });

        modelBuilder.Entity<UserAccount>(entity =>
        {
            entity.HasOne(d => d.TypeNavigation).WithMany(p => p.UserAccounts)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_UserAccount_UserAccountType");
        });

        OnModelCreatingGeneratedProcedures(modelBuilder);
        OnModelCreatingGeneratedFunctions(modelBuilder);
        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}