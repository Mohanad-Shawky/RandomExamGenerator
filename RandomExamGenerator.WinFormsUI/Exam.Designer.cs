namespace RandomExamGenerator.WinFormsUI
{
    partial class Exam
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
            Submit_btn = new Button();
            timer1 = new System.Windows.Forms.Timer(components);
            label1 = new Label();
            panel = new Panel();
            ExamID = new Label();
            CourseID = new Label();
            SuspendLayout();
            // 
            // Submit_btn
            // 
            Submit_btn.BackColor = SystemColors.ActiveCaption;
            Submit_btn.FlatStyle = FlatStyle.Popup;
            Submit_btn.Font = new Font("Segoe UI Semibold", 12F, FontStyle.Bold, GraphicsUnit.Point, 0);
            Submit_btn.Location = new Point(656, 398);
            Submit_btn.Name = "Submit_btn";
            Submit_btn.Size = new Size(132, 40);
            Submit_btn.TabIndex = 0;
            Submit_btn.Text = "Submit";
            Submit_btn.UseVisualStyleBackColor = false;
            Submit_btn.Click += Submit_btn_Click;
            // 
            // timer1
            // 
            timer1.Tick += timer1_Tick;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(674, 18);
            label1.Name = "label1";
            label1.Size = new Size(49, 15);
            label1.TabIndex = 1;
            label1.Text = "00:00:00";
            // 
            // panel
            // 
            panel.Location = new Point(4, 50);
            panel.Name = "panel";
            panel.Size = new Size(784, 342);
            panel.TabIndex = 2;
            // 
            // ExamID
            // 
            ExamID.AutoSize = true;
            ExamID.Location = new Point(61, 18);
            ExamID.Name = "ExamID";
            ExamID.Size = new Size(38, 15);
            ExamID.TabIndex = 3;
            ExamID.Text = "label2";
            ExamID.Visible = false;
            // 
            // CourseID
            // 
            CourseID.AutoSize = true;
            CourseID.Location = new Point(165, 17);
            CourseID.Name = "CourseID";
            CourseID.Size = new Size(38, 15);
            CourseID.TabIndex = 4;
            CourseID.Text = "label3";
            CourseID.Visible = false;
            // 
            // Exam
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            AutoScroll = true;
            ClientSize = new Size(800, 450);
            Controls.Add(CourseID);
            Controls.Add(ExamID);
            Controls.Add(panel);
            Controls.Add(label1);
            Controls.Add(Submit_btn);
            Name = "Exam";
            Text = "Exam";
            Load += Exam_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button Submit_btn;
        private System.Windows.Forms.Timer timer1;
        private Label label1;
        private Panel panel;
        private Label ExamID;
        private Label CourseID;
    }
}