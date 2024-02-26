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
            dataGridView1.DataSource = students;
            DataGridViewComboBoxColumn studentColumn = new DataGridViewComboBoxColumn();
            //studentColumn.DisplayMember = "Name";
            studentColumn.ValueMember = "Id";
            studentColumn.DataPropertyName = "Id";
            // dataGridView1.Columns[0].ReadOnly = true;

            dataGridView1.Columns[4].Visible = false;
            dataGridView1.Columns[5].Visible = false;
            dataGridView1.Columns[6].Visible = false;
            dataGridView1.Columns[7].Visible = false;
            MessageBox.Show("Don't Insert ID", "Information Window", MessageBoxButtons.OK, MessageBoxIcon.Information);

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
            New.Show();
        }


    }

}
