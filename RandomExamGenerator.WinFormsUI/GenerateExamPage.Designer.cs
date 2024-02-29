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
            EasyQuestions.Location = new Point(171, 131);
            EasyQuestions.Margin = new Padding(2);
            EasyQuestions.Name = "EasyQuestions";
            EasyQuestions.Size = new Size(126, 23);
            EasyQuestions.TabIndex = 1;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(111, 219);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(0, 15);
            label1.TabIndex = 2;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(44, 132);
            label2.Margin = new Padding(2, 0, 2, 0);
            label2.Name = "label2";
            label2.Size = new Size(86, 15);
            label2.TabIndex = 3;
            label2.Text = "Easy Questions";
            // 
            // HardQuestions
            // 
            HardQuestions.AutoSize = true;
            HardQuestions.Location = new Point(44, 164);
            HardQuestions.Margin = new Padding(2, 0, 2, 0);
            HardQuestions.Name = "HardQuestions";
            HardQuestions.Size = new Size(89, 15);
            HardQuestions.TabIndex = 4;
            HardQuestions.Text = "Hard Questions";
            // 
            // hardQuestion
            // 
            hardQuestion.Location = new Point(171, 164);
            hardQuestion.Margin = new Padding(2);
            hardQuestion.Name = "hardQuestion";
            hardQuestion.Size = new Size(126, 23);
            hardQuestion.TabIndex = 5;
            // 
            // MeduimQuestion
            // 
            MeduimQuestion.AutoSize = true;
            MeduimQuestion.Location = new Point(44, 196);
            MeduimQuestion.Margin = new Padding(2, 0, 2, 0);
            MeduimQuestion.Name = "MeduimQuestion";
            MeduimQuestion.Size = new Size(100, 15);
            MeduimQuestion.TabIndex = 6;
            MeduimQuestion.Text = "MeduimQuestion";
            // 
            // medQuest
            // 
            medQuest.Location = new Point(171, 196);
            medQuest.Margin = new Padding(2);
            medQuest.Name = "medQuest";
            medQuest.Size = new Size(126, 23);
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
            panel1.Location = new Point(67, 51);
            panel1.Margin = new Padding(2);
            panel1.Name = "panel1";
            panel1.Size = new Size(703, 287);
            panel1.TabIndex = 8;
            // 
            // SubmitBtn
            // 
            SubmitBtn.BackColor = Color.DodgerBlue;
            SubmitBtn.Font = new Font("Segoe UI Emoji", 11.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            SubmitBtn.ForeColor = Color.White;
            SubmitBtn.Location = new Point(449, 209);
            SubmitBtn.Margin = new Padding(2);
            SubmitBtn.Name = "SubmitBtn";
            SubmitBtn.Size = new Size(127, 39);
            SubmitBtn.TabIndex = 16;
            SubmitBtn.Text = "Submit";
            SubmitBtn.UseVisualStyleBackColor = false;
            SubmitBtn.Click += Submit_Click;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(364, 168);
            label6.Margin = new Padding(2, 0, 2, 0);
            label6.Name = "label6";
            label6.Size = new Size(27, 15);
            label6.TabIndex = 15;
            label6.Text = "End";
            // 
            // EndExamTime
            // 
            EndExamTime.Format = DateTimePickerFormat.Time;
            EndExamTime.Location = new Point(448, 165);
            EndExamTime.Margin = new Padding(2);
            EndExamTime.Name = "EndExamTime";
            EndExamTime.Size = new Size(128, 23);
            EndExamTime.TabIndex = 14;
            EndExamTime.Value = new DateTime(2024, 2, 24, 0, 0, 0, 0);
            // 
            // StartExamTime
            // 
            StartExamTime.Format = DateTimePickerFormat.Time;
            StartExamTime.Location = new Point(448, 127);
            StartExamTime.Margin = new Padding(2);
            StartExamTime.Name = "StartExamTime";
            StartExamTime.Size = new Size(128, 23);
            StartExamTime.TabIndex = 13;
            StartExamTime.Value = new DateTime(2024, 2, 24, 0, 0, 0, 0);
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(364, 131);
            label5.Margin = new Padding(2, 0, 2, 0);
            label5.Name = "label5";
            label5.Size = new Size(31, 15);
            label5.TabIndex = 12;
            label5.Text = "Start";
            // 
            // dateTimeDay
            // 
            dateTimeDay.Format = DateTimePickerFormat.Short;
            dateTimeDay.Location = new Point(448, 89);
            dateTimeDay.Margin = new Padding(2);
            dateTimeDay.Name = "dateTimeDay";
            dateTimeDay.Size = new Size(128, 23);
            dateTimeDay.TabIndex = 11;
            dateTimeDay.Value = new DateTime(2024, 2, 28, 0, 0, 0, 0);
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(364, 92);
            label4.Margin = new Padding(2, 0, 2, 0);
            label4.Name = "label4";
            label4.Size = new Size(27, 15);
            label4.TabIndex = 10;
            label4.Text = "Day";
            // 
            // SuccessPercentTxtBox
            // 
            SuccessPercentTxtBox.Location = new Point(171, 89);
            SuccessPercentTxtBox.Margin = new Padding(2);
            SuccessPercentTxtBox.Name = "SuccessPercentTxtBox";
            SuccessPercentTxtBox.Size = new Size(129, 23);
            SuccessPercentTxtBox.TabIndex = 9;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(44, 89);
            label3.Margin = new Padding(2, 0, 2, 0);
            label3.Name = "label3";
            label3.Size = new Size(107, 15);
            label3.TabIndex = 8;
            label3.Text = "SuccessPercentage";
            // 
            // GenerateExamPage
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = SystemColors.Control;
            ClientSize = new Size(881, 392);
            Controls.Add(panel1);
            Controls.Add(label1);
            FormBorderStyle = FormBorderStyle.FixedDialog;
            Margin = new Padding(2);
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