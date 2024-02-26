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
            label1.Location = new Point(332, 9);
            label1.Name = "label1";
            label1.Size = new Size(107, 20);
            label1.TabIndex = 0;
            label1.Text = "Create Student";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(165, 64);
            label3.Name = "label3";
            label3.Size = new Size(82, 20);
            label3.TabIndex = 2;
            label3.Text = "User Name";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(497, 64);
            label4.Name = "label4";
            label4.Size = new Size(70, 20);
            label4.TabIndex = 3;
            label4.Text = "Password";
            // 
            // UserName
            // 
            UserName.Location = new Point(143, 99);
            UserName.Name = "UserName";
            UserName.Size = new Size(125, 27);
            UserName.TabIndex = 5;
            UserName.TextChanged += UserName_TextChanged;
            // 
            // CreatePassword
            // 
            CreatePassword.Location = new Point(451, 99);
            CreatePassword.Name = "CreatePassword";
            CreatePassword.Size = new Size(175, 27);
            CreatePassword.TabIndex = 6;
            CreatePassword.TextChanged += CreatePassword_TextChanged;
            // 
            // button1
            // 
            button1.Location = new Point(332, 165);
            button1.Name = "button1";
            button1.Size = new Size(94, 29);
            button1.TabIndex = 7;
            button1.Text = "insert Student";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // InsertStudent
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(724, 206);
            Controls.Add(button1);
            Controls.Add(CreatePassword);
            Controls.Add(UserName);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label1);
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