namespace RandomExamGenerator.WinFormsUI
{
    partial class InsertStudent
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
            label3 = new Label();
            label4 = new Label();
            UserName = new TextBox();
            CreatePassword = new TextBox();
            button1 = new Button();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI Black", 16.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.Location = new Point(233, 9);
            label1.Name = "label1";
            label1.Size = new Size(173, 30);
            label1.TabIndex = 0;
            label1.Text = "Create Student";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(118, 48);
            label3.Name = "label3";
            label3.Size = new Size(65, 15);
            label3.TabIndex = 2;
            label3.Text = "User Name";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(435, 48);
            label4.Name = "label4";
            label4.Size = new Size(57, 15);
            label4.TabIndex = 3;
            label4.Text = "Password";
            // 
            // UserName
            // 
            UserName.Location = new Point(94, 74);
            UserName.Margin = new Padding(3, 2, 3, 2);
            UserName.Name = "UserName";
            UserName.Size = new Size(110, 23);
            UserName.TabIndex = 5;
            UserName.TextChanged += UserName_TextChanged;
            // 
            // CreatePassword
            // 
            CreatePassword.Location = new Point(388, 74);
            CreatePassword.Margin = new Padding(3, 2, 3, 2);
            CreatePassword.Name = "CreatePassword";
            CreatePassword.Size = new Size(154, 23);
            CreatePassword.TabIndex = 6;
            CreatePassword.TextChanged += CreatePassword_TextChanged;
            // 
            // button1
            // 
            button1.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            button1.BackColor = Color.DodgerBlue;
            button1.FlatStyle = FlatStyle.Popup;
            button1.Font = new Font("Segoe UI", 13.8F, FontStyle.Bold, GraphicsUnit.Point, 0);
            button1.Location = new Point(274, 109);
            button1.Margin = new Padding(3, 2, 3, 2);
            button1.Name = "button1";
            button1.Size = new Size(99, 34);
            button1.TabIndex = 7;
            button1.Text = "insert Student";
            button1.UseVisualStyleBackColor = false;
            button1.Click += button1_Click;
            // 
            // InsertStudent
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(634, 154);
            Controls.Add(button1);
            Controls.Add(CreatePassword);
            Controls.Add(UserName);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label1);
            FormBorderStyle = FormBorderStyle.Fixed3D;
            Margin = new Padding(3, 2, 3, 2);
            MaximizeBox = false;
            MinimizeBox = false;
            Name = "InsertStudent";
            Text = "InsertStudent";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Label label3;
        private Label label4;
        private TextBox UserName;
        private TextBox CreatePassword;
        private Button button1;
    }
}