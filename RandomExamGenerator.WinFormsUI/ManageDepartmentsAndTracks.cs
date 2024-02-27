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
    public partial class ManageDepartmentsAndTracks : Form
    {
        public BindingList<Department> departments;
        public ManageDepartmentsAndTracks()
        {
            InitializeComponent();
        }

        private void loadToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void saveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {

                DepartmentController.SaveAllTracks();


                MessageBox.Show("Data Save");
            }
            catch
            {
                MessageBox.Show("Can't Save Please Check Your Data", "Error Window", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
        }

        private void insertTrackToolStripMenuItem_Click(object sender, EventArgs e)
        {
            InsertDepartment department = new InsertDepartment();
            department.ShowDialog();
        }



        private void loadDepartmentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Text = "Table Department";

            DepartmentController.Ctxt.Departments.Load();
            departments = DepartmentController.Ctxt.Departments.Local.ToBindingList();
            dataGridView1.DataSource = departments;
            DataGridViewComboBoxColumn studentColumn = new DataGridViewComboBoxColumn();

            studentColumn.ValueMember = "ID";
            studentColumn.DataPropertyName = "ID";
            dataGridView1.Columns[0].ReadOnly = true;

            dataGridView1.Columns[1].Visible = true;

            dataGridView1.Columns[2].Visible = false;
            dataGridView1.Columns[3].Visible = false;
            dataGridView1.Columns[4].Visible = false;
            dataGridView1.Columns[5].Visible = false;
            dataGridView1.Columns[6].Visible = false;
            MessageBox.Show("Don't Insert ID For Department", "Information Window", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }
    }
}

