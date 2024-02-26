namespace RandomExamGenerator.WinFormsUI
{
    partial class ExamHistory
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
            ScheduledTime_Label = new Label();
            Status = new Label();
            label2 = new Label();
            percentage = new Label();
            label3 = new Label();
            SuccessFrom_label = new Label();
            label4 = new Label();
            correction_label = new Label();
            ExamID = new Label();
            panel = new Panel();
            download_btn = new Button();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(50, 38);
            label1.Name = "label1";
            label1.Size = new Size(91, 15);
            label1.TabIndex = 0;
            label1.Text = "Scheduled Time";
            // 
            // ScheduledTime_Label
            // 
            ScheduledTime_Label.AutoSize = true;
            ScheduledTime_Label.Location = new Point(168, 38);
            ScheduledTime_Label.Name = "ScheduledTime_Label";
            ScheduledTime_Label.Size = new Size(0, 15);
            ScheduledTime_Label.TabIndex = 1;
            // 
            // Status
            // 
            Status.AutoSize = true;
            Status.Location = new Point(515, 38);
            Status.Name = "Status";
            Status.Size = new Size(0, 15);
            Status.TabIndex = 2;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(50, 70);
            label2.Name = "label2";
            label2.Size = new Size(72, 15);
            label2.TabIndex = 3;
            label2.Text = "Percentage: ";
            // 
            // percentage
            // 
            percentage.AutoSize = true;
            percentage.Location = new Point(168, 70);
            percentage.Name = "percentage";
            percentage.Size = new Size(0, 15);
            percentage.TabIndex = 4;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(354, 70);
            label3.Name = "label3";
            label3.Size = new Size(82, 15);
            label3.TabIndex = 5;
            label3.Text = "Success From:";
            // 
            // SuccessFrom_label
            // 
            SuccessFrom_label.AutoSize = true;
            SuccessFrom_label.Location = new Point(442, 70);
            SuccessFrom_label.Name = "SuccessFrom_label";
            SuccessFrom_label.Size = new Size(0, 15);
            SuccessFrom_label.TabIndex = 6;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(50, 103);
            label4.Name = "label4";
            label4.Size = new Size(66, 15);
            label4.TabIndex = 7;
            label4.Text = "Correction:";
            // 
            // correction_label
            // 
            correction_label.AutoSize = true;
            correction_label.Location = new Point(168, 103);
            correction_label.Name = "correction_label";
            correction_label.Size = new Size(0, 15);
            correction_label.TabIndex = 8;
            // 
            // ExamID
            // 
            ExamID.AutoSize = true;
            ExamID.Location = new Point(50, 9);
            ExamID.Name = "ExamID";
            ExamID.Size = new Size(0, 15);
            ExamID.TabIndex = 9;
            // 
            // panel
            // 
            panel.AutoScroll = true;
            panel.AutoSizeMode = AutoSizeMode.GrowAndShrink;
            panel.Location = new Point(27, 139);
            panel.Name = "panel";
            panel.Size = new Size(685, 299);
            panel.TabIndex = 10;
            // 
            // download_btn
            // 
            download_btn.Location = new Point(626, 12);
            download_btn.Name = "download_btn";
            download_btn.Size = new Size(162, 31);
            download_btn.TabIndex = 11;
            download_btn.Text = "Download Model Answer";
            download_btn.UseVisualStyleBackColor = true;
            download_btn.Click += download_btn_Click;
            // 
            // ExamHistory
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(download_btn);
            Controls.Add(panel);
            Controls.Add(ExamID);
            Controls.Add(correction_label);
            Controls.Add(label4);
            Controls.Add(SuccessFrom_label);
            Controls.Add(label3);
            Controls.Add(percentage);
            Controls.Add(label2);
            Controls.Add(Status);
            Controls.Add(ScheduledTime_Label);
            Controls.Add(label1);
            Name = "ExamHistory";
            Text = "ExamHistory";
            Load += ExamHistory_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Label ScheduledTime_Label;
        private Label Status;
        private Label label2;
        private Label percentage;
        private Label label3;
        private Label SuccessFrom_label;
        private Label label4;
        private Label correction_label;
        private Label ExamID;
        private Panel panel;
        private Button download_btn;
    }
}