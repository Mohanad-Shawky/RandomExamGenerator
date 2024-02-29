using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using RandomExamGenerator.WinFormsUI;
using RandomExamGenerator.BLL;
using RandomExamGenerator.DAL.Models;
using System.Numerics;
using RandomExamGenerator.BLL.Users;


namespace RandomExamGenerator.WinFormsUI
{
    public partial class InstructorView : Form
    {

        private int studId;
        private int instId;
        private Dictionary<Course, List<GetStudentCoursesResult>> courseStudentsMap;
        private BindingSource bindingSourceCourse;

        public InstructorView(int _instId)
        {
            instId = _instId;
            InitializeComponent();
        }

        private void InstructorView_Load(object sender, EventArgs e)
        {
            loadData();
        }

        private void loadData()
        {

            courseStudentsMap = Instructor_Management.instCourseStudents(instId);
            if (courseStudentsMap == null)
            {
                MessageBox.Show("No Exist Courses");
            }
            else
            {
                this.StudentsInCourseGrid.DataSource = null;
                this.InstCourses.DataSource = null;
                this.UpdateCourseNameTxt.DataBindings.Clear();
                bindingSourceCourse = new BindingSource { DataSource = courseStudentsMap.Keys.ToList() };
                this.UpdateCourseNameTxt.DataBindings.Add("Text", bindingSourceCourse, "Name");
                this.InstCourses.DataSource = bindingSourceCourse;
                this.InstCourses.DisplayMember = "Name";
                this.InstCourses.ValueMember = "Id";
                this.InstCourses.SelectedIndex = this.InstCourses.SelectedIndex;
            }
        }

        private void InstCourses_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int selectedIndex = this.InstCourses.SelectedIndex;
                if (selectedIndex >= 0 && selectedIndex < this.InstCourses.Items.Count)
                {
                    Course selectedCourse = (Course)this.InstCourses.Items[selectedIndex];
                    this.StudentsInCourseGrid.DataSource = courseStudentsMap[selectedCourse];
                    this.StudentsInCourseGrid.Columns["StudentID"].Visible = false;
                    this.StudentsInCourseGrid.Columns["CourseID"].Visible = false;
                }
            }
            catch (Exception exc)
            {
                MessageBox.Show("Exist Problem Cant Complete Prosssees");
            }
        }

        private void UpdateBtn(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (this.InstCourses.SelectedValue != null)
            {
                bool ifSuccess = Instructor_Management.updateCourse(instId, Convert.ToInt32(this.InstCourses.SelectedValue), UpdateCourseNameTxt.Text);
                MessageBox.Show((ifSuccess == true) ? $"Success! Updated the Course Name to {UpdateCourseNameTxt.Text}" : "There was a problem. The process could not be completed.");
            }
            else
            {
                MessageBox.Show("Please select a valid course before updating.");
                this.UpdateCourseNameTxt.Clear();
            }
        }


        private void DeleteBtn(object sender, EventArgs e)
        {
            if (StudentsInCourseGrid.SelectedRows.Count != 0)
            {
                bool ifSuccess = true;
                foreach (DataGridViewRow row in StudentsInCourseGrid.SelectedRows)
                {
                    ifSuccess = Instructor_Management.deleteStudentEnroll(instId, Convert.ToInt32(row.Cells["StudentID"].Value), Convert.ToInt32(row.Cells["CourseID"].Value));
                    if (ifSuccess == false) break;
                }
                if (ifSuccess)
                {
                    loadData();
                    MessageBox.Show("Success Delete Selected Rows");
                    return;
                }
            }
            MessageBox.Show("Exist Problem Cant Delete");
        }

        private void AddQuestionsBtnClick(object sender, EventArgs e)
        {
            try
            {
                if (this.InstCourses.SelectedValue != null)
                {
                    AddNewQuestionsForm questionAddPage = new(Convert.ToInt32(this.InstCourses.SelectedValue), instId, ((Course)InstCourses.SelectedItem).Name);
                    this.Hide();
                    questionAddPage.Show();
                }
                else
                {
                    MessageBox.Show("Please select a valid course before updating.");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Exist Problem Cant Complete Prosssees");
            }
        }



        private void AddNewCourseClick(object sender, EventArgs e)
        {
            try
            {
                AddNewCourseForm add = new(instId);
                this.Hide();
                add.Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show("Exist Problem Cant Complete Prosssees");
            }
        }


        private void generateBtn_Click(object sender, EventArgs e)
        {
            if (this.InstCourses.SelectedValue != null)
            {
                List<int> studIds = new();
                foreach (DataGridViewRow row in StudentsInCourseGrid.Rows)
                {
                    int studIDValue = (int)row.Cells["StudentID"].Value;
                    studIds.Add(studIDValue);
                }
                GenerateExamPage exPage = new(Convert.ToInt32(this.InstCourses.SelectedValue), instId, studIds);
                exPage.Show();

            }
            else MessageBox.Show("Please Choice Course First");
        }

        private void InstructorView_FormClosed(object sender, FormClosedEventArgs e)
        {
            FormHelper.Logout(this);
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            FormHelper.Logout(this);
        }

        private void ManageInstructor_btn_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            ManageInstructors ManageInstructor = new ManageInstructors();
            ManageInstructor.ShowDialog();
        }

        private void ManageStudentClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            ManageStudents ManageStudent = new ManageStudents();
            ManageStudent.ShowDialog();
        }

        private void ManageDept_Click(object sender, LinkLabelLinkClickedEventArgs e)
        {
            ManageDepartmentsAndTracks ManageDepartment = new ManageDepartmentsAndTracks();
            ManageDepartment.ShowDialog();
        }
    }

}
