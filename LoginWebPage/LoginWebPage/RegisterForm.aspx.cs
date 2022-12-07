using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginWebPage
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            if(PasswordRepeatTextBox.Text == "" || PasswordTextBox.Text == "" || UsernameTextBox.Text == "" || MailTextBox.Text == "" || PhoneTextBox.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "register_status", "<script>alert('Fill all fields!');</script>");
                return;
            }
            if(PasswordTextBox.Text != PasswordRepeatTextBox.Text)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "register_status", "<script>alert('Passwords do not match!');</script>");
                return;
            }
            if (Connection.Register(UsernameTextBox.Text, PasswordTextBox.Text, MailTextBox.Text, int.Parse(PhoneTextBox.Text)) == "0")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "register_status", "<script>alert('Username taken!');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "register_status", "<script>alert('Successfully registered!');</script>");
            }
        }
    }
}