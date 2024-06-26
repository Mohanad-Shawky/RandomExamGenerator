using RandomExamGenerator.BLL.Enums;
using RandomExamGenerator.BLL.Exceptions;
using RandomExamGenerator.BLL.Users;

namespace RandomExamGenerator.WinFormsUI
{
    public partial class Login : Form
    {
        public static Login? Current { get; set; }

        private Point mouseLocation;

        private LoginSession? session;

        private StudentCourses? studentCourses;
        private InstructorView? instructorView;

        public Login()
        {
            InitializeComponent();
        }

        private void btnCloseApp_Click(object sender, EventArgs e)
        {
            session = LoginSession.GetSession();
            if(session == null)
            {
                Application.Exit();
            }
            else
            {
                var answer = MessageBox.Show(this, "Are you sure you want to logout and close?", "Logout?", MessageBoxButtons.YesNo, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2);
                if(answer == DialogResult.Yes)
                {
                    LoginSession.Terminate();
                    session = null;
                    studentCourses = null;
                    Application.Exit();
                }
            }
        }

        private void btnCloseApp_MouseDown(object sender, MouseEventArgs e)
        {
            btnCloseApp.ForeColor = Color.White;
        }

        private void btnCloseApp_MouseLeave(object sender, EventArgs e)
        {
            btnCloseApp.ForeColor = Color.Black;
        }

        private void Login_MouseDown(object sender, MouseEventArgs e)
        {
            mouseLocation = new Point(-e.X, -e.Y);
        }

        private void Login_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                Point mousePose = Control.MousePosition;
                mousePose.Offset(mouseLocation);
                Location = mousePose;
            }
        }

        private void btnMinimize_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private async void btnLogin_ClickAsync(object sender, EventArgs e)
        {
            Cursor = Cursors.WaitCursor;

            if (string.IsNullOrEmpty(txtUserName.Text.Trim()) && string.IsNullOrEmpty(txtPassword.Text))
            {
                MessageBox.Show($"Login failed: You forgot to Enter both the User Name and Password");
                return;
            }
            if (string.IsNullOrEmpty(txtUserName.Text.Trim()))
            {
                MessageBox.Show($"Login failed: You forgot the UserName");
                return;
            }

            if (string.IsNullOrEmpty(txtPassword.Text))
            {
                MessageBox.Show($"Login failed: You forgot the password");
                return;
            }

            if (txtUserName.Text.Trim().Length > 0 && txtPassword.Text.Length > 0)
            {
                try
                {
                    session = await LoginSession.LoginAsync(txtUserName.Text.Trim(), txtPassword.Text.Trim());
                    MessageBox.Show($"Successfully Logged In As {session.GetSessionUserType().ToString()} {session.Account?.UserName}", "Logged In", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    if (session.GetSessionUserType() == SessionUserType.Student)
                    {
                        LoginSession.Clean();
                        // TODO: Redirect to student profile
                        Hide();
                        studentCourses = new StudentCourses();
                        studentCourses.Show();
                    }
                    else if (session.GetSessionUserType() == SessionUserType.Instructor)
                    {
                        LoginSession.Clean();
                        Hide();
                        instructorView = new(session.Account.Id);
                        instructorView.Show();
                    }
                    else
                    {
                        MessageBox.Show("Something went wrong, Please Try Again!", "Error", MessageBoxButtons.RetryCancel, MessageBoxIcon.Error);
                        LoginSession.Terminate();
                        ClearInputs();
                    }
                }
                catch (UserNotFoundException)
                {
                    MessageBox.Show("Cannot find this user, Try Again!", "Error", MessageBoxButtons.RetryCancel, MessageBoxIcon.Error);
                }
                catch (DataCorruptionException)
                {
                    MessageBox.Show("Data corrupted, contact your Instructor!", "Error", MessageBoxButtons.RetryCancel, MessageBoxIcon.Error);
                }
                catch (MultipleResultsWithIdentityException)
                {
                    MessageBox.Show("Ambiguous User Credentials!", "Error", MessageBoxButtons.RetryCancel, MessageBoxIcon.Error);
                }
                catch (IntegrityException)
                {
                    MessageBox.Show("Looks like there is no student profile for this user!", "Error", MessageBoxButtons.RetryCancel, MessageBoxIcon.Error);
                }
                catch
                {
                    MessageBox.Show("Something Went Wrong, Contact Your Instructor", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    Application.Exit();
                }
                finally
                {
                    Cursor = Cursors.Default;
                    // redirect to the next page/form
                }
            }
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearInputs();
        }
        private void ClearInputs()
        {
            txtUserName.Text = string.Empty;
            txtUserName.Modified = false;

            txtPassword.Text = string.Empty;
            txtPassword.Modified = false;

            txtUserName.Focus();
        }
    }
}
