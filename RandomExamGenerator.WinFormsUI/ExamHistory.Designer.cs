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
            label1.Font = new Font("Segoe UI Emoji", 11.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.Location = new Point(33, 38);
            label1.Name = "label1";
            label1.Size = new Size(133, 20);
            label1.TabIndex = 0;
            label1.Text = "Scheduled Time:";
            // 
            // ScheduledTime_Label
            // 
            ScheduledTime_Label.AutoSize = true;
            ScheduledTime_Label.Font = new Font("Segoe UI", 11.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            ScheduledTime_Label.ForeColor = Color.FromArgb(0, 0, 192);
            ScheduledTime_Label.Location = new Point(185, 38);
            ScheduledTime_Label.Name = "ScheduledTime_Label";
            ScheduledTime_Label.Size = new Size(44, 20);
            ScheduledTime_Label.TabIndex = 1;
            ScheduledTime_Label.Text = "Time";
            // 
            // Status
            // 
            Status.AutoSize = true;
            Status.Font = new Font("Segoe UI Emoji", 14.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            Status.ForeColor = SystemColors.ControlText;
            Status.Location = new Point(669, 65);
            Status.Name = "Status";
            Status.Size = new Size(76, 26);
            Status.TabIndex = 2;
            Status.Text = "Passed";
            Status.Click += Status_Click;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI Emoji", 11.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label2.Location = new Point(33, 70);
            label2.Name = "label2";
            label2.Size = new Size(102, 20);
            label2.TabIndex = 3;
            label2.Text = "Percentage: ";
            // 
            // percentage
            // 
            percentage.AutoSize = true;
            percentage.Font = new Font("Segoe UI Emoji", 11.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            percentage.ForeColor = Color.FromArgb(0, 0, 192);
            percentage.Location = new Point(185, 70);
            percentage.Name = "percentage";
            percentage.Size = new Size(49, 20);
            percentage.TabIndex = 4;
            percentage.Text = "100%";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI Emoji", 11.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label3.Location = new Point(414, 71);
            label3.Name = "label3";
            label3.Size = new Size(113, 20);
            label3.TabIndex = 5;
            label3.Text = "Success From:";
            // 
            // SuccessFrom_label
            // 
            SuccessFrom_label.AutoSize = true;
            SuccessFrom_label.Font = new Font("Segoe UI Emoji", 11.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            SuccessFrom_label.ForeColor = Color.FromArgb(0, 0, 192);
            SuccessFrom_label.Location = new Point(533, 71);
            SuccessFrom_label.Name = "SuccessFrom_label";
            SuccessFrom_label.Size = new Size(40, 20);
            SuccessFrom_label.TabIndex = 6;
            SuccessFrom_label.Text = "50%";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI Emoji", 11.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label4.Location = new Point(33, 103);
            label4.Name = "label4";
            label4.Size = new Size(55, 20);
            label4.TabIndex = 7;
            label4.Text = "Score:";
            // 
            // correction_label
            // 
            correction_label.AutoSize = true;
            correction_label.Font = new Font("Segoe UI Emoji", 11.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            correction_label.ForeColor = Color.FromArgb(0, 0, 192);
            correction_label.Location = new Point(185, 103);
            correction_label.Name = "correction_label";
            correction_label.Size = new Size(43, 20);
            correction_label.TabIndex = 8;
            correction_label.Text = "5/10";
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
            panel.Size = new Size(747, 367);
            panel.TabIndex = 10;
            // 
            // download_btn
            // 
            download_btn.BackColor = Color.Salmon;
            download_btn.FlatAppearance.BorderColor = Color.Blue;
            download_btn.FlatAppearance.BorderSize = 0;
            download_btn.FlatStyle = FlatStyle.Popup;
            download_btn.Font = new Font("Book Antiqua", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 0);
            download_btn.ForeColor = SystemColors.ButtonHighlight;
            download_btn.Location = new Point(611, 12);
            download_btn.Name = "download_btn";
            download_btn.Size = new Size(177, 36);
            download_btn.TabIndex = 11;
            download_btn.Text = "Download Model Answer";
            download_btn.UseVisualStyleBackColor = false;
            download_btn.Click += download_btn_Click;
            // 
            // ExamHistory
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 518);
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
            MaximumSize = new Size(816, 557);
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