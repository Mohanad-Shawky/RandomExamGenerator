using Microsoft.EntityFrameworkCore;
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


namespace RandomExamGenerator.WinFormsUI
{
    public partial class ManageStudents : Form
    {
        public BindingList<Student> students;
        public BindingList<Department> departments;
        public ManageStudents()
        {
            InitializeComponent();
        }


        private void loadToolStripMenuItem_Click(object sender, EventArgs e)
        {

            Text = "Data Load";
            //  MessageBox.Show("Loading");
            StudentController.Ctxt.Students.Load();
            students = StudentController.Ctxt.Students.Local.ToBindingList();
            departments = new BindingList<Department>(DepartmentController.GetAllDepartment());
            dataGridView1.DataSource = students;
            DataGridViewComboBoxColumn departmentColumn = new DataGridViewComboBoxColumn();
            departmentColumn.DataSource = departments;
            departmentColumn.DisplayMember = "Name";
            departmentColumn.Name = "Department";
            departmentColumn.ValueMember = "Id";
            departmentColumn.DataPropertyName = "DepartmentId";
            dataGridView1.Columns.Add(departmentColumn);


            dataGridView1.Columns[5].Visible = false;
            dataGridView1.Columns[6].Visible = false;
            dataGridView1.Columns[7].Visible = false;
            dataGridView1.Columns[8].Visible = false;
            dataGridView1.Columns[9].Visible = false;

            MessageBox.Show("Insert ID If You have A New ID", "Information Window", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void saveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                for (int i = 0; i < students.Count; i++)
                {
                    if (students[i].Id == 0)
                    {
                        StudentController.InsertStudents(students[i]);
                    }
                }

                StudentController.SaveAllStudents();

                MessageBox.Show("Data Save");
            }
            catch
            {
                MessageBox.Show("Can't Save Please Check Your Data", "Error Window", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }

        }

        private void DeleteStudentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            InsertStudent New = new InsertStudent();
            New.ShowDialog();
        }


    }

}
