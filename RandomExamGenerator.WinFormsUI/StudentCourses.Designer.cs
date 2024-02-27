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
            Profile_btn = new Button();
            panel = new Panel();
            timer1 = new System.Windows.Forms.Timer(components);
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Agency FB", 20.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.Location = new Point(318, 10);
            label1.Name = "label1";
            label1.Size = new Size(132, 34);
            label1.TabIndex = 0;
            label1.Text = "Your Courses";
            // 
            // Profile_btn
            // 
            Profile_btn.BackColor = Color.CornflowerBlue;
            Profile_btn.FlatStyle = FlatStyle.Popup;
            Profile_btn.Font = new Font("Segoe UI", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 0);
            Profile_btn.ForeColor = SystemColors.ActiveCaptionText;
            Profile_btn.Location = new Point(675, 9);
            Profile_btn.Name = "Profile_btn";
            Profile_btn.Size = new Size(97, 35);
            Profile_btn.TabIndex = 1;
            Profile_btn.Text = "MyProfile";
            Profile_btn.UseVisualStyleBackColor = false;
            // 
            // panel
            // 
            panel.Location = new Point(12, 61);
            panel.Name = "panel";
            panel.Size = new Size(760, 375);
            panel.TabIndex = 2;
            // 
            // StudentCourses
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(784, 461);
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
        private System.Windows.Forms.Timer timer1;
    }
}