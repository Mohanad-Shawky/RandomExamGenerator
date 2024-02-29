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
using RandomExamGenerator.DAL.Enums;
using RandomExamGenerator.DAL.Models;

namespace RandomExamGenerator.WinFormsUI
{
    public partial class AddInstructor : Form
    {

        public AddInstructor()
        {
            InitializeComponent();

            PasswordTextBox.TextChanged += Password_TextChanged;
            InstructorNameTextBox.TextChanged += InstructorName_TextChanged;
            GenderComboBox.SelectedIndexChanged += ComboBox_SelectedIndexChanged;
            DepartmentComboBox.SelectedIndexChanged += ComboBox_SelectedIndexChanged;
            RoleComboBox.SelectedIndexChanged += ComboBox_SelectedIndexChanged;

            GenderComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
            DepartmentComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
            RoleComboBox.DropDownStyle = ComboBoxStyle.DropDownList;

            foreach (var value in Enum.GetValues(typeof(GenderEnum)))
            {
                GenderComboBox.Items.Add(value);
            }

            //add value for gender combo box
            foreach (var value in Enum.GetValues(typeof(InstructorRoleEnum)))
            {
                RoleComboBox.Items.Add(value);
            }


            DepartmentComboBox.DisplayMember = "Name";
            DepartmentComboBox.DataSource = DepartmentController.GetAllDepartments();
            DepartmentComboBox.SelectedIndex = -1;

            checkedListBox1.DataSource = CourseController.GetAllCourses();
            checkedListBox1.DisplayMember = "Name";

            AddInstructorBtn.Enabled = false;


        }
        private void ComboBox_SelectedIndexChanged(object s, EventArgs e)
        {
            var sender = s as ComboBox;
            if (sender.SelectedIndex == -1)
            {
                if (sender == DepartmentComboBox) DepartmentWarningLabel.Visible = true;
                else if (sender == GenderComboBox) GenderWarningLabel.Visible = true;
                else RoleComboBox.Visible = true;
            }
            else
            {
                if (sender == DepartmentComboBox) DepartmentWarningLabel.Visible = false;
                else if (sender == GenderComboBox) GenderWarningLabel.Visible = false;
                else RoleWarningLabel.Visible = false;
            }
            checkAddBtn();
        }
        private void InstructorName_TextChanged(object sender, EventArgs e)
        {
            if (InstructorNameTextBox.Text.Equals(""))
            {
                InstructorNameWarning.Visible = true;
            }
            else
            {
                InstructorNameWarning.Visible = false;

            }
            checkAddBtn();
        }
        private void Password_TextChanged(object sender, EventArgs e)
        {
            if (PasswordTextBox.Text.Equals(""))
            {
                PasswordWarningLabel.Visible = true;
            }
            else
            {
                PasswordWarningLabel.Visible = false;

            }
            checkAddBtn();
        }
        private void checkAddBtn()
        {
            if (!InstructorNameWarning.Visible
                && !DepartmentWarningLabel.Visible
                && !GenderWarningLabel.Visible
                && !RoleWarningLabel.Visible
                && !PasswordWarningLabel.Visible)
            {
                AddInstructorBtn.Enabled = true;

            }
            else
            {
                AddInstructorBtn.Enabled = false;

            }


        }

        private void AddInstructorBtn_Click(object sender, EventArgs e)
        {
            try
            {
                InstructorController.AddInstructor(
                    new()
                    {
                        Name = InstructorNameTextBox.Text,
                        Gender = GenderComboBox.Text,
                        DepartmentId = ((Department)DepartmentComboBox.SelectedValue).Id,
                        Role = RoleComboBox.Text
                    },
                    password: PasswordTextBox.Text,
                    courseIDs: GetCheckedCoursesIds());

                MessageBox.Show("Success");
                ManageInstructors m = new();

                m.Show();
                this.Close();


            }
            catch
            {
                MessageBox.Show("Check Field And Try Again");
            }
        }
        private List<int> GetCheckedCoursesIds()
        {
            List<int> checkedItemIds = new List<int>();
            for (int i = 0; i < checkedListBox1.Items.Count; i++)
            {
                // Check if the item at index i is checked
                if (checkedListBox1.GetItemChecked(i))
                {
                    checkedItemIds.Add(((Course)checkedListBox1.Items[i]).Id);

                }
            }

            return checkedItemIds;
        }
    }
}
