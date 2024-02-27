﻿using System.ComponentModel;

namespace RandomExamGenerator.WinFormsUI;

partial class AddInstructor
{
    /// <summary>
    /// Required designer variable.
    /// </summary>
    private IContainer components = null;

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
        InstructorNameWarning = new Label();
        AddInstructorBtn = new Button();
        RoleComboBox = new ComboBox();
        DepartmentComboBox = new ComboBox();
        GenderComboBox = new ComboBox();
        InstructorNameTextBox = new TextBox();
        label4 = new Label();
        label3 = new Label();
        label2 = new Label();
        label1 = new Label();
        label5 = new Label();
        GenderWarningLabel = new Label();
        DepartmentWarningLabel = new Label();
        RoleWarningLabel = new Label();
        label6 = new Label();
        checkedListBox1 = new CheckedListBox();
        PasswordWarningLabel = new Label();
        PasswordTextBox = new TextBox();
        label8 = new Label();
        SuspendLayout();
        // 
        // InstructorNameWarning
        // 
        InstructorNameWarning.AutoSize = true;
        InstructorNameWarning.ForeColor = Color.Red;
        InstructorNameWarning.Location = new Point(319, 55);
        InstructorNameWarning.Name = "InstructorNameWarning";
        InstructorNameWarning.Size = new Size(196, 20);
        InstructorNameWarning.TabIndex = 20;
        InstructorNameWarning.Text = "UserName Cannot Be Empty";
        // 
        // AddInstructorBtn
        // 
        AddInstructorBtn.Location = new Point(453, 396);
        AddInstructorBtn.Name = "AddInstructorBtn";
        AddInstructorBtn.Size = new Size(232, 42);
        AddInstructorBtn.TabIndex = 19;
        AddInstructorBtn.Text = "Add Instructor";
        AddInstructorBtn.UseVisualStyleBackColor = true;
        AddInstructorBtn.Click += AddInstructorBtn_Click;
        // 
        // RoleComboBox
        // 
        RoleComboBox.FormattingEnabled = true;
        RoleComboBox.Location = new Point(287, 334);
        RoleComboBox.Name = "RoleComboBox";
        RoleComboBox.Size = new Size(236, 28);
        RoleComboBox.TabIndex = 18;
        // 
        // DepartmentComboBox
        // 
        DepartmentComboBox.FormattingEnabled = true;
        DepartmentComboBox.Location = new Point(287, 276);
        DepartmentComboBox.Name = "DepartmentComboBox";
        DepartmentComboBox.Size = new Size(236, 28);
        DepartmentComboBox.TabIndex = 17;
        // 
        // GenderComboBox
        // 
        GenderComboBox.FormattingEnabled = true;
        GenderComboBox.Location = new Point(287, 216);
        GenderComboBox.Name = "GenderComboBox";
        GenderComboBox.Size = new Size(236, 28);
        GenderComboBox.TabIndex = 16;
        // 
        // InstructorNameTextBox
        // 
        InstructorNameTextBox.Location = new Point(287, 89);
        InstructorNameTextBox.Name = "InstructorNameTextBox";
        InstructorNameTextBox.Size = new Size(236, 27);
        InstructorNameTextBox.TabIndex = 15;
        // 
        // label4
        // 
        label4.AutoSize = true;
        label4.Location = new Point(192, 342);
        label4.Name = "label4";
        label4.Size = new Size(39, 20);
        label4.TabIndex = 14;
        label4.Text = "Role";
        // 
        // label3
        // 
        label3.AutoSize = true;
        label3.Location = new Point(192, 279);
        label3.Name = "label3";
        label3.Size = new Size(89, 20);
        label3.TabIndex = 13;
        label3.Text = "Department";
        // 
        // label2
        // 
        label2.AutoSize = true;
        label2.Location = new Point(192, 216);
        label2.Name = "label2";
        label2.Size = new Size(57, 20);
        label2.TabIndex = 12;
        label2.Text = "Gender";
        // 
        // label1
        // 
        label1.AutoSize = true;
        label1.Location = new Point(192, 92);
        label1.Name = "label1";
        label1.Size = new Size(75, 20);
        label1.TabIndex = 11;
        label1.Text = "Username";
        // 
        // label5
        // 
        label5.AutoSize = true;
        label5.Font = new Font("Segoe UI", 16.2F, FontStyle.Regular, GraphicsUnit.Point, 0);
        label5.Location = new Point(492, 9);
        label5.Name = "label5";
        label5.Size = new Size(193, 38);
        label5.TabIndex = 21;
        label5.Text = "Add Instructor";
        // 
        // GenderWarningLabel
        // 
        GenderWarningLabel.AutoSize = true;
        GenderWarningLabel.ForeColor = Color.Red;
        GenderWarningLabel.Location = new Point(319, 189);
        GenderWarningLabel.Name = "GenderWarningLabel";
        GenderWarningLabel.Size = new Size(175, 20);
        GenderWarningLabel.TabIndex = 22;
        GenderWarningLabel.Text = "Gender Cannot Be Empty";
        // 
        // DepartmentWarningLabel
        // 
        DepartmentWarningLabel.AutoSize = true;
        DepartmentWarningLabel.ForeColor = Color.Red;
        DepartmentWarningLabel.Location = new Point(310, 253);
        DepartmentWarningLabel.Name = "DepartmentWarningLabel";
        DepartmentWarningLabel.Size = new Size(207, 20);
        DepartmentWarningLabel.TabIndex = 23;
        DepartmentWarningLabel.Text = "Department Cannot Be Empty";
        // 
        // RoleWarningLabel
        // 
        RoleWarningLabel.AutoSize = true;
        RoleWarningLabel.ForeColor = Color.Red;
        RoleWarningLabel.Location = new Point(329, 311);
        RoleWarningLabel.Name = "RoleWarningLabel";
        RoleWarningLabel.Size = new Size(157, 20);
        RoleWarningLabel.TabIndex = 24;
        RoleWarningLabel.Text = "Role Cannot Be Empty";
        // 
        // label6
        // 
        label6.AutoSize = true;
        label6.Location = new Point(550, 96);
        label6.Name = "label6";
        label6.Size = new Size(61, 20);
        label6.TabIndex = 26;
        label6.Text = "Teaches";
        // 
        // checkedListBox1
        // 
        checkedListBox1.FormattingEnabled = true;
        checkedListBox1.Location = new Point(617, 96);
        checkedListBox1.Name = "checkedListBox1";
        checkedListBox1.Size = new Size(324, 246);
        checkedListBox1.TabIndex = 25;
        // 
        // PasswordWarningLabel
        // 
        PasswordWarningLabel.AutoSize = true;
        PasswordWarningLabel.ForeColor = Color.Red;
        PasswordWarningLabel.Location = new Point(306, 129);
        PasswordWarningLabel.Name = "PasswordWarningLabel";
        PasswordWarningLabel.Size = new Size(188, 20);
        PasswordWarningLabel.TabIndex = 29;
        PasswordWarningLabel.Text = "Password Cannot Be Empty";
        // 
        // PasswordTextBox
        // 
        PasswordTextBox.Location = new Point(287, 152);
        PasswordTextBox.Name = "PasswordTextBox";
        PasswordTextBox.Size = new Size(236, 27);
        PasswordTextBox.TabIndex = 28;
        // 
        // label8
        // 
        label8.AutoSize = true;
        label8.Location = new Point(192, 155);
        label8.Name = "label8";
        label8.Size = new Size(70, 20);
        label8.TabIndex = 27;
        label8.Text = "Password";
        // 
        // AddInstructor
        // 
        AutoScaleDimensions = new SizeF(8F, 20F);
        AutoScaleMode = AutoScaleMode.Font;
        ClientSize = new Size(1086, 450);
        Controls.Add(PasswordWarningLabel);
        Controls.Add(PasswordTextBox);
        Controls.Add(label8);
        Controls.Add(label6);
        Controls.Add(checkedListBox1);
        Controls.Add(RoleWarningLabel);
        Controls.Add(DepartmentWarningLabel);
        Controls.Add(GenderWarningLabel);
        Controls.Add(label5);
        Controls.Add(InstructorNameWarning);
        Controls.Add(AddInstructorBtn);
        Controls.Add(RoleComboBox);
        Controls.Add(DepartmentComboBox);
        Controls.Add(GenderComboBox);
        Controls.Add(InstructorNameTextBox);
        Controls.Add(label4);
        Controls.Add(label3);
        Controls.Add(label2);
        Controls.Add(label1);
        Name = "AddInstructor";
        Text = "AddInstructor";
        ResumeLayout(false);
        PerformLayout();
    }

    #endregion

    private Label InstructorNameWarning;
    private Button AddInstructorBtn;
    private ComboBox RoleComboBox;
    private ComboBox DepartmentComboBox;
    private ComboBox GenderComboBox;
    private TextBox InstructorNameTextBox;
    private Label label4;
    private Label label3;
    private Label label2;
    private Label label1;
    private Label label5;
    private Label GenderWarningLabel;
    private Label DepartmentWarningLabel;
    private Label RoleWarningLabel;
    private Label label6;
    private CheckedListBox checkedListBox1;
    private Label PasswordWarningLabel;
    private TextBox PasswordTextBox;
    private Label label8;
}