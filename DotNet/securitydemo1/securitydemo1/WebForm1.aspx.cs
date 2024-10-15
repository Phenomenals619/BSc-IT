using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace securitydemo1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the cookie exists
                if (Request.Cookies["Username"] != null)
                {
                    // If cookie exists, set the TextBox1 value to the username from the cookie
                    TextBox1.Text = Request.Cookies["Username"].Value;
                    CheckBox1.Checked = true; // Optionally check the checkbox
                }
            }
        }
        protected bool authenticate(String uname, String pass)
        {
            if (uname == "Ahmed")
            {
                if (pass == "ahmed123")
                    return true;
            }
            if (uname == "Ahmy")
            {
                if (pass == "ahmy123")
                    return true;
            }
            return false;
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(authenticate(TextBox1.Text, TextBox2.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
                Session["Username"] = TextBox1.Text;

                if (CheckBox1.Checked)
                {
                    HttpCookie usernameCookie = new HttpCookie("Username", TextBox1.Text);
                    usernameCookie.Expires = DateTime.Now.AddDays(30); // Set the cookie to expire in 30 days
                    Response.Cookies.Add(usernameCookie);
                }

                Response.Redirect("WebForm2.aspx");
            }
            else
            {
                //Response.Write("Invalid username or password");
                Label1.Text = "Invalid username or password";
            }
        }
    }
}