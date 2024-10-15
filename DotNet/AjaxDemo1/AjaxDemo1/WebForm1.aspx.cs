using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxDemo1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CurrentTimeLabel.Text = $"Current Time: {DateTime.Now.ToLongTimeString()}";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Set the result label to greet the user
            ResultLabel.Text = $"Hello, {TextBox1.Text}!";
        }
    }
}