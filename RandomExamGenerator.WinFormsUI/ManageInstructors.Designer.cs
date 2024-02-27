using System.ComponentModel;

namespace RandomExamGenerator.WinFormsUI;

partial class ManageInstructors
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


        TitleLabel = new Label();
        searchBox = new TextBox();
        pictureBox1 = new PictureBox();
        InstructorListBox = new ListBox();
        InstructorGroupBox = new GroupBox();
        DeleteBtn = new Button();
        label5 = new Label();
        checkedListBox1 = new CheckedListBox();
        InstructorNameWarning = new Label();
        SaveBtn = new Button();
        RoleComboBox = new ComboBox();
        DepartmentComboBox = new ComboBox();
        GenderComboBox = new ComboBox();
        InstructorNameTextBox = new TextBox();
        label4 = new Label();
        label3 = new Label();
        label2 = new Label();
        label1 = new Label();
        AddBtn = new Button();
        ((ISupportInitialize)pictureBox1).BeginInit();
        InstructorGroupBox.SuspendLayout();
        SuspendLayout();
        // 
        // TitleLabel
        // 
        TitleLabel.AutoSize = true;
        TitleLabel.Font = new Font("Segoe UI", 16.2F, FontStyle.Regular, GraphicsUnit.Point, 0);
        TitleLabel.Location = new Point(245, 20);
        TitleLabel.Name = "TitleLabel";
        TitleLabel.Size = new Size(255, 38);
        TitleLabel.TabIndex = 0;
        TitleLabel.Text = "Manage Instructors";
        // 
        // searchBox
        // 
        searchBox.Location = new Point(32, 102);
        searchBox.Name = "searchBox";
        searchBox.Size = new Size(188, 27);
        searchBox.TabIndex = 1;
        // 
        // pictureBox1
        // 
        pictureBox1.Location = new Point(235, 92);
        pictureBox1.Name = "pictureBox1";
        pictureBox1.Size = new Size(36, 37);
        pictureBox1.Image = Image.FromFile("../../../Assets/magnifier.png");
        pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
        pictureBox1.TabIndex = 2;
        pictureBox1.TabStop = false;
        // 
        // InstructorListBox
        // 
        InstructorListBox.FormattingEnabled = true;
        InstructorListBox.Location = new Point(32, 159);
        InstructorListBox.Name = "InstructorListBox";
        InstructorListBox.Size = new Size(239, 244);
        InstructorListBox.TabIndex = 3;
        InstructorListBox.SelectedIndexChanged += InstructorListBox_SelectedIndexChanged;
        // 
        // InstructorGroupBox
        // 
        InstructorGroupBox.Controls.Add(DeleteBtn);
        InstructorGroupBox.Controls.Add(label5);
        InstructorGroupBox.Controls.Add(checkedListBox1);
        InstructorGroupBox.Controls.Add(InstructorNameWarning);
        InstructorGroupBox.Controls.Add(SaveBtn);
        InstructorGroupBox.Controls.Add(RoleComboBox);
        InstructorGroupBox.Controls.Add(DepartmentComboBox);
        InstructorGroupBox.Controls.Add(GenderComboBox);
        InstructorGroupBox.Controls.Add(InstructorNameTextBox);
        InstructorGroupBox.Controls.Add(label4);
        InstructorGroupBox.Controls.Add(label3);
        InstructorGroupBox.Controls.Add(label2);
        InstructorGroupBox.Controls.Add(label1);
        InstructorGroupBox.Location = new Point(318, 85);
        InstructorGroupBox.Name = "InstructorGroupBox";
        InstructorGroupBox.Size = new Size(711, 368);
        InstructorGroupBox.TabIndex = 4;
        InstructorGroupBox.TabStop = false;
        InstructorGroupBox.Text = "groupBox1";
        // 
        // DeleteBtn
        // 
        DeleteBtn.Location = new Point(512, 16);
        DeleteBtn.Name = "DeleteBtn";
        DeleteBtn.Size = new Size(170, 29);
        DeleteBtn.TabIndex = 13;
        DeleteBtn.Text = "Delete Instructor";
        DeleteBtn.UseVisualStyleBackColor = true;
        DeleteBtn.Click += DeleteBtn_Click;
        // 
        // label5
        // 
        label5.AutoSize = true;
        label5.Location = new Point(309, 74);
        label5.Name = "label5";
        label5.Size = new Size(61, 20);
        label5.TabIndex = 12;
        label5.Text = "Teaches";
        // 
        // checkedListBox1
        // 
        checkedListBox1.FormattingEnabled = true;
        checkedListBox1.Location = new Point(376, 74);
        checkedListBox1.Name = "checkedListBox1";
        checkedListBox1.Size = new Size(324, 246);
        checkedListBox1.TabIndex = 11;
        // 
        // InstructorNameWarning
        // 
        InstructorNameWarning.AutoSize = true;
        InstructorNameWarning.ForeColor = Color.Red;
        InstructorNameWarning.Location = new Point(142, 35);
        InstructorNameWarning.Name = "InstructorNameWarning";
        InstructorNameWarning.Size = new Size(167, 20);
        InstructorNameWarning.TabIndex = 10;
        InstructorNameWarning.Text = "Name Cannot Be Empty";
        // 
        // SaveBtn
        // 
        SaveBtn.Location = new Point(115, 296);
        SaveBtn.Name = "SaveBtn";
        SaveBtn.Size = new Size(170, 29);
        SaveBtn.TabIndex = 9;
        SaveBtn.Text = "Save Changes";
        SaveBtn.UseVisualStyleBackColor = true;
        SaveBtn.Click += button1_Click;
        // 
        // RoleComboBox
        // 
        RoleComboBox.FormattingEnabled = true;
        RoleComboBox.Location = new Point(115, 244);
        RoleComboBox.Name = "RoleComboBox";
        RoleComboBox.Size = new Size(174, 28);
        RoleComboBox.TabIndex = 8;
        // 
        // DepartmentComboBox
        // 
        DepartmentComboBox.FormattingEnabled = true;
        DepartmentComboBox.Location = new Point(115, 191);
        DepartmentComboBox.Name = "DepartmentComboBox";
        DepartmentComboBox.Size = new Size(174, 28);
        DepartmentComboBox.TabIndex = 7;
        // 
        // GenderComboBox
        // 
        GenderComboBox.FormattingEnabled = true;
        GenderComboBox.Location = new Point(115, 127);
        GenderComboBox.Name = "GenderComboBox";
        GenderComboBox.Size = new Size(174, 28);
        GenderComboBox.TabIndex = 6;
        // 
        // InstructorNameTextBox
        // 
        InstructorNameTextBox.Location = new Point(115, 74);
        InstructorNameTextBox.Name = "InstructorNameTextBox";
        InstructorNameTextBox.Size = new Size(174, 27);
        InstructorNameTextBox.TabIndex = 4;
        // 
        // label4
        // 
        label4.AutoSize = true;
        label4.Location = new Point(20, 252);
        label4.Name = "label4";
        label4.Size = new Size(39, 20);
        label4.TabIndex = 3;
        label4.Text = "Role";
        // 
        // label3
        // 
        label3.AutoSize = true;
        label3.Location = new Point(20, 194);
        label3.Name = "label3";
        label3.Size = new Size(89, 20);
        label3.TabIndex = 2;
        label3.Text = "Department";
        // 
        // label2
        // 
        label2.AutoSize = true;
        label2.Location = new Point(20, 130);
        label2.Name = "label2";
        label2.Size = new Size(57, 20);
        label2.TabIndex = 1;
        label2.Text = "Gender";
        // 
        // label1
        // 
        label1.AutoSize = true;
        label1.Location = new Point(20, 77);
        label1.Name = "label1";
        label1.Size = new Size(49, 20);
        label1.TabIndex = 0;
        label1.Text = "Name";
        // 
        // AddBtn
        // 
        AddBtn.Location = new Point(607, 20);
        AddBtn.Name = "AddBtn";
        AddBtn.Size = new Size(170, 29);
        AddBtn.TabIndex = 10;
        AddBtn.Text = "Add Instructor";
        AddBtn.UseVisualStyleBackColor = true;
        AddBtn.Click += AddBtn_Click;
        // 
        // ManageInstructors
        // 
        AutoScaleDimensions = new SizeF(8F, 20F);
        AutoScaleMode = AutoScaleMode.Font;
        ClientSize = new Size(1030, 487);
        Controls.Add(AddBtn);
        Controls.Add(InstructorGroupBox);
        Controls.Add(InstructorListBox);
        Controls.Add(pictureBox1);
        Controls.Add(searchBox);
        Controls.Add(TitleLabel);
        Name = "ManageInstructors";
        Text = "ManageInstructors";
        ((ISupportInitialize)pictureBox1).EndInit();
        InstructorGroupBox.ResumeLayout(false);
        InstructorGroupBox.PerformLayout();
        ResumeLayout(false);
        PerformLayout();
    }

    #endregion

    private Label TitleLabel;
    private TextBox searchBox;
    private PictureBox pictureBox1;
    private ListBox InstructorListBox;
    private GroupBox InstructorGroupBox;
    private ComboBox RoleComboBox;
    private ComboBox DepartmentComboBox;
    private ComboBox GenderComboBox;
    private TextBox InstructorNameTextBox;
    private Label label4;
    private Label label3;
    private Label label2;
    private Label label1;
    private Button SaveBtn;
    private Button AddBtn;
    private Label InstructorNameWarning;
    private Label label5;
    private CheckedListBox checkedListBox1;
    private Button DeleteBtn;
}