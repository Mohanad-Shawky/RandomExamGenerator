namespace RandomExamGenerator.WinFormsUI
{
    partial class StudentCourses
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
            components = new System.ComponentModel.Container();
            label1 = new Label();
            panel = new Panel();
            timer1 = new System.Windows.Forms.Timer(components);
            label2 = new Label();
            Student_Name = new Label();
            panel1 = new Panel();
            linkLabel_logout = new LinkLabel();
            panel1.SuspendLayout();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Agency FB", 21.75F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.Location = new Point(296, 3);
            label1.Name = "label1";
            label1.Size = new Size(141, 35);
            label1.TabIndex = 0;
            label1.Text = "Your Courses";
            // 
            // panel
            // 
            panel.Location = new Point(12, 61);
            panel.Name = "panel";
            panel.Size = new Size(760, 375);
            panel.TabIndex = 2;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Agency FB", 15.75F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label2.Location = new Point(3, 11);
            label2.Name = "label2";
            label2.Size = new Size(77, 25);
            label2.TabIndex = 3;
            label2.Text = "Username:";
            // 
            // Student_Name
            // 
            Student_Name.AutoSize = true;
            Student_Name.Font = new Font("Agency FB", 15.75F, FontStyle.Regular, GraphicsUnit.Point, 0);
            Student_Name.Location = new Point(73, 11);
            Student_Name.Name = "Student_Name";
            Student_Name.Size = new Size(46, 25);
            Student_Name.TabIndex = 4;
            Student_Name.Text = "Name";
            Student_Name.Click += Student_Name_Click;
            // 
            // panel1
            // 
            panel1.BackColor = Color.LightSkyBlue;
            panel1.Controls.Add(linkLabel_logout);
            panel1.Controls.Add(label1);
            panel1.Controls.Add(Student_Name);
            panel1.Controls.Add(label2);
            panel1.Location = new Point(12, 7);
            panel1.Name = "panel1";
            panel1.Size = new Size(760, 48);
            panel1.TabIndex = 3;
            // 
            // linkLabel_logout
            // 
            linkLabel_logout.ActiveLinkColor = Color.FromArgb(0, 0, 192);
            linkLabel_logout.AutoSize = true;
            linkLabel_logout.Font = new Font("Segoe UI Semibold", 12F, FontStyle.Bold, GraphicsUnit.Point, 0);
            linkLabel_logout.LinkBehavior = LinkBehavior.NeverUnderline;
            linkLabel_logout.LinkColor = Color.Black;
            linkLabel_logout.Location = new Point(692, 11);
            linkLabel_logout.Name = "linkLabel_logout";
            linkLabel_logout.Size = new Size(63, 21);
            linkLabel_logout.TabIndex = 5;
            linkLabel_logout.TabStop = true;
            linkLabel_logout.Text = "Logout";
            linkLabel_logout.LinkClicked += linkLabel_logout_LinkClicked;
            // 
            // StudentCourses
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(784, 461);
            Controls.Add(panel1);
            Controls.Add(panel);
            Name = "StudentCourses";
            Text = "StudentCourses";
            FormClosed += StudentCourses_FormClosed;
            Load += StudentCourses_Load;
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private Label label1;
        private Panel panel;
        private System.Windows.Forms.Timer timer1;
        private Label label2;
        private Label Student_Name;
        private Panel panel1;
        private LinkLabel linkLabel_logout;
    }
}