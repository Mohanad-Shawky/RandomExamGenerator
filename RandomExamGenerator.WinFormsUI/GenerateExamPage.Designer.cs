namespace RandomExamGenerator.WinFormsUI
{
    partial class GenerateExamPage
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
            EasyQuestions = new NumericUpDown();
            label1 = new Label();
            label2 = new Label();
            HardQuestions = new Label();
            hardQuestion = new NumericUpDown();
            MeduimQuestion = new Label();
            medQuest = new NumericUpDown();
            panel1 = new Panel();
            SubmitBtn = new Button();
            label6 = new Label();
            EndExamTime = new DateTimePicker();
            StartExamTime = new DateTimePicker();
            label5 = new Label();
            dateTimeDay = new DateTimePicker();
            label4 = new Label();
            SuccessPercentTxtBox = new TextBox();
            label3 = new Label();
            ((System.ComponentModel.ISupportInitialize)EasyQuestions).BeginInit();
            ((System.ComponentModel.ISupportInitialize)hardQuestion).BeginInit();
            ((System.ComponentModel.ISupportInitialize)medQuest).BeginInit();
            panel1.SuspendLayout();
            SuspendLayout();
            // 
            // EasyQuestions
            // 
            EasyQuestions.Location = new Point(244, 218);
            EasyQuestions.Name = "EasyQuestions";
            EasyQuestions.Size = new Size(180, 31);
            EasyQuestions.TabIndex = 1;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(159, 365);
            label1.Name = "label1";
            label1.Size = new Size(0, 25);
            label1.TabIndex = 2;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(63, 220);
            label2.Name = "label2";
            label2.Size = new Size(132, 25);
            label2.TabIndex = 3;
            label2.Text = "Easy Questions";
            // 
            // HardQuestions
            // 
            HardQuestions.AutoSize = true;
            HardQuestions.Location = new Point(63, 274);
            HardQuestions.Name = "HardQuestions";
            HardQuestions.Size = new Size(136, 25);
            HardQuestions.TabIndex = 4;
            HardQuestions.Text = "Hard Questions";
            // 
            // hardQuestion
            // 
            hardQuestion.Location = new Point(244, 274);
            hardQuestion.Name = "hardQuestion";
            hardQuestion.Size = new Size(180, 31);
            hardQuestion.TabIndex = 5;
            // 
            // MeduimQuestion
            // 
            MeduimQuestion.AutoSize = true;
            MeduimQuestion.Location = new Point(63, 326);
            MeduimQuestion.Name = "MeduimQuestion";
            MeduimQuestion.Size = new Size(150, 25);
            MeduimQuestion.TabIndex = 6;
            MeduimQuestion.Text = "MeduimQuestion";
            // 
            // medQuest
            // 
            medQuest.Location = new Point(244, 326);
            medQuest.Name = "medQuest";
            medQuest.Size = new Size(180, 31);
            medQuest.TabIndex = 7;
            // 
            // panel1
            // 
            panel1.BorderStyle = BorderStyle.FixedSingle;
            panel1.Controls.Add(SubmitBtn);
            panel1.Controls.Add(label6);
            panel1.Controls.Add(EndExamTime);
            panel1.Controls.Add(StartExamTime);
            panel1.Controls.Add(label5);
            panel1.Controls.Add(dateTimeDay);
            panel1.Controls.Add(label4);
            panel1.Controls.Add(SuccessPercentTxtBox);
            panel1.Controls.Add(label3);
            panel1.Controls.Add(label2);
            panel1.Controls.Add(MeduimQuestion);
            panel1.Controls.Add(medQuest);
            panel1.Controls.Add(EasyQuestions);
            panel1.Controls.Add(HardQuestions);
            panel1.Controls.Add(hardQuestion);
            panel1.Location = new Point(96, 85);
            panel1.Name = "panel1";
            panel1.Size = new Size(1004, 477);
            panel1.TabIndex = 8;
            // 
            // SubmitBtn
            // 
            SubmitBtn.Location = new Point(530, 326);
            SubmitBtn.Name = "SubmitBtn";
            SubmitBtn.Size = new Size(291, 40);
            SubmitBtn.TabIndex = 16;
            SubmitBtn.Text = "Submit";
            SubmitBtn.UseVisualStyleBackColor = true;
            SubmitBtn.Click += Submit_Click;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(520, 280);
            label6.Name = "label6";
            label6.Size = new Size(42, 25);
            label6.TabIndex = 15;
            label6.Text = "End";
            // 
            // EndExamTime
            // 
            EndExamTime.Format = DateTimePickerFormat.Time;
            EndExamTime.Location = new Point(640, 275);
            EndExamTime.Name = "EndExamTime";
            EndExamTime.Size = new Size(181, 31);
            EndExamTime.TabIndex = 14;
            EndExamTime.Value = new DateTime(2024, 2, 24, 0, 0, 0, 0);
            // 
            // StartExamTime
            // 
            StartExamTime.Format = DateTimePickerFormat.Time;
            StartExamTime.Location = new Point(640, 212);
            StartExamTime.Name = "StartExamTime";
            StartExamTime.Size = new Size(181, 31);
            StartExamTime.TabIndex = 13;
            StartExamTime.Value = new DateTime(2024, 2, 24, 0, 0, 0, 0);
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(520, 218);
            label5.Name = "label5";
            label5.Size = new Size(48, 25);
            label5.TabIndex = 12;
            label5.Text = "Strat";
            // 
            // dateTimeDay
            // 
            dateTimeDay.Format = DateTimePickerFormat.Short;
            dateTimeDay.Location = new Point(640, 149);
            dateTimeDay.Name = "dateTimeDay";
            dateTimeDay.Size = new Size(181, 31);
            dateTimeDay.TabIndex = 11;
            dateTimeDay.Value = new DateTime(2024, 2, 28, 0, 0, 0, 0);
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(520, 154);
            label4.Name = "label4";
            label4.Size = new Size(43, 25);
            label4.TabIndex = 10;
            label4.Text = "Day";
            // 
            // SuccessPercentTxtBox
            // 
            SuccessPercentTxtBox.Location = new Point(244, 148);
            SuccessPercentTxtBox.Name = "SuccessPercentTxtBox";
            SuccessPercentTxtBox.Size = new Size(182, 31);
            SuccessPercentTxtBox.TabIndex = 9;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(63, 148);
            label3.Name = "label3";
            label3.Size = new Size(159, 25);
            label3.TabIndex = 8;
            label3.Text = "SuccessPercentage";
            // 
            // GenerateExamPage
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(1259, 653);
            Controls.Add(panel1);
            Controls.Add(label1);
            FormBorderStyle = FormBorderStyle.FixedDialog;
            Name = "GenerateExamPage";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "GenerateExamPage";
            ((System.ComponentModel.ISupportInitialize)EasyQuestions).EndInit();
            ((System.ComponentModel.ISupportInitialize)hardQuestion).EndInit();
            ((System.ComponentModel.ISupportInitialize)medQuest).EndInit();
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private NumericUpDown EasyQuestions;
        private Label label1;
        private Label label2;
        private Label HardQuestions;
        private NumericUpDown hardQuestion;
        private Label MeduimQuestion;
        private NumericUpDown medQuest;
        private Panel panel1;
        private TextBox SuccessPercentTxtBox;
        private Label label3;
        private Label label4;
        private DateTimePicker dateTimeDay;
        private DateTimePicker StartExamTime;
        private Label label5;
        private Label label6;
        private DateTimePicker EndExamTime;
        private Button SubmitBtn;
    }
}