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
            label1 = new Label();
            Profile_btn = new Button();
            panel = new Panel();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(287, 9);
            label1.Name = "label1";
            label1.Size = new Size(93, 15);
            label1.TabIndex = 0;
            label1.Text = "Student Courses";
            // 
            // Profile_btn
            // 
            Profile_btn.Location = new Point(554, 22);
            Profile_btn.Name = "Profile_btn";
            Profile_btn.Size = new Size(97, 33);
            Profile_btn.TabIndex = 1;
            Profile_btn.Text = "MyProfile";
            Profile_btn.UseVisualStyleBackColor = true;
            // 
            // panel
            // 
            panel.Location = new Point(12, 61);
            panel.Name = "panel";
            panel.Size = new Size(660, 375);
            panel.TabIndex = 2;
            // 
            // StudentCourses
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(684, 461);
            Controls.Add(panel);
            Controls.Add(Profile_btn);
            Controls.Add(label1);
            Name = "StudentCourses";
            Text = "StudentCourses";
            Load += StudentCourses_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Button Profile_btn;
        private Panel panel;
    }
}