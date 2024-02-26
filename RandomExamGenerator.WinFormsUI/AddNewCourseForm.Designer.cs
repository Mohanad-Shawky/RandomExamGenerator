namespace RandomExamGenerator.WinFormsUI
{
    partial class AddNewCourseForm
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
            NewCourseName = new TextBox();
            label1 = new Label();
            button2 = new Button();
            SuspendLayout();
            // 
            // NewCourseName
            // 
            NewCourseName.Location = new Point(293, 130);
            NewCourseName.Name = "NewCourseName";
            NewCourseName.Size = new Size(326, 31);
            NewCourseName.TabIndex = 0;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Candara", 12F, FontStyle.Bold);
            label1.Location = new Point(128, 130);
            label1.Name = "label1";
            label1.Size = new Size(143, 29);
            label1.TabIndex = 1;
            label1.Text = "CourseName";
            // 
            // button2
            // 
            button2.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            button2.BackColor = Color.DarkOrange;
            button2.Font = new Font("Candara", 12F, FontStyle.Bold);
            button2.ForeColor = Color.White;
            button2.Location = new Point(316, 232);
            button2.Margin = new Padding(4);
            button2.Name = "button2";
            button2.Size = new Size(231, 38);
            button2.TabIndex = 13;
            button2.Text = "Submit";
            button2.UseVisualStyleBackColor = false;
            button2.Click += SubmitClick;
            // 
            // AddNewCourseForm
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(800, 450);
            Controls.Add(button2);
            Controls.Add(label1);
            Controls.Add(NewCourseName);
            Name = "AddNewCourseForm";
            StartPosition = FormStartPosition.CenterParent;
            Text = "AddNewCourse";
            FormClosed += ClosingForm;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TextBox NewCourseName;
        private Label label1;
        private Button button2;
    }
}