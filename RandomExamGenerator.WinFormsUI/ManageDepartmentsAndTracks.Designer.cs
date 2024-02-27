namespace RandomExamGenerator.WinFormsUI
{
    partial class ManageDepartmentsAndTracks
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            dataGridView1 = new DataGridView();
            menuStrip1 = new MenuStrip();
            mangeToolStripMenuItem = new ToolStripMenuItem();
            loadToolStripMenuItem = new ToolStripMenuItem();
            loadDepartmnetToolStripMenuItem = new ToolStripMenuItem();
            loadTracksToolStripMenuItem = new ToolStripMenuItem();
            saveToolStripMenuItem = new ToolStripMenuItem();
            insertTrackToolStripMenuItem = new ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            menuStrip1.SuspendLayout();
            SuspendLayout();
            // 
            // dataGridView1
            // 
            dataGridView1.BackgroundColor = Color.White;
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Dock = DockStyle.Fill;
            dataGridView1.Location = new Point(0, 28);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.RowHeadersWidth = 51;
            dataGridView1.Size = new Size(800, 422);
            dataGridView1.TabIndex = 0;
            // 
            // menuStrip1
            // 
            menuStrip1.BackColor = SystemColors.HotTrack;
            menuStrip1.ImageScalingSize = new Size(20, 20);
            menuStrip1.Items.AddRange(new ToolStripItem[] { mangeToolStripMenuItem });
            menuStrip1.Location = new Point(0, 0);
            menuStrip1.Name = "menuStrip1";
            menuStrip1.Size = new Size(800, 28);
            menuStrip1.TabIndex = 1;
            menuStrip1.Text = "menuStrip1";
            // 
            // mangeToolStripMenuItem
            // 
            mangeToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { loadToolStripMenuItem, saveToolStripMenuItem, insertTrackToolStripMenuItem });
            mangeToolStripMenuItem.Name = "mangeToolStripMenuItem";
            mangeToolStripMenuItem.Size = new Size(69, 24);
            mangeToolStripMenuItem.Text = "Mange";
            // 
            // loadToolStripMenuItem
            // 
            loadToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { loadDepartmnetToolStripMenuItem, loadTracksToolStripMenuItem });
            loadToolStripMenuItem.Name = "loadToolStripMenuItem";
            loadToolStripMenuItem.Size = new Size(212, 26);
            loadToolStripMenuItem.Text = "Load";
            loadToolStripMenuItem.Click += loadToolStripMenuItem_Click;
            // 
            // loadDepartmnetToolStripMenuItem
            // 
            loadDepartmnetToolStripMenuItem.Name = "loadDepartmnetToolStripMenuItem";
            loadDepartmnetToolStripMenuItem.Size = new Size(215, 26);
            loadDepartmnetToolStripMenuItem.Text = "Load Departments";
            loadDepartmnetToolStripMenuItem.Click += loadDepartmentToolStripMenuItem_Click;
            // 
            // loadTracksToolStripMenuItem
            // 
            loadTracksToolStripMenuItem.Name = "loadTracksToolStripMenuItem";
            loadTracksToolStripMenuItem.Size = new Size(215, 26);
            loadTracksToolStripMenuItem.Text = "Load Tracks";
            loadTracksToolStripMenuItem.Click += loadTracksToolStripMenuItem_Click;
            // 
            // saveToolStripMenuItem
            // 
            saveToolStripMenuItem.Name = "saveToolStripMenuItem";
            saveToolStripMenuItem.Size = new Size(212, 26);
            saveToolStripMenuItem.Text = "Save";
            saveToolStripMenuItem.Click += saveToolStripMenuItem_Click;
            // 
            // insertTrackToolStripMenuItem
            // 
            insertTrackToolStripMenuItem.Name = "insertTrackToolStripMenuItem";
            insertTrackToolStripMenuItem.Size = new Size(212, 26);
            insertTrackToolStripMenuItem.Text = "Insert Department";
            insertTrackToolStripMenuItem.Click += insertTrackToolStripMenuItem_Click;
            // 
            // ManageDepartmentsAndTracks
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(dataGridView1);
            Controls.Add(menuStrip1);
            MainMenuStrip = menuStrip1;
            Name = "ManageDepartmentsAndTracks";
            Text = "ManageDepartmentsAndTracks";
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            menuStrip1.ResumeLayout(false);
            menuStrip1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView dataGridView1;
        private MenuStrip menuStrip1;
        private ToolStripMenuItem mangeToolStripMenuItem;
        private ToolStripMenuItem loadToolStripMenuItem;
        private ToolStripMenuItem saveToolStripMenuItem;
        private ToolStripMenuItem insertTrackToolStripMenuItem;
        private ToolStripMenuItem loadDepartmnetToolStripMenuItem;
        private ToolStripMenuItem loadTracksToolStripMenuItem;
    }
}