﻿namespace RandomExamGenerator.WinFormsUI
{
    partial class InstructorView
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
            panel1 = new Panel();
            linkLabel4 = new LinkLabel();
            linkLabel1 = new LinkLabel();
            pictureBox2 = new PictureBox();
            logoutLbl = new LinkLabel();
            InstCourses = new ListBox();
            panel2 = new Panel();
            button3 = new Button();
            AddQuestionsBtn = new Button();
            button1 = new Button();
            generateBtn = new Button();
            panel4 = new Panel();
            StudentsInCourseGrid = new DataGridView();
            panel3 = new Panel();
            UpdateCourseNameTxt = new TextBox();
            CourseName = new Label();
            UpadteBtn = new LinkLabel();
            linkLabel2 = new LinkLabel();
            pictureBox1 = new PictureBox();
            linkLabel3 = new LinkLabel();
            button2 = new Button();
            panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).BeginInit();
            panel2.SuspendLayout();
            panel4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)StudentsInCourseGrid).BeginInit();
            panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            panel1.BackColor = Color.FromArgb(0, 0, 64);
            panel1.Controls.Add(linkLabel4);
            panel1.Controls.Add(linkLabel1);
            panel1.Controls.Add(pictureBox2);
            panel1.Controls.Add(logoutLbl);
            panel1.Location = new Point(-1, 0);
            panel1.Margin = new Padding(4);
            panel1.Name = "panel1";
            panel1.Size = new Size(1217, 66);
            panel1.TabIndex = 1;
            // 
            // linkLabel4
            // 
            linkLabel4.ActiveLinkColor = Color.DarkOrange;
            linkLabel4.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            linkLabel4.AutoSize = true;
            linkLabel4.Font = new Font("Candara", 12F, FontStyle.Bold);
            linkLabel4.LinkBehavior = LinkBehavior.NeverUnderline;
            linkLabel4.LinkColor = Color.White;
            linkLabel4.Location = new Point(51, 20);
            linkLabel4.Margin = new Padding(4, 0, 4, 0);
            linkLabel4.Name = "linkLabel4";
            linkLabel4.Size = new Size(80, 29);
            linkLabel4.TabIndex = 3;
            linkLabel4.TabStop = true;
            linkLabel4.Text = "Profile";
            // 
            // linkLabel1
            // 
            linkLabel1.ActiveLinkColor = Color.DarkOrange;
            linkLabel1.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            linkLabel1.AutoSize = true;
            linkLabel1.Font = new Font("Candara", 12F, FontStyle.Bold);
            linkLabel1.LinkBehavior = LinkBehavior.NeverUnderline;
            linkLabel1.LinkColor = Color.White;
            linkLabel1.Location = new Point(1089, 20);
            linkLabel1.Margin = new Padding(4, 0, 4, 0);
            linkLabel1.Name = "linkLabel1";
            linkLabel1.Size = new Size(86, 29);
            linkLabel1.TabIndex = 2;
            linkLabel1.TabStop = true;
            linkLabel1.Text = "Logout";
            // 
            // pictureBox2
            // 
            pictureBox2.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            pictureBox2.Location = new Point(1897, 11);
            pictureBox2.Margin = new Padding(4);
            pictureBox2.Name = "pictureBox2";
            pictureBox2.Size = new Size(35, 30);
            pictureBox2.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox2.TabIndex = 2;
            pictureBox2.TabStop = false;
            // 
            // logoutLbl
            // 
            logoutLbl.ActiveLinkColor = Color.DarkOrange;
            logoutLbl.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            logoutLbl.AutoSize = true;
            logoutLbl.Font = new Font("Candara", 12F, FontStyle.Bold);
            logoutLbl.LinkBehavior = LinkBehavior.NeverUnderline;
            logoutLbl.LinkColor = Color.White;
            logoutLbl.Location = new Point(1801, 11);
            logoutLbl.Margin = new Padding(4, 0, 4, 0);
            logoutLbl.Name = "logoutLbl";
            logoutLbl.Size = new Size(86, 29);
            logoutLbl.TabIndex = 1;
            logoutLbl.TabStop = true;
            logoutLbl.Text = "Logout";
            // 
            // InstCourses
            // 
            InstCourses.FormattingEnabled = true;
            InstCourses.ItemHeight = 25;
            InstCourses.Location = new Point(50, 152);
            InstCourses.Name = "InstCourses";
            InstCourses.Size = new Size(231, 479);
            InstCourses.TabIndex = 2;
            InstCourses.SelectedIndexChanged += InstCourses_SelectedIndexChanged;
            // 
            // panel2
            // 
            panel2.Controls.Add(button3);
            panel2.Controls.Add(AddQuestionsBtn);
            panel2.Controls.Add(button1);
            panel2.Controls.Add(generateBtn);
            panel2.Controls.Add(panel4);
            panel2.Location = new Point(328, 152);
            panel2.Name = "panel2";
            panel2.Size = new Size(830, 479);
            panel2.TabIndex = 3;
            // 
            // button3
            // 
            button3.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            button3.BackColor = Color.DarkOrange;
            button3.Font = new Font("Candara", 12F, FontStyle.Bold);
            button3.ForeColor = Color.White;
            button3.Location = new Point(629, 424);
            button3.Margin = new Padding(4);
            button3.Name = "button3";
            button3.Size = new Size(186, 38);
            button3.TabIndex = 12;
            button3.Text = "EnrollStudent";
            button3.UseVisualStyleBackColor = false;
            // 
            // AddQuestionsBtn
            // 
            AddQuestionsBtn.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            AddQuestionsBtn.BackColor = Color.DarkOrange;
            AddQuestionsBtn.Font = new Font("Candara", 12F, FontStyle.Bold);
            AddQuestionsBtn.ForeColor = Color.White;
            AddQuestionsBtn.Location = new Point(9, 424);
            AddQuestionsBtn.Margin = new Padding(4);
            AddQuestionsBtn.Name = "AddQuestionsBtn";
            AddQuestionsBtn.Size = new Size(173, 38);
            AddQuestionsBtn.TabIndex = 11;
            AddQuestionsBtn.Text = "AddQuestions";
            AddQuestionsBtn.UseVisualStyleBackColor = false;
            AddQuestionsBtn.Click += AddQuestionsBtnClick;
            // 
            // button1
            // 
            button1.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            button1.BackColor = Color.DarkOrange;
            button1.Font = new Font("Candara", 12F, FontStyle.Bold);
            button1.ForeColor = Color.White;
            button1.Location = new Point(215, 424);
            button1.Margin = new Padding(4);
            button1.Name = "button1";
            button1.Size = new Size(152, 38);
            button1.TabIndex = 10;
            button1.Text = "Delete";
            button1.UseVisualStyleBackColor = false;
            button1.Click += DeleteBtn;
            // 
            // generateBtn
            // 
            generateBtn.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            generateBtn.BackColor = Color.DarkOrange;
            generateBtn.Font = new Font("Candara", 12F, FontStyle.Bold);
            generateBtn.ForeColor = Color.White;
            generateBtn.Location = new Point(421, 424);
            generateBtn.Margin = new Padding(4);
            generateBtn.Name = "generateBtn";
            generateBtn.Size = new Size(186, 38);
            generateBtn.TabIndex = 9;
            generateBtn.Text = "Generate Exam";
            generateBtn.UseVisualStyleBackColor = false;
            generateBtn.Click += generateBtn_Click;
            // 
            // panel4
            // 
            panel4.Controls.Add(StudentsInCourseGrid);
            panel4.Location = new Point(3, 79);
            panel4.Name = "panel4";
            panel4.Size = new Size(827, 313);
            panel4.TabIndex = 4;
            // 
            // StudentsInCourseGrid
            // 
            StudentsInCourseGrid.BackgroundColor = SystemColors.Window;
            StudentsInCourseGrid.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            StudentsInCourseGrid.Location = new Point(0, 0);
            StudentsInCourseGrid.Name = "StudentsInCourseGrid";
            StudentsInCourseGrid.ReadOnly = true;
            StudentsInCourseGrid.RowHeadersWidth = 62;
            StudentsInCourseGrid.Size = new Size(824, 313);
            StudentsInCourseGrid.TabIndex = 0;
            // 
            // panel3
            // 
            panel3.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            panel3.BackColor = Color.FromArgb(0, 0, 64);
            panel3.Controls.Add(UpdateCourseNameTxt);
            panel3.Controls.Add(CourseName);
            panel3.Controls.Add(UpadteBtn);
            panel3.Controls.Add(linkLabel2);
            panel3.Controls.Add(pictureBox1);
            panel3.Controls.Add(linkLabel3);
            panel3.Location = new Point(328, 152);
            panel3.Margin = new Padding(4);
            panel3.Name = "panel3";
            panel3.Size = new Size(830, 78);
            panel3.TabIndex = 2;
            // 
            // UpdateCourseNameTxt
            // 
            UpdateCourseNameTxt.Location = new Point(312, 32);
            UpdateCourseNameTxt.Name = "UpdateCourseNameTxt";
            UpdateCourseNameTxt.Size = new Size(205, 31);
            UpdateCourseNameTxt.TabIndex = 5;
            // 
            // CourseName
            // 
            CourseName.AutoSize = true;
            CourseName.Font = new Font("Candara", 12F, FontStyle.Bold);
            CourseName.ForeColor = Color.White;
            CourseName.Location = new Point(120, 32);
            CourseName.Name = "CourseName";
            CourseName.Size = new Size(148, 29);
            CourseName.TabIndex = 4;
            CourseName.Text = "Course Name";
            // 
            // UpadteBtn
            // 
            UpadteBtn.ActiveLinkColor = Color.DarkOrange;
            UpadteBtn.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            UpadteBtn.AutoSize = true;
            UpadteBtn.BackColor = Color.FromArgb(0, 0, 64);
            UpadteBtn.DisabledLinkColor = Color.FromArgb(0, 192, 0);
            UpadteBtn.Font = new Font("Candara", 12F, FontStyle.Bold);
            UpadteBtn.LinkBehavior = LinkBehavior.NeverUnderline;
            UpadteBtn.LinkColor = Color.White;
            UpadteBtn.Location = new Point(565, 32);
            UpadteBtn.Margin = new Padding(4, 0, 4, 0);
            UpadteBtn.Name = "UpadteBtn";
            UpadteBtn.Size = new Size(88, 29);
            UpadteBtn.TabIndex = 3;
            UpadteBtn.TabStop = true;
            UpadteBtn.Text = "Update";
            UpadteBtn.LinkClicked += UpdateBtn;
            // 
            // linkLabel2
            // 
            linkLabel2.ActiveLinkColor = Color.DarkOrange;
            linkLabel2.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            linkLabel2.AutoSize = true;
            linkLabel2.Font = new Font("Candara", 12F, FontStyle.Bold);
            linkLabel2.LinkBehavior = LinkBehavior.NeverUnderline;
            linkLabel2.LinkColor = Color.White;
            linkLabel2.Location = new Point(1528, 20);
            linkLabel2.Margin = new Padding(4, 0, 4, 0);
            linkLabel2.Name = "linkLabel2";
            linkLabel2.Size = new Size(86, 29);
            linkLabel2.TabIndex = 2;
            linkLabel2.TabStop = true;
            linkLabel2.Text = "Logout";
            // 
            // pictureBox1
            // 
            pictureBox1.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            pictureBox1.Location = new Point(2336, 11);
            pictureBox1.Margin = new Padding(4);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(35, 30);
            pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox1.TabIndex = 2;
            pictureBox1.TabStop = false;
            // 
            // linkLabel3
            // 
            linkLabel3.ActiveLinkColor = Color.DarkOrange;
            linkLabel3.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            linkLabel3.AutoSize = true;
            linkLabel3.Font = new Font("Candara", 12F, FontStyle.Bold);
            linkLabel3.LinkBehavior = LinkBehavior.NeverUnderline;
            linkLabel3.LinkColor = Color.White;
            linkLabel3.Location = new Point(2240, 11);
            linkLabel3.Margin = new Padding(4, 0, 4, 0);
            linkLabel3.Name = "linkLabel3";
            linkLabel3.Size = new Size(86, 29);
            linkLabel3.TabIndex = 1;
            linkLabel3.TabStop = true;
            linkLabel3.Text = "Logout";
            // 
            // button2
            // 
            button2.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            button2.BackColor = Color.DarkOrange;
            button2.Font = new Font("Candara", 12F, FontStyle.Bold);
            button2.ForeColor = Color.White;
            button2.Location = new Point(50, 90);
            button2.Margin = new Padding(4);
            button2.Name = "button2";
            button2.Size = new Size(231, 38);
            button2.TabIndex = 12;
            button2.Text = "Add New Course";
            button2.UseVisualStyleBackColor = false;
            button2.Click += AddNewCourseClick;
            // 
            // InstructorView
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(1215, 739);
            Controls.Add(button2);
            Controls.Add(panel3);
            Controls.Add(panel2);
            Controls.Add(InstCourses);
            Controls.Add(panel1);
            FormBorderStyle = FormBorderStyle.FixedDialog;
            Name = "InstructorView";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Instrctor View";
            Load += InstructorView_Load;
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).EndInit();
            panel2.ResumeLayout(false);
            panel4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)StudentsInCourseGrid).EndInit();
            panel3.ResumeLayout(false);
            panel3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private Panel panel1;
        private PictureBox pictureBox2;
        private LinkLabel logoutLbl;
        private LinkLabel linkLabel1;
        private ListBox InstCourses;
        private Panel panel2;
        private Panel panel3;
        private LinkLabel linkLabel2;
        private PictureBox pictureBox1;
        private LinkLabel linkLabel3;
        private LinkLabel UpadteBtn;
        private Label CourseName;
        private TextBox UpdateCourseNameTxt;
        private Panel panel4;
        private DataGridView StudentsInCourseGrid;
        private Button button1;
        private Button generateBtn;
        private Button AddQuestionsBtn;
        private Button button2;
        private Button button3;
        private LinkLabel linkLabel4;
    }
}