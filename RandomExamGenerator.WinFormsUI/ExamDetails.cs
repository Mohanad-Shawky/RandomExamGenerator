using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RandomExamGenerator.WinFormsUI
{
    public partial class ExamDetails : Form
    {
        public ExamDetails()
        {
            InitializeComponent();
            textBox1.ReadOnly = true;
            textBox2.ReadOnly = true;
            textBox3.ReadOnly = true;
            textBox4.ReadOnly = true;
            textBox5.ReadOnly = true;
            textBox6.ReadOnly = true;
        }

        public void ReceiveData(string Name, int? TotalPoint, int TotalTime, DateTime ScheduledTime, double SuccessPercent, int Num)
        {
            textBox1.Text = Name;
            textBox2.Text = TotalPoint.HasValue ? TotalPoint.Value.ToString() : "";
            textBox3.Text = TotalTime.ToString();
            textBox4.Text = ScheduledTime.ToString();
            textBox5.Text = $"{SuccessPercent}%";
            textBox6.Text = Num.ToString();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}
