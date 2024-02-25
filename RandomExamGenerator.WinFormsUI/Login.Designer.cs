namespace RandomExamGenerator.WinFormsUI
{
    partial class Login
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            lblLoginTitle = new Label();
            lblUserName = new Label();
            lblPassword = new Label();
            txtUserName = new TextBox();
            txtPassword = new TextBox();
            btnClear = new Button();
            btnLogin = new Button();
            btnCloseApp = new Button();
            btnMinimize = new Button();
            SuspendLayout();
            // 
            // lblLoginTitle
            // 
            lblLoginTitle.AutoSize = true;
            lblLoginTitle.Font = new Font("Segoe UI", 20F, FontStyle.Bold);
            lblLoginTitle.Location = new Point(305, 39);
            lblLoginTitle.Name = "lblLoginTitle";
            lblLoginTitle.Size = new Size(191, 46);
            lblLoginTitle.TabIndex = 0;
            lblLoginTitle.Text = "User Login";
            // 
            // lblUserName
            // 
            lblUserName.AutoSize = true;
            lblUserName.Font = new Font("Segoe UI", 13F, FontStyle.Bold);
            lblUserName.Location = new Point(202, 184);
            lblUserName.Name = "lblUserName";
            lblUserName.Size = new Size(127, 30);
            lblUserName.TabIndex = 1;
            lblUserName.Text = "User Name";
            // 
            // lblPassword
            // 
            lblPassword.AutoSize = true;
            lblPassword.Font = new Font("Segoe UI", 13F, FontStyle.Bold);
            lblPassword.Location = new Point(203, 253);
            lblPassword.Name = "lblPassword";
            lblPassword.Size = new Size(112, 30);
            lblPassword.TabIndex = 2;
            lblPassword.Text = "Password";
            // 
            // txtUserName
            // 
            txtUserName.Font = new Font("Segoe UI", 13F);
            txtUserName.Location = new Point(343, 181);
            txtUserName.Name = "txtUserName";
            txtUserName.Size = new Size(256, 36);
            txtUserName.TabIndex = 0;
            // 
            // txtPassword
            // 
            txtPassword.Font = new Font("Segoe UI", 13F);
            txtPassword.Location = new Point(342, 250);
            txtPassword.Name = "txtPassword";
            txtPassword.PasswordChar = '*';
            txtPassword.Size = new Size(256, 36);
            txtPassword.TabIndex = 1;
            // 
            // btnClear
            // 
            btnClear.BackColor = Color.DarkGray;
            btnClear.FlatStyle = FlatStyle.Flat;
            btnClear.Font = new Font("Segoe UI", 13F, FontStyle.Bold);
            btnClear.Location = new Point(677, 389);
            btnClear.Name = "btnClear";
            btnClear.Size = new Size(111, 49);
            btnClear.TabIndex = 3;
            btnClear.Text = "Clear";
            btnClear.UseVisualStyleBackColor = false;
            btnClear.Click += btnClear_Click;
            // 
            // btnLogin
            // 
            btnLogin.BackColor = Color.DodgerBlue;
            btnLogin.FlatAppearance.BorderColor = Color.Black;
            btnLogin.FlatAppearance.MouseDownBackColor = Color.LightSkyBlue;
            btnLogin.FlatAppearance.MouseOverBackColor = Color.RoyalBlue;
            btnLogin.FlatStyle = FlatStyle.Flat;
            btnLogin.Font = new Font("Segoe UI", 13F, FontStyle.Bold);
            btnLogin.ForeColor = Color.White;
            btnLogin.Location = new Point(329, 315);
            btnLogin.Name = "btnLogin";
            btnLogin.Size = new Size(143, 49);
            btnLogin.TabIndex = 2;
            btnLogin.Text = "Login";
            btnLogin.UseVisualStyleBackColor = false;
            btnLogin.Click += btnLogin_ClickAsync;
            // 
            // btnCloseApp
            // 
            btnCloseApp.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnCloseApp.BackColor = Color.Transparent;
            btnCloseApp.Cursor = Cursors.Hand;
            btnCloseApp.FlatAppearance.BorderSize = 0;
            btnCloseApp.FlatAppearance.MouseDownBackColor = Color.Red;
            btnCloseApp.FlatAppearance.MouseOverBackColor = Color.LightCoral;
            btnCloseApp.FlatStyle = FlatStyle.Flat;
            btnCloseApp.Font = new Font("Open Sans", 13.2000008F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            btnCloseApp.Location = new Point(753, 12);
            btnCloseApp.Margin = new Padding(0);
            btnCloseApp.Name = "btnCloseApp";
            btnCloseApp.Size = new Size(35, 35);
            btnCloseApp.TabIndex = 4;
            btnCloseApp.Text = "X";
            btnCloseApp.UseVisualStyleBackColor = false;
            btnCloseApp.Click += btnCloseApp_Click;
            btnCloseApp.MouseDown += btnCloseApp_MouseDown;
            btnCloseApp.MouseLeave += btnCloseApp_MouseLeave;
            // 
            // btnMinimize
            // 
            btnMinimize.BackColor = Color.Transparent;
            btnMinimize.Cursor = Cursors.Hand;
            btnMinimize.FlatAppearance.BorderSize = 0;
            btnMinimize.FlatAppearance.MouseDownBackColor = Color.SteelBlue;
            btnMinimize.FlatAppearance.MouseOverBackColor = Color.LightSteelBlue;
            btnMinimize.FlatStyle = FlatStyle.Flat;
            btnMinimize.Font = new Font("Wide Latin", 13F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            btnMinimize.Location = new Point(712, 9);
            btnMinimize.Margin = new Padding(0);
            btnMinimize.Name = "btnMinimize";
            btnMinimize.Size = new Size(35, 35);
            btnMinimize.TabIndex = 5;
            btnMinimize.Text = "_";
            btnMinimize.UseVisualStyleBackColor = false;
            btnMinimize.Click += btnMinimize_Click;
            // 
            // Login
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(btnMinimize);
            Controls.Add(btnCloseApp);
            Controls.Add(btnLogin);
            Controls.Add(btnClear);
            Controls.Add(txtPassword);
            Controls.Add(txtUserName);
            Controls.Add(lblPassword);
            Controls.Add(lblUserName);
            Controls.Add(lblLoginTitle);
            FormBorderStyle = FormBorderStyle.None;
            Name = "Login";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Login";
            MouseDown += Login_MouseDown;
            MouseMove += Login_MouseMove;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label lblLoginTitle;
        private Label lblUserName;
        private Label lblPassword;
        private TextBox txtUserName;
        private TextBox txtPassword;
        private Button btnClear;
        private Button btnLogin;
        private Button btnCloseApp;
        private Button btnMinimize;
    }
}
