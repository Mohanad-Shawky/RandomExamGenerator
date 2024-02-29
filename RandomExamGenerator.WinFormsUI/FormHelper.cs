using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RandomExamGenerator.BLL.Users;
using System.Security.Cryptography;

namespace RandomExamGenerator.WinFormsUI
{
    internal static class FormHelper
    {
        public static void Logout(Form form)
        {
            if (form != null)
            {
                LoginSession.Terminate();
                form.Dispose();
                form.Close();
                Login.Current?.Show();
            }
        }

    }
}
