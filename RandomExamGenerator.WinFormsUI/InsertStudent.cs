using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using RandomExamGenerator.BLL;
using RandomExamGenerator.DAL.Models;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;
namespace RandomExamGenerator.WinFormsUI
{
    public partial class InsertStudent : Form
    {
        BaseController controller = new BaseController();
        UserAccount user = new UserAccount();

        public InsertStudent()
        {
            InitializeComponent();
        }



        private void UserName_TextChanged(object sender, EventArgs e)
        {
            user.UserName = UserName.Text;

        }

        private void CreatePassword_TextChanged(object sender, EventArgs e)
        {
            user.PasswordHash = CreatePassword.Text;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // TODO: make stored procedure to insert the user account and hash the input password
            UserAccount newStudent = new UserAccount();
            newStudent.UserName = user.UserName;
            newStudent.PasswordHash = user.PasswordHash;
            newStudent.Type = "student";

            UserAccountController.AddStudent(newStudent);
            MessageBox.Show($"Student Save And New ID {newStudent.Id}", "Insert New Student", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }


    }
}
