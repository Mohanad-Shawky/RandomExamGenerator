using NuGet.Protocol.Plugins;
using RandomExamGenerator.BLL;
using RandomExamGenerator.DAL.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RandomExamGenerator.WinFormsUI
{
    public partial class AddNewQuestionsForm : Form
    {

        private int instid;
        private int crsid;
        private Question question;
        public AddNewQuestionsForm(int _crsid, int _instid)
        {
            instid = _instid;
            crsid = _crsid;
            InitializeComponent();
        }
        private void ClosingEvent(object sender, FormClosedEventArgs e)
        {
            InstructorView instV = new(instid);
            instV.Show();
        }


        private string? formGetQuestion()
        {
            question = new Question();
            int res = 1;
            bool ifchecked = false;

            for (int i = 0; i < checkedList_Choices.Items.Count; i++)
            {
                if (checkedList_Choices.GetItemChecked(i))
                {
                    question.ModelAnswer = i + 1;
                    ifchecked = true;
                    break;
                }
            }

            if (DifficltyQuest.SelectedItem != null && DifficltyQuest.SelectedItem != null &&
                ifchecked == true && int.TryParse(PointsQuest.Text, out res))
            {
                question.Difficulty = DifficltyQuest?.SelectedItem?.ToString() ?? "easy";
                question.Type = TypeQuestion?.SelectedItem?.ToString() ?? "tf";
                question.CourseId = crsid;
                question.Header = QuestionHeader.Text;
                question.Points = res;
                return null;
            }
            return "Sorry, Chaeck Question Data Input";
        }

        private void addChoices(int qId)
        {

            for (int itr = 1; itr <= checkedList_Choices?.Items.Count; itr++)
            {
                bool isCorrect = checkedList_Choices.CheckedItems.Contains(checkedList_Choices.Items[itr - 1]);
                Instructor_Management.insertChoice(itr, qId, checkedList_Choices?.Items[itr - 1]?.ToString() ?? "N/A", isCorrect);
            }
        }
        private void SaveQuestBtn_Click(object sender, EventArgs e)
        {
            string? msg = formGetQuestion();
            if (msg != null)
            {
                MessageBox.Show(msg);
            }
            else
            {
                int qId = Instructor_Management.addNewQuestion(question);
                if (qId != -1) { addChoices(qId); MessageBox.Show("Success Add New Question"); }
                else MessageBox.Show("Exist Problem Try Again");
                clearFormData();
            }
        }

        private void clearFormData()
        {
            checkedList_Choices.Items.Clear();
            txtChoiceText.Clear();
            QuestionHeader.Text = "";
            PointsQuest.Text = "";
            DifficltyQuest.SelectedItem = null;
            DifficltyQuest.Refresh();
            TypeQuestion.SelectedItem = null;
            TypeQuestion.Refresh();
        }

        private void AddChoiceBtnClick(object sender, EventArgs e)
        {
            checkedList_Choices.Items.Add(txtChoiceText.Text);
            txtChoiceText.Clear();
        }

        private void AddChoiceBtn(object sender, EventArgs e)
        {
            checkedList_Choices.Items.Add(new TextBox());
        }

    }
}
