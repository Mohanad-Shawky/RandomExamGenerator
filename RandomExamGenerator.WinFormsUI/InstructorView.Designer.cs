namespace RandomExamGenerator.WinFormsUI
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
            panel1.Margin = new Padding(3, 2, 3, 2);
            panel1.Name = "panel1";
            panel1.Size = new Size(852, 40);
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
            linkLabel4.Location = new Point(36, 12);
            linkLabel4.Name = "linkLabel4";
            linkLabel4.Size = new Size(54, 19);
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
            linkLabel1.Location = new Point(762, 12);
            linkLabel1.Name = "linkLabel1";
            linkLabel1.Size = new Size(59, 19);
            linkLabel1.TabIndex = 2;
            linkLabel1.TabStop = true;
            linkLabel1.Text = "Logout";
            linkLabel1.LinkClicked += linkLabel1_LinkClicked;
            // 
            // pictureBox2
            // 
            pictureBox2.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            pictureBox2.Location = new Point(1328, 7);
            pictureBox2.Margin = new Padding(3, 2, 3, 2);
            pictureBox2.Name = "pictureBox2";
            pictureBox2.Size = new Size(24, 18);
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
            logoutLbl.Location = new Point(1261, 7);
            logoutLbl.Name = "logoutLbl";
            logoutLbl.Size = new Size(59, 19);
            logoutLbl.TabIndex = 1;
            logoutLbl.TabStop = true;
            logoutLbl.Text = "Logout";
            // 
            // InstCourses
            // 
            InstCourses.FormattingEnabled = true;
            InstCourses.ItemHeight = 15;
            InstCourses.Location = new Point(35, 91);
            InstCourses.Margin = new Padding(2);
            InstCourses.Name = "InstCourses";
            InstCourses.Size = new Size(163, 289);
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
            panel2.Location = new Point(230, 91);
            panel2.Margin = new Padding(2);
            panel2.Name = "panel2";
            panel2.Size = new Size(581, 287);
            panel2.TabIndex = 3;
            // 
            // button3
            // 
            button3.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            button3.BackColor = Color.DarkOrange;
            button3.Font = new Font("Candara", 12F, FontStyle.Bold);
            button3.ForeColor = Color.White;
            button3.Location = new Point(440, 254);
            button3.Margin = new Padding(3, 2, 3, 2);
            button3.Name = "button3";
            button3.Size = new Size(130, 23);
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
            AddQuestionsBtn.Location = new Point(6, 254);
            AddQuestionsBtn.Margin = new Padding(3, 2, 3, 2);
            AddQuestionsBtn.Name = "AddQuestionsBtn";
            AddQuestionsBtn.Size = new Size(121, 23);
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
            button1.Location = new Point(150, 254);
            button1.Margin = new Padding(3, 2, 3, 2);
            button1.Name = "button1";
            button1.Size = new Size(106, 23);
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
            generateBtn.Location = new Point(295, 254);
            generateBtn.Margin = new Padding(3, 2, 3, 2);
            generateBtn.Name = "generateBtn";
            generateBtn.Size = new Size(130, 23);
            generateBtn.TabIndex = 9;
            generateBtn.Text = "Generate Exam";
            generateBtn.UseVisualStyleBackColor = false;
            generateBtn.Click += generateBtn_Click;
            // 
            // panel4
            // 
            panel4.Controls.Add(StudentsInCourseGrid);
            panel4.Location = new Point(2, 47);
            panel4.Margin = new Padding(2);
            panel4.Name = "panel4";
            panel4.Size = new Size(579, 188);
            panel4.TabIndex = 4;
            // 
            // StudentsInCourseGrid
            // 
            StudentsInCourseGrid.BackgroundColor = SystemColors.Window;
            StudentsInCourseGrid.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            StudentsInCourseGrid.Location = new Point(0, 0);
            StudentsInCourseGrid.Margin = new Padding(2);
            StudentsInCourseGrid.Name = "StudentsInCourseGrid";
            StudentsInCourseGrid.ReadOnly = true;
            StudentsInCourseGrid.RowHeadersWidth = 62;
            StudentsInCourseGrid.Size = new Size(577, 188);
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
            panel3.Location = new Point(230, 91);
            panel3.Margin = new Padding(3, 2, 3, 2);
            panel3.Name = "panel3";
            panel3.Size = new Size(581, 47);
            panel3.TabIndex = 2;
            // 
            // UpdateCourseNameTxt
            // 
            UpdateCourseNameTxt.Location = new Point(218, 19);
            UpdateCourseNameTxt.Margin = new Padding(2);
            UpdateCourseNameTxt.Name = "UpdateCourseNameTxt";
            UpdateCourseNameTxt.Size = new Size(145, 23);
            UpdateCourseNameTxt.TabIndex = 5;
            // 
            // CourseName
            // 
            CourseName.AutoSize = true;
            CourseName.Font = new Font("Candara", 12F, FontStyle.Bold);
            CourseName.ForeColor = Color.White;
            CourseName.Location = new Point(84, 19);
            CourseName.Margin = new Padding(2, 0, 2, 0);
            CourseName.Name = "CourseName";
            CourseName.Size = new Size(100, 19);
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
            UpadteBtn.Location = new Point(396, 19);
            UpadteBtn.Name = "UpadteBtn";
            UpadteBtn.Size = new Size(60, 19);
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
            linkLabel2.Location = new Point(1070, 12);
            linkLabel2.Name = "linkLabel2";
            linkLabel2.Size = new Size(59, 19);
            linkLabel2.TabIndex = 2;
            linkLabel2.TabStop = true;
            linkLabel2.Text = "Logout";
            // 
            // pictureBox1
            // 
            pictureBox1.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            pictureBox1.Location = new Point(1635, 7);
            pictureBox1.Margin = new Padding(3, 2, 3, 2);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(24, 18);
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
            linkLabel3.Location = new Point(1568, 7);
            linkLabel3.Name = "linkLabel3";
            linkLabel3.Size = new Size(59, 19);
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
            button2.Location = new Point(35, 54);
            button2.Margin = new Padding(3, 2, 3, 2);
            button2.Name = "button2";
            button2.Size = new Size(162, 23);
            button2.TabIndex = 12;
            button2.Text = "Add New Course";
            button2.UseVisualStyleBackColor = false;
            button2.Click += AddNewCourseClick;
            // 
            // InstructorView
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(850, 443);
            Controls.Add(button2);
            Controls.Add(panel3);
            Controls.Add(panel2);
            Controls.Add(InstCourses);
            Controls.Add(panel1);
            FormBorderStyle = FormBorderStyle.FixedDialog;
            Margin = new Padding(2);
            Name = "InstructorView";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Instrctor View";
            FormClosed += InstructorView_FormClosed;
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