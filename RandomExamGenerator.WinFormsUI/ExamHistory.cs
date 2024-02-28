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
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace RandomExamGenerator.WinFormsUI
{
    public partial class ExamHistory : Form
    {
        int StudentID = 0;
        ExamManagement ExamManagement = new ExamManagement();
        LoginSession? Session;
        public ExamHistory()
        {
            InitializeComponent();
            Session = LoginSession.GetSession();
            if (Session != null && Session.GetSessionUserType() == SessionUserType.Student)
            {
                StudentID = Session.StudentUser?.Id ?? 0;
            }
            ExamID.Visible = false;
        }

        public void ReceiveData(int ID)
        {
            ExamID.Text = ID.ToString();
        }
        private async void ExamHistory_Load(object sender, EventArgs e)
        {
            await ExamHistory_Load_Async();
        }

        private async Task ExamHistory_Load_Async()
        {
            int lastIndex = panel.Controls.Count - 1;

            var ExamInfo = await ExamManagement.GetExamHistory(int.Parse(ExamID.Text));

            ScheduledTime_Label.Text = ExamInfo.FirstOrDefault().ScheduledTime.ToString();

            if (ExamInfo.FirstOrDefault().IsStudentPassed == false)
            {
                Status.Text = "Failed";
                Status.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Status.Text = "Passed";
                Status.ForeColor = System.Drawing.Color.Green;
            }

            double? percentageCalc = ((double)ExamInfo.FirstOrDefault().StudentScore / ExamInfo.FirstOrDefault().TotalPoints) * 100;

            percentage.Text = Math.Round(decimal.Parse(percentageCalc.ToString()), 2) + " %";

            correction_label.Text = $"{ExamInfo.FirstOrDefault().StudentScore} / {ExamInfo.FirstOrDefault().TotalPoints}";

            SuccessFrom_label.Text = (ExamInfo.FirstOrDefault().SuccessPercent * 100).ToString() + "%";

            panel.AutoScroll = true;

            int groupBoxVerticalPosition = 0;

            // Questions Of Exam

            var ExamQuestions = await ExamManagement.GetQuestionsForExam(int.Parse(ExamID.Text));

            int i = 0;
            foreach (var Question in ExamQuestions)
            {
                ListBox ChoiceListBox = new ListBox();

                var StudentAnswers = await ExamManagement.GetStudentAnswerInExam(StudentID, int.Parse(ExamID.Text), Question.QuestionID);

                // Add a group box to the panel
                GroupBox groupBox = new GroupBox();
                groupBox.Text = $"Question {++i}";
                groupBox.Dock = DockStyle.Top;
                groupBox.AutoSize = true;
                groupBox.Location = new Point(0, groupBoxVerticalPosition);
                panel.Controls.Add(groupBox);
                panel.Controls.SetChildIndex(groupBox, lastIndex + 1);
                Label hiddenLabel = new Label();
                hiddenLabel.Text = Question.QuestionID.ToString();
                hiddenLabel.Visible = false;
                groupBox.Controls.Add(hiddenLabel);

                int Position = 10;

                // Add a label to the group box
                Label label = new Label();
                label.Text = $"[{Question.Difficulty}]  {Question.Header}       ({Question.Points} Points)";
                label.Dock = DockStyle.Top;
                groupBox.Controls.Add(label);


                ChoiceListBox.Size = new Size(200, 100);
                ChoiceListBox.Location = new Point(Position, label.Bottom + 10);
                groupBox.Controls.Add(ChoiceListBox);

                var QuestionChoices = await ExamManagement.GetChoicesForQuestion(Question.QuestionID);

                foreach (var choice in QuestionChoices)
                {
                    CustomListItems itemData = new CustomListItems(choice.OrderInQuestion, choice.Body);

                    ChoiceListBox.Items.Add(itemData);

                    Position += ChoiceListBox.Height + 10;

                }

                foreach (var AnswerRow in StudentAnswers)
                {

                    Label modelAnswerLabel = new Label();
                    modelAnswerLabel.Text = $"Model Answer Is: {AnswerRow.ModelAnswer.ToString()}";
                    modelAnswerLabel.Location = new Point(ChoiceListBox.Right + 10, ChoiceListBox.Top);


                    Label studentAnswerLabel = new Label();
                    if (AnswerRow.StudentAnswer == 1000000)
                    {
                        studentAnswerLabel.Text = $"Your Answer Is: Not Answered";

                    }
                    else
                        studentAnswerLabel.Text = $"Your Answer Is: {AnswerRow.StudentAnswer.ToString()}";
                    studentAnswerLabel.Location = new Point(ChoiceListBox.Right + 10, modelAnswerLabel.Bottom + 10);

                    if (AnswerRow.ModelAnswer == AnswerRow.StudentAnswer)
                    {
                        modelAnswerLabel.ForeColor = Color.Green;
                        studentAnswerLabel.ForeColor = Color.Green;
                    }
                    else
                    {
                        modelAnswerLabel.ForeColor = Color.Green;
                        studentAnswerLabel.ForeColor = Color.Red;
                    }
                    groupBox.Controls.Add(modelAnswerLabel);
                    groupBox.Controls.Add(studentAnswerLabel);

                    modelAnswerLabel.AutoSize = true;
                    studentAnswerLabel.AutoSize = true;

                }

                groupBoxVerticalPosition += groupBox.Height + 10;
                //}

            }
        }


        private async Task download_btn_Click_Async()
        {
            using (SaveFileDialog sfd = new SaveFileDialog() { Filter = "Text files|*.txt" })
            {
                if (sfd.ShowDialog() == DialogResult.OK)
                {
                    using (StreamWriter write = new StreamWriter(sfd.FileName, true, Encoding.UTF8))
                    {
                        //write.WriteLine("Hello");
                        //using (RandomExamGeneratorContext context = new RandomExamGeneratorContext())
                        {
                            // var ContextProcedures = new RandomExamGeneratorContextProcedures(context);
                            var ExamQuestions = await ExamManagement.GetQuestionsForExam(int.Parse(ExamID.Text));
                            int i = 1;
                            foreach (var Question in ExamQuestions)
                            {
                                var StudentAnswers = await ExamManagement.GetStudentAnswerInExam(StudentID, int.Parse(ExamID.Text), Question.QuestionID);


                                write.WriteLine($"{i}- {Question.Header}");

                                var QuestionChoices = await ExamManagement.GetChoicesForQuestion(Question.QuestionID);

                                foreach (var choice in QuestionChoices)
                                {
                                    write.WriteLine($"{choice.OrderInQuestion}) {choice.Body}");
                                }

                                foreach (var AnswerRow in StudentAnswers)
                                {
                                    write.WriteLine($"Model Answer Is {AnswerRow.ModelAnswer}");
                                }
                            }

                        }
                    }
                }
            }
        }
        private async void download_btn_Click(object sender, EventArgs e)
        {
            await download_btn_Click_Async();
        }

        private void Status_Click(object sender, EventArgs e)
        {

        }

        private void ExamHistory_FormClosed(object sender, FormClosedEventArgs e)
        {
            //FormHelper.Logout(this);
        }
    }
}
