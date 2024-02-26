using NuGet.Protocol.Core.Types;
using RandomExamGenerator.BLL;
using RandomExamGenerator.DAL.Context;
using RandomExamGenerator.DAL.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;

namespace RandomExamGenerator.WinFormsUI
{
    public partial class StudentCourses : Form
    {
        int StudentID = 9;
        StudentCourse studentCourse = new StudentCourse();
        public StudentCourses()
        {
            InitializeComponent();
        }

        private async void StudentCourses_Load(object sender, EventArgs e)
        {
            await LoadStudentCoursesAsync();
        }

        private async Task LoadStudentCoursesAsync()
        {
            panel.AutoScroll = true;

            //using (RandomExamGeneratorContext context = new RandomExamGeneratorContext())
            //{
            //    var ContextProcedures = new RandomExamGeneratorContextProcedures(context);
            var Courses = await studentCourse.GetAllCoursesForStudent(StudentID);
            int groupBoxX = 50;
            int groupBoxY = 50;
            int maxFormWidth = this.Width - 50;
            int maxGroupBoxWidth = 250;
            int horizontalSpacing = 20;
            foreach (var course in Courses)
            {
                System.Windows.Forms.GroupBox groupBox1 = new System.Windows.Forms.GroupBox();
                groupBox1.Text = course.Name;
                groupBox1.Location = new System.Drawing.Point(groupBoxX, groupBoxY);

                Label label1 = new Label();
                label1.Size = new System.Drawing.Size(200, 20);

                Button button1 = new Button();
                button1.Size = new System.Drawing.Size(100, 30);

                var ExamInfo = await studentCourse.GetExamInfoForStudent(StudentID, course.ID);

                // check if StudentID is existed in Exam Table

                if (ExamInfo.Count() != 0)
                {
                    OutputParameter<int> returnValue = new OutputParameter<int>();

                    int numberOfQuestions = await studentCourse.GetExamQuestionsNum(ExamInfo.FirstOrDefault().ID, returnValue);

                    int num = returnValue.Value;

                    // Student does Not take Exam
                    if (ExamInfo.FirstOrDefault().StudentScore == 0 &&
                        ExamInfo.FirstOrDefault().StudentTimeToSolve == null &&
                        ExamInfo.FirstOrDefault().IsStudentPassed == null)
                    {
                        label1.Text = $"Exam Date: {ExamInfo.FirstOrDefault().ScheduledTime:yyyy/MM/dd HH:mm:ss tt}";
                        label1.Location = new System.Drawing.Point(20, 30);

                        button1.Text = "View Details";
                        button1.Location = new System.Drawing.Point(20, 60);
                        button1.Click += (sender, e) =>
                        {
                            ExamDetails examDetails = new ExamDetails();
                            examDetails.ReceiveData(course.Name,
                                ExamInfo.FirstOrDefault().TotalPoints,
                                ExamInfo.FirstOrDefault().TotalTime,
                                ExamInfo.FirstOrDefault().ScheduledTime,
                                ExamInfo.FirstOrDefault().SuccessPercent,
                                num);
                            examDetails.ShowDialog();
                        };
                    }
                    // Student Take Exam and Passed
                    else if (ExamInfo.FirstOrDefault().IsStudentPassed == true)
                    {
                        label1.Text = "Passed";
                        label1.Location = new System.Drawing.Point(20, 30);

                        button1.Text = "Exam Results";
                        button1.Location = new System.Drawing.Point(20, 60);
                        button1.Click += (sender, e) =>
                        {
                            ExamHistory history = new ExamHistory();
                            history.ReceiveData(
                                ExamInfo.FirstOrDefault().ID);
                            history.ShowDialog();
                        };
                    }
                    // Student Take Exam But Failed
                    else if (ExamInfo.FirstOrDefault().IsStudentPassed == false)
                    {
                        label1.Text = "Failed";
                        label1.Location = new System.Drawing.Point(20, 30);

                        button1.Text = "Exam Results";
                        button1.Location = new System.Drawing.Point(20, 60);
                        button1.Click += (sender, e) =>
                        {
                            ExamHistory history = new ExamHistory();
                            history.ReceiveData(
                               ExamInfo.FirstOrDefault().ID);
                            history.ShowDialog();
                        };
                    }

                    groupBox1.Controls.Add(label1);
                    groupBox1.Controls.Add(button1);
                }
                else
                {
                    label1.Text = "Enrolled In This Course";
                    label1.Location = new System.Drawing.Point(20, 30);
                    groupBox1.Controls.Add(label1);
                }

                int availableWidth = maxFormWidth - groupBoxX - horizontalSpacing;
                groupBox1.Size = new System.Drawing.Size(Math.Min(maxGroupBoxWidth, availableWidth), 150);

                panel.Controls.Add(groupBox1);

                groupBoxX += groupBox1.Width + horizontalSpacing;

                if (groupBoxX + maxGroupBoxWidth > maxFormWidth)
                {
                    groupBoxX = 50;
                    groupBoxY += groupBox1.Height + 20;
                }
            }
            //}
        }

    }
}
