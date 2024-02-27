using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using RandomExamGenerator.DAL.Enums;
using RandomExamGenerator.DAL.Models;
using RandomExamGenerator.BLL;

namespace RandomExamGenerator.WinFormsUI
{
    public partial class ManageInstructors : Form
    {
        private List<Instructor> instructors;
        private List<Department> departments;
        public ManageInstructors()
        {
            InitializeComponent();
            searchBox.TextChanged += TxtSearch_TextChanged;
            InstructorNameWarning.Visible = false;
            InstructorNameTextBox.TextChanged += InstructorName_TextChanged;



            GenderComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
            DepartmentComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
            RoleComboBox.DropDownStyle = ComboBoxStyle.DropDownList;


            //add value for gender combo box
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
            departments = DepartmentController.GetAllDepartments();
            DepartmentComboBox.DataSource = departments;

            checkedListBox1.DataSource = CourseController.GetAllCourses();
            checkedListBox1.ValueMember = "Name";

            InstructorListBox_SelectedIndexChanged(new(), new());

            this.Load += ManageInstructors_Load;
        }

        private async void ManageInstructors_Load(object? sender, EventArgs e)
        {
            instructors = await InstructorController.GetAllInstructors();
            InstructorListBox.DataSource = instructors;
            InstructorListBox.DisplayMember = "Name";
            InstructorListBox.ValueMember = "ID";
        }
        private void InstructorName_TextChanged(object sender, EventArgs e)
        {
            if (InstructorNameTextBox.Text.Equals(""))
            {
                InstructorNameWarning.Visible = true;
                SaveBtn.Enabled = false;
            }
            else
            {
                InstructorNameWarning.Visible = false;
                SaveBtn.Enabled = true;


            }
        }
        private async void TxtSearch_TextChanged(object sender, EventArgs e)
        {
            string query = searchBox.Text;
            List<Instructor> searchResults;
            if (query.Equals(""))
                searchResults = await InstructorController.GetAllInstructors();

            else
                searchResults = InstructorController.GetAllInstructorsContains(query);

            DisplaySearchResults(searchResults);
        }
        private void DisplaySearchResults(List<Instructor> results)
        {

            InstructorListBox.DataSource = results;
        }

        private void InstructorListBox_SelectedIndexChanged(object sender, EventArgs e)
        {


            for (int i = 0; i < checkedListBox1.Items.Count; i++)
            {
                checkedListBox1.SetItemChecked(i, false);
            }
            var selectedValue = InstructorListBox.SelectedItem;
            if (selectedValue != null)
            {
                var instructor = (Instructor)selectedValue;
                if (instructor != null)
                {
                    InstructorGroupBox.Text = $"{instructor.Id} - {instructor.Name}";
                    InstructorNameTextBox.Text = instructor.Name;
                    GenderComboBox.Text = instructor.Gender;
                    DepartmentComboBox.Text = departments?.Where(d => d.Id == instructor.DepartmentId)?.FirstOrDefault()?.Name ?? "";
                    RoleComboBox.Text = instructor.Role;
                    var teachesCourses = InstructorController.GetInstructorCoursesByID(instructor.Id) ?? [];
                    // Assuming checkedListBox1 is your CheckedListBox control
                    foreach (var teach in teachesCourses)
                    {
                        // Assuming teach.Course.Name is the name of the course you want to check
                        int index = checkedListBox1.FindStringExact(teach);
                        if (index != -1)
                        {
                            checkedListBox1.SetItemChecked(index, true);
                        }
                    }
                }
                else
                {
                    // Handle case where instructor is null
                }
            }
            else
            {
                // Handle case where SelectedValue is null
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
        private async void button1_Click(object sender, EventArgs e)
        {
            var instructor = InstructorListBox.SelectedItem as Instructor;
            try
            {
                await InstructorController.UpdateInstructor(
                    new()
                    {
                        Id = instructor.Id,
                        Name = InstructorNameTextBox.Text,
                        Gender = GenderComboBox.Text,
                        DepartmentId = ((Department)DepartmentComboBox.SelectedValue).Id,
                        Role = RoleComboBox.Text
                    },
                    courseIDs: GetCheckedCoursesIds());

                MessageBox.Show("Success");
            }
            catch
            {
                MessageBox.Show("No Changes Happened");

            }
            instructors = await InstructorController.GetAllInstructors();
            InstructorListBox.DataSource = instructors;
            InstructorListBox.DisplayMember = "Name";
            InstructorListBox.ValueMember = "ID";
            InstructorListBox_SelectedIndexChanged(new(), new());

            // InstructorListBox.DataSource = null;
            // InstructorListBox.Items.Clear();
            // InstructorListBox.DisplayMember = "Name";
            // instructors = InstructorController.GetAllInstructors();
            //
            //
            // foreach (var ins in InstructorController.GetAllInstructors())
            // {
            //     InstructorListBox.Items.Add(ins);
            // }
            //InstructorListBox_SelectedIndexChanged(new(), new());


        }

        private void AddBtn_Click(object sender, EventArgs e)
        {
            this.Hide();

            AddInstructor addInstructor = new();
            addInstructor.Show();

        }

        private async void DeleteBtn_Click(object sender, EventArgs e)
        {
            var instructor = InstructorListBox.SelectedItem as Instructor;
            if (InstructorController.DeleteInstructorByID(instructor.Id) > 0)
            {
                MessageBox.Show("instructor deleted sucessfully");
            }
            else
            {
                MessageBox.Show("failed to delete instructor");
            }
            InstructorListBox.DataSource = await InstructorController.GetAllInstructors();
            InstructorListBox_SelectedIndexChanged(new(), new());

        }
    }
}
