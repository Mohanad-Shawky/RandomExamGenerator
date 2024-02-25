using RandomExamGenerator.BLL.Exceptions;
using RandomExamGenerator.BLL.Users;

namespace RandomExamGenerator.WinFormsUI
{
    public partial class Login : Form
    {
        private Point mouseLocation;

        private LoginSession? session;

        public Login()
        {
            InitializeComponent();
        }

        private void btnCloseApp_Click(object sender, EventArgs e)
        {
            Application.Exit();
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
                MessageBox.Show($"Login failed: You forgot to Yourself");
                return;
            }
            if (string.IsNullOrEmpty(txtUserName.Text.Trim()))
            {
                MessageBox.Show("You forgot the UserName");
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
                    MessageBox.Show($"UserID = {session.Account?.Id}");
                    LoginSession.Clean();
                }
                catch (UserNotFoundException)
                {
                    MessageBox.Show("Cannot find this user, Try Again!");
                }
                catch (DataCorruptionException)
                {
                    MessageBox.Show("Data Corrupted, M3lesh!");
                }
                catch (MultipleResultsWithIdentityException ex)
                {
                    MessageBox.Show(ex.Message);
                }
                catch (IntegrityException ex)
                {
                    MessageBox.Show(ex.Message);
                }
                catch
                {
                    MessageBox.Show("Something Went Wrong, Contact Your Provider");
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
            txtUserName.Text = string.Empty;
            txtUserName.Modified = false;

            txtPassword.Text = string.Empty;
            txtPassword.Modified = false;

            txtUserName.Focus();
        }
    }
}
