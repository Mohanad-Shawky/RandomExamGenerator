using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Azure.Core;
using RandomExamGenerator.BLL;
using RandomExamGenerator.WinFormsUI;
namespace RandomExamGenerator.WinFormsUI
{
    public partial class GenerateExamPage : Form
    {
        List<int> studIds;
        int crsId, instId;
        public GenerateExamPage(int _crsId, int _instId, List<int> _studIds)
        {
            studIds = _studIds;
            crsId = _crsId;
            instId = _instId;
            InitializeComponent();
        }

        private void Submit_Click(object sender, EventArgs e)
        {
            int successP;
            bool ifsuuccess = true;
            if (int.TryParse(SuccessPercentTxtBox?.Text, out successP) && successP >= 1 && successP <= 100)
            {

                DateTime startTime = StartExamTime.Value;
                DateTime endTime = EndExamTime.Value;
                TimeSpan duration = endTime - startTime;
                float totalTime = (float)duration.TotalSeconds;


                DateTime selectedDate = dateTimeDay.Value.Date;
                TimeSpan selectedTime = StartExamTime.Value.TimeOfDay;
                DateTime combinedDateTime = selectedDate + selectedTime;


                foreach (var id in studIds)
                {
                    ifsuuccess = Instructor_Management.genertaeExam(crsId, id, instId, totalTime, combinedDateTime, (float)successP / 100,
                    (int)EasyQuestions.Value,
                    (int)medQuest.Value,
                    (int)hardQuestion.Value);
                    if (ifsuuccess == false) MessageBox.Show("Can Not Make Generate Exam");
                }
                if (ifsuuccess == true) MessageBox.Show("Succcess Generatte Exam");
            }
            else MessageBox.Show("Sorry Exist data  not correct");
        }
    }
}
