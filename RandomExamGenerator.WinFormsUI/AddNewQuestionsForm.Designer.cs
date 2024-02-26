namespace RandomExamGenerator.WinFormsUI
{
    partial class AddNewQuestionsForm
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
            QuestionHeader = new RichTextBox();
            Choices = new Panel();
            AddChoice = new Button();
            txtChoiceText = new RichTextBox();
            checkedList_Choices = new CheckedListBox();
            PointsQuest = new TextBox();
            label2 = new Label();
            SaveQuestBtn = new Button();
            label3 = new Label();
            DifficltyQuest = new ComboBox();
            label5 = new Label();
            TypeQuestion = new ComboBox();
            label4 = new Label();
            Choices.SuspendLayout();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(272, 121);
            label1.Margin = new Padding(4, 0, 4, 0);
            label1.Name = "label1";
            label1.Size = new Size(167, 29);
            label1.TabIndex = 0;
            label1.Text = "Enter Question";
            // 
            // QuestionHeader
            // 
            QuestionHeader.Location = new Point(272, 153);
            QuestionHeader.Margin = new Padding(4, 3, 4, 3);
            QuestionHeader.Name = "QuestionHeader";
            QuestionHeader.Size = new Size(762, 92);
            QuestionHeader.TabIndex = 1;
            QuestionHeader.Text = "";
            // 
            // Choices
            // 
            Choices.Controls.Add(AddChoice);
            Choices.Controls.Add(txtChoiceText);
            Choices.Controls.Add(checkedList_Choices);
            Choices.Location = new Point(240, 295);
            Choices.Margin = new Padding(4, 3, 4, 3);
            Choices.Name = "Choices";
            Choices.Size = new Size(816, 465);
            Choices.TabIndex = 2;
            // 
            // AddChoice
            // 
            AddChoice.BackColor = Color.MediumAquamarine;
            AddChoice.DialogResult = DialogResult.OK;
            AddChoice.Location = new Point(622, 50);
            AddChoice.Margin = new Padding(4, 3, 4, 3);
            AddChoice.Name = "AddChoice";
            AddChoice.Size = new Size(146, 39);
            AddChoice.TabIndex = 8;
            AddChoice.Text = "AddChoice";
            AddChoice.UseVisualStyleBackColor = false;
            AddChoice.Click += AddChoiceBtnClick;
            // 
            // txtChoiceText
            // 
            txtChoiceText.Location = new Point(32, 29);
            txtChoiceText.Margin = new Padding(4, 3, 4, 3);
            txtChoiceText.Name = "txtChoiceText";
            txtChoiceText.Size = new Size(762, 75);
            txtChoiceText.TabIndex = 1;
            txtChoiceText.Text = "";
            // 
            // checkedList_Choices
            // 
            checkedList_Choices.FormattingEnabled = true;
            checkedList_Choices.Location = new Point(32, 150);
            checkedList_Choices.Margin = new Padding(4, 3, 4, 3);
            checkedList_Choices.Name = "checkedList_Choices";
            checkedList_Choices.Size = new Size(762, 276);
            checkedList_Choices.TabIndex = 0;
            // 
            // PointsQuest
            // 
            PointsQuest.AcceptsReturn = true;
            PointsQuest.Location = new Point(1274, 175);
            PointsQuest.Margin = new Padding(4, 3, 4, 3);
            PointsQuest.Name = "PointsQuest";
            PointsQuest.Size = new Size(120, 37);
            PointsQuest.TabIndex = 3;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(1153, 175);
            label2.Margin = new Padding(4, 0, 4, 0);
            label2.Name = "label2";
            label2.Size = new Size(77, 29);
            label2.TabIndex = 4;
            label2.Text = "Points";
            // 
            // SaveQuestBtn
            // 
            SaveQuestBtn.BackColor = Color.MediumAquamarine;
            SaveQuestBtn.Font = new Font("Candara", 12F, FontStyle.Bold);
            SaveQuestBtn.Location = new Point(240, 781);
            SaveQuestBtn.Margin = new Padding(4, 3, 4, 3);
            SaveQuestBtn.Name = "SaveQuestBtn";
            SaveQuestBtn.Size = new Size(339, 39);
            SaveQuestBtn.TabIndex = 7;
            SaveQuestBtn.Text = "Save Question";
            SaveQuestBtn.UseVisualStyleBackColor = false;
            SaveQuestBtn.Click += SaveQuestBtn_Click;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(1152, 370);
            label3.Margin = new Padding(4, 0, 4, 0);
            label3.Name = "label3";
            label3.Size = new Size(106, 29);
            label3.TabIndex = 8;
            label3.Text = "Difficulty";
            // 
            // DifficltyQuest
            // 
            DifficltyQuest.FormattingEnabled = true;
            DifficltyQuest.Items.AddRange(new object[] { "hard", "easy", "medium" });
            DifficltyQuest.Location = new Point(1274, 367);
            DifficltyQuest.Margin = new Padding(4, 3, 4, 3);
            DifficltyQuest.Name = "DifficltyQuest";
            DifficltyQuest.Size = new Size(120, 37);
            DifficltyQuest.TabIndex = 10;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(1153, 271);
            label5.Margin = new Padding(4, 0, 4, 0);
            label5.Name = "label5";
            label5.Size = new Size(62, 29);
            label5.TabIndex = 11;
            label5.Text = "Type";
            // 
            // TypeQuestion
            // 
            TypeQuestion.FormattingEnabled = true;
            TypeQuestion.Items.AddRange(new object[] { "tf", "smcq" });
            TypeQuestion.Location = new Point(1274, 263);
            TypeQuestion.Margin = new Padding(4, 3, 4, 3);
            TypeQuestion.Name = "TypeQuestion";
            TypeQuestion.Size = new Size(120, 37);
            TypeQuestion.TabIndex = 12;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Candara", 20F, FontStyle.Bold);
            label4.Location = new Point(485, 23);
            label4.Margin = new Padding(4, 0, 4, 0);
            label4.Name = "label4";
            label4.Size = new Size(349, 49);
            label4.TabIndex = 13;
            label4.Text = "Question Add Page";
            // 
            // AddNewQuestionsForm
            // 
            AutoScaleDimensions = new SizeF(13F, 29F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(1535, 845);
            Controls.Add(label4);
            Controls.Add(TypeQuestion);
            Controls.Add(label5);
            Controls.Add(DifficltyQuest);
            Controls.Add(label3);
            Controls.Add(SaveQuestBtn);
            Controls.Add(label2);
            Controls.Add(PointsQuest);
            Controls.Add(Choices);
            Controls.Add(QuestionHeader);
            Controls.Add(label1);
            Font = new Font("Candara", 12F, FontStyle.Bold);
            FormBorderStyle = FormBorderStyle.FixedDialog;
            Margin = new Padding(4, 3, 4, 3);
            Name = "AddNewQuestionsForm";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "QuestionsAdd";
            FormClosed += ClosingEvent;
            Choices.ResumeLayout(false);
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private RichTextBox QuestionHeader;
        private Panel Choices;
        private TextBox PointsQuest;
        private Label label2;
        private Button SaveQuestBtn;
        private CheckedListBox checkedList_Choices;
        private RichTextBox txtChoiceText;
        private Button AddChoice;
        private Label label3;
        private ComboBox DifficltyQuest;
        private Label label5;
        private ComboBox TypeQuestion;
        private Label label4;
    }
}