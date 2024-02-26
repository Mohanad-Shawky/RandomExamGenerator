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
using System.Timers;
using System.Windows.Forms;
using Timer = System.Windows.Forms.Timer;

namespace RandomExamGenerator.WinFormsUI
{
    public partial class Exam : Form
    {
        int StudentID = 6, CourseID = 2, ExamID = 2;

        ExamManagement ExamManagement = new ExamManagement();
        private TimeSpan remainingTime;
        private Timer timer;
        public Exam()
        {
            InitializeComponent();
            InitializeTimer();
        }

        private void InitializeTimer()
        {
            timer = new Timer();
            timer.Interval = 1000;
            timer.Tick += timer1_Tick;
        }
        private async void Exam_Load(object sender, EventArgs e)
        {
            await Exam_LoadAsync();
        }
        // Panel panel = new Panel();
        private async Task Exam_LoadAsync()
        {

            panel.AutoScroll = true;

            var ExamQuestions = await ExamManagement.GetExam(CourseID, StudentID);

            var TotalTimeForExam = await ExamManagement.GetTotalTimeForExam(ExamID);

            int i = 0;
            foreach (var Question in ExamQuestions)
            {
                // Add a group box to the panel
                GroupBox groupBox = new GroupBox();
                groupBox.Text = $"Question {++i}";
                groupBox.Dock = DockStyle.Top;
                groupBox.AutoSize = true;
                //  groupBox.Location = new Point(6, groupBoxVerticalPosition);
                panel.Controls.Add(groupBox);

                Label hiddenLabel = new Label();
                hiddenLabel.Text = Question.QuestionID.ToString();
                hiddenLabel.Visible = false;
                groupBox.Controls.Add(hiddenLabel);

                // int radioButtonHorizontalPosition = 5;

                // Add a label to the group box
                Label label = new Label();
                label.Text = Question.Header;
                label.Dock = DockStyle.Top;
                groupBox.Controls.Add(label);

                var QuestionChoices = await ExamManagement.GetChoicesForQuestion(Question.QuestionID);
                int radioButtonVerticalPosition = label.Height + 20;
                foreach (var choice in QuestionChoices)
                {
                    // Add a radio button to the group box
                    RadioButton radioButton = new RadioButton();
                    radioButton.Text = choice.Body;
                    radioButton.Tag = choice.OrderInQuestion;
                    radioButton.Location = new Point(5, radioButtonVerticalPosition);
                    groupBox.Controls.Add(radioButton);
                    radioButtonVerticalPosition += radioButton.Height + 3;
                }

                //groupBoxVerticalPosition += groupBox.Height + 10;
            }

            string Time = ConvertSecondsToHMS(TotalTimeForExam.FirstOrDefault().TotalTime);

            if (TimeSpan.TryParse(Time, out remainingTime))
            {
                UpdateDisplay();
                timer.Start();
            }
            else
            {
                MessageBox.Show("Invalid time format!");
            }

        }

        private async void Submit_btn_Click(object sender, EventArgs e)
        {
            await Submit_btn_ClickAsync();
        }

        private async Task Submit_btn_ClickAsync()
        {
            timer.Stop();
            Dictionary<int, int> AnswersList = new Dictionary<int, int>();
            int QuestionID = 0;
            List<GetExamResult> ExamQuestions = new List<GetExamResult>();


            ExamQuestions = await ExamManagement.GetExam(CourseID, StudentID);

            foreach (Control control in panel.Controls)
            {
                if (control is GroupBox groupBox)
                {
                    bool anyRadioButtonChecked = false;

                    foreach (Control groupBoxControl in groupBox.Controls)
                    {
                        if (groupBoxControl is Label hiddenLabel && !hiddenLabel.Visible)
                        {
                            QuestionID = int.Parse(hiddenLabel.Text);
                            break;
                        }
                    }

                    foreach (Control groupBoxControl in groupBox.Controls)
                    {
                        if (groupBoxControl is RadioButton radioButton && radioButton.Checked)
                        {
                            anyRadioButtonChecked = true;

                            AnswersList[QuestionID] = int.Parse(radioButton.Tag.ToString());
                            break;
                        }
                    }

                    if (!anyRadioButtonChecked)
                    {
                        AnswersList[QuestionID] = 1000000;
                    }
                }
            }
            DataTable answersTable = ConvertDictionaryToDataTable(AnswersList);

            var kk = await ExamManagement.CreateStudentAnswer(answersTable, StudentID, ExamQuestions.FirstOrDefault().ExamID);
            var hh = await ExamManagement.CorrectExam(ExamQuestions.FirstOrDefault().ExamID, StudentID);

            ExamManagement.SaveChanges();


            MessageBox.Show("Exam Submitted Successfully");
            this.Hide();

            StudentCourses studentCoursesForm = new StudentCourses();
            studentCoursesForm.ShowDialog();
        }

        private DataTable ConvertDictionaryToDataTable(Dictionary<int, int> dictionary)
        {
            DataTable dataTable = new DataTable();
            dataTable.Columns.Add("QuestionID", typeof(int));
            dataTable.Columns.Add("Answer", typeof(int));

            foreach (var k in dictionary)
            {
                dataTable.Rows.Add(k.Key, k.Value);
            }

            return dataTable;
        }

        private async void timer1_Tick(object sender, EventArgs e)
        {
            await timer1_TickAsync();
        }

        private async Task timer1_TickAsync()
        {
            if (remainingTime.TotalSeconds <= 0)
            {
                timer.Stop();
                await Submit_btn_ClickAsync();
            }
            else
            {
                if (remainingTime.Seconds > 0)
                {
                    remainingTime = remainingTime.Subtract(TimeSpan.FromSeconds(1));
                }
                else
                {
                    remainingTime = remainingTime.Subtract(TimeSpan.FromSeconds(1));
                    remainingTime = remainingTime.Add(TimeSpan.FromSeconds(59));

                    if (remainingTime.Minutes == 0)
                    {
                        remainingTime = remainingTime.Add(TimeSpan.FromMinutes(59));

                        if (remainingTime.Hours > 0)
                        {
                            remainingTime = remainingTime.Subtract(TimeSpan.FromHours(1));
                        }
                        else
                        {
                            remainingTime = TimeSpan.Zero;
                        }
                    }
                    else
                    {
                        remainingTime = remainingTime.Subtract(TimeSpan.FromMinutes(1));
                    }
                }

                UpdateDisplay();
            }
        }

        private string ConvertSecondsToHMS(int totalSeconds)
        {
            int hours = totalSeconds / 3600;
            int minutes = (totalSeconds % 3600) / 60;
            int seconds = totalSeconds % 60;

            return $"{hours:D2}:{minutes:D2}:{seconds:D2}";
        }

        private void UpdateDisplay()
        {
            label1.Text = remainingTime.ToString(@"hh\:mm\:ss");
        }
    }
}
