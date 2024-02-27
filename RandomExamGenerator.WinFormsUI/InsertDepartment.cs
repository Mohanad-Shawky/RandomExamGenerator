using RandomExamGenerator.BLL;
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
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace RandomExamGenerator.WinFormsUI
{
    public partial class InsertDepartment : Form
    {

        Department user = new Department();
        public InsertDepartment()
        {
            InitializeComponent();
        }


        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            user.Name = textBox1.Text;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Department newDepartment = new Department();
            newDepartment.Name = user.Name;


            UserAccountController.AddDepartment(newDepartment);
            MessageBox.Show($"Department Save And New ID {newDepartment.Id}", "Insert New Department", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }
    }
}
