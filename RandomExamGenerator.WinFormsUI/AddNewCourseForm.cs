using RandomExamGenerator.DAL.Management;
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
    public partial class AddNewCourseForm : Form
    {
        int instId;
        public AddNewCourseForm(int _instId)
        {
            instId = _instId;
            InitializeComponent();
        }


        private void SubmitClick(object sender, EventArgs e)
        {
            bool ifSuccess = Instructor_Management.addNewCourse(instId, NewCourseName.Text);
            if (ifSuccess)
            {
                MessageBox.Show("Success Add Course");
                NewCourseName.Clear();
            }
        }

        private void ClosingForm(object sender, FormClosedEventArgs e)
        {
            InstructorView instV = new(instId);
            instV.Show();
        }
    }
}
