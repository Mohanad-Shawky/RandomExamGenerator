using NetTopologySuite.Mathematics;
using NuGet.Protocol.Core.Types;
using NuGet.Protocol.Plugins;
using RandomExamGenerator.BLL;
using RandomExamGenerator.BLL.Enums;
using RandomExamGenerator.BLL.Users;
using RandomExamGenerator.DAL.Context;
using RandomExamGenerator.DAL.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar;
using Timer = System.Windows.Forms.Timer;

namespace RandomExamGenerator.WinFormsUI
{
    public partial class StudentCourses : Form
    {
        int StudentID = 0;
        StudentCourse studentCourse = new StudentCourse();
        LoginSession? Session;
        private DateTime remainingTime;
        System.Windows.Forms.Button button1;

        private Dictionary<Timer, Label> dict = new Dictionary<Timer, Label>();

        public StudentCourses()
        {
            InitializeComponent();
            Session = LoginSession.GetSession();
            if (Session != null && Session.GetSessionUserType() == SessionUserType.Student)
            {
                StudentID = Session.StudentUser?.Id ?? 0;
            }
        }

        private async void StudentCourses_Load(object sender, EventArgs e)
        {
            await LoadStudentCoursesAsync();
        }

        private async Task LoadStudentCoursesAsync()
        {
            Student_Name.Text = Session.Account?.UserName;
            panel.AutoScroll = true;

            //using (RandomExamGeneratorContext context = new RandomExamGeneratorContext())
            //{
            //    var ContextProcedures = new RandomExamGeneratorContextProcedures(context);
            var Courses = await studentCourse.GetAllCoursesForStudent(StudentID);
            int groupBoxX = 50;
            int groupBoxY = 50;
            int maxFormWidth = this.Width - 50;
            int maxGroupBoxWidth = 320;
            int horizontalSpacing = 20;
            foreach (var course in Courses)
            {
                System.Windows.Forms.GroupBox groupBox1 = new System.Windows.Forms.GroupBox();
                groupBox1.Text = course.Name;
                groupBox1.Location = new System.Drawing.Point(groupBoxX, groupBoxY);

                Label label1 = new Label();
                Label label2_ExamID = new Label();
                label2_ExamID.Name = "label2_ExamID";
                Label label3_CourseID = new Label();
                label3_CourseID.Name = "label3_CourseID";
                label2_ExamID.Visible = false;
                label3_CourseID.Visible = false;

                label1.Size = new System.Drawing.Size(320, 20);

                button1 = new System.Windows.Forms.Button();
                button1.Size = new System.Drawing.Size(250, 30);

                var ExamInfo = await studentCourse.GetExamInfoForStudent(StudentID, course.ID);

                // check if StudentID is existed in Exam Table

                if (ExamInfo.Count() != 0)
                {
                    OutputParameter<int> returnValue = new OutputParameter<int>();

                    int numberOfQuestions = await studentCourse.GetExamQuestionsNum(ExamInfo.FirstOrDefault().ID, returnValue);

                    int num = returnValue.Value;

                    // Student does Not take Exam
                    if (ExamInfo.FirstOrDefault().StudentScore == null &&
                        ExamInfo.FirstOrDefault().StudentTimeToSolve == null &&
                        ExamInfo.FirstOrDefault().IsStudentPassed == null)
                    {
                        label2_ExamID.Text = $"{ExamInfo.FirstOrDefault().ID}";
                        label3_CourseID.Text = $"{ExamInfo.FirstOrDefault().CourseID}";

                        remainingTime = ExamInfo.FirstOrDefault().ScheduledTime;
                        CreateTimer(label1, remainingTime);


                        // label1.Text = $"Exam Date: {ExamInfo.FirstOrDefault().ScheduledTime:yyyy/MM/dd HH:mm:ss tt}";
                        label1.Location = new System.Drawing.Point(20, 30);
                        label1.Font = new System.Drawing.Font(label1.Font.FontFamily, 8, System.Drawing.FontStyle.Bold);

                        label2_ExamID.Location = new System.Drawing.Point(20, 30);
                        label3_CourseID.Location = new System.Drawing.Point(20, 30);

                        button1.Text = "View Details";
                        button1.Location = new System.Drawing.Point(20, 90);
                        button1.Click += (sender, e) =>
                        {
                            ExamDetails examDetails = new ExamDetails();
                            examDetails.ReceiveData(course.Name,
                                //ExamInfo.FirstOrDefault().TotalPoints,
                                ExamInfo.FirstOrDefault().TotalTime,
                                ExamInfo.FirstOrDefault().ScheduledTime,
                                ExamInfo.FirstOrDefault().SuccessPercent * 100,
                                num);
                            examDetails.ShowDialog();
                        };
                    }
                    // Student Take Exam and Passed
                    else if (ExamInfo.FirstOrDefault().IsStudentPassed == true)
                    {
                        label1.Text = "Passed";
                        label1.ForeColor = System.Drawing.Color.Green;
                        label1.Font = new System.Drawing.Font(label1.Font.FontFamily, 14, System.Drawing.FontStyle.Bold);

                        label1.Location = new System.Drawing.Point(20, 30);

                        button1.Text = "Exam Results";
                        button1.Location = new System.Drawing.Point(20, 90);
                        button1.Click += (sender, e) =>
                        {
                            ExamHistory history = new ExamHistory();
                            this.Hide();
                            history.ReceiveData(
                                ExamInfo.FirstOrDefault().ID);
                            history.ShowDialog();
                            this.Show();
                        };
                    }
                    // Student Take Exam But Failed
                    else if (ExamInfo.FirstOrDefault().IsStudentPassed == false)
                    {
                        label1.Text = "Failed";
                        label1.ForeColor = System.Drawing.Color.Red;
                        label1.Font = new System.Drawing.Font(label1.Font.FontFamily, 14, System.Drawing.FontStyle.Bold);

                        label1.Location = new System.Drawing.Point(20, 30);

                        button1.Text = "Exam Results";
                        button1.Location = new System.Drawing.Point(20, 90);
                        button1.Click += (sender, e) =>
                        {
                            ExamHistory history = new ExamHistory();
                            this.Hide();
                            history.ReceiveData(
                               ExamInfo.FirstOrDefault().ID);
                            history.ShowDialog();
                            this.Show();

                        };
                    }

                    groupBox1.Controls.Add(label1);
                    groupBox1.Controls.Add(button1);
                    groupBox1.Controls.Add(label2_ExamID);
                    groupBox1.Controls.Add(label3_CourseID);
                }
                else
                {
                    label1.Text = "Enrolled In This Course";
                    label1.ForeColor = System.Drawing.Color.Blue;
                    label1.Font = new System.Drawing.Font(label1.Font.FontFamily, 14, System.Drawing.FontStyle.Bold);

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

        private void timer1_Tick(object sender, EventArgs e)
        {
            int ExamID = 0, CourseID = 0;
            Timer t = (Timer)sender;
            DateTime scheduledTime = (DateTime)dict[t].Tag;
            TimeSpan ts = scheduledTime.Subtract(DateTime.Now);

            if (ts.TotalSeconds <= 0)
            {
                t.Stop();
                dict[t].Visible = false;

                var groupBox = dict[t].Parent as System.Windows.Forms.GroupBox;

                if (groupBox != null)
                {

                    foreach (Control control in groupBox.Controls)
                    {
                        if (control is Label && control.Name == "label2_ExamID")
                        {
                            ExamID = int.Parse(((Label)control).Text);
                        }
                        if (control is Label && control.Name == "label3_CourseID")
                        {
                            CourseID = int.Parse(((Label)control).Text);
                        }
                    }

                    System.Windows.Forms.Button getExamButton = new System.Windows.Forms.Button();
                    getExamButton.Text = "GO TO EXAM!";
                    getExamButton.Location = new Point(20, 30);
                    getExamButton.BackColor = System.Drawing.Color.LightBlue;
                    getExamButton.Size = new System.Drawing.Size(250, 50);
                    getExamButton.Click += (sender, e) =>
                    {
                        Exam exam = new Exam();
                        this.Hide();
                        exam.ReceiveData(ExamID, CourseID);
                        exam.ShowDialog();
                    };
                    groupBox.Controls.Add(getExamButton);
                }
            }
            else
            {
                int years = ts.Days / 365;
                int months = (int)((ts.Days % 365) / 30.436875); // Approximate number of days in a month
                int days = ts.Days % 30;
                int hours = ts.Hours;
                int minutes = ts.Minutes;
                int seconds = ts.Seconds;
                int milliseconds = ts.Milliseconds;

                dict[t].Text = string.Format("{0} Months {1} Days {2} Hours {3} Minutes {4} Seconds",
                    months, days, hours, minutes, seconds);
            }
        }

        private void CreateTimer(Label label, DateTime scheduledTime)
        {
            Timer timer = new Timer();
            timer.Tick += (sender, e) => timer1_Tick(sender, e);
            timer.Interval = 1000;
            dict[timer] = label;
            dict[timer].Tag = scheduledTime;
            timer.Enabled = true;
            timer.Start();
        }

        private void Student_Name_Click(object sender, EventArgs e)
        {

        }

        private void linkLabel_logout_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            foreach (var timer in dict.Keys.ToList())
            {
                timer.Stop();
                timer.Dispose();
            }
            FormHelper.Logout(this);
        }

        private void StudentCourses_FormClosed(object sender, FormClosedEventArgs e)
        {
            foreach (var timer in dict.Keys.ToList())
            {
                timer.Stop();
                timer.Dispose();
            }
            FormHelper.Logout(this);
        }
    }
}