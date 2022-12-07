using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginWebPage
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SignInButton_Click(object sender, EventArgs e)
        {
            if (PasswordTextBox.Text == "" || UsernameTextBox.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "register_status", "<script>alert('Fill all fields!');</script>");
                return;
            }

            if (Connection.Login(UsernameTextBox.Text, PasswordTextBox.Text) == "1")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "login_status", "<script>alert('Successful login!');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "login_status", "<script>alert('Unuccessful login!');</script>");
            }
        }
    }
}