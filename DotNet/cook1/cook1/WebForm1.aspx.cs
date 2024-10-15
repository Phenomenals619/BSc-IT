using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cook1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c1 = new HttpCookie("creator");

            c1.Value = "Ahmed";
            Response.Cookies.Add(c1);
            String author = Response.Cookies["creator"].Value;
            Label1.Text = author;

            Response.Cookies["comp"].Expires = DateTime.Now.AddDays(-1);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            //HttpCookie compCookie = Request.Cookies["comp"] ?? new HttpCookie("comp");

            if (apple.Selected)
                Response.Cookies["comp"]["apple"] = "apple";

            if (dell.Selected)
                Response.Cookies["comp"]["dell"] = "dell";

            if (lenovo.Selected)
                Response.Cookies["comp"]["lenovo"] = "lenovo";

            if (Request.Cookies["comp"].Values.ToString() != null)
            {
                if (Request.Cookies["comp"]["apple"] != null)
                    Label2.Text += Request.Cookies["comp"]["apple"]+" ";
                if (Request.Cookies["comp"]["dell"] != null)
                    Label2.Text += Request.Cookies["comp"]["dell"]+" ";
                if (Request.Cookies["comp"]["lenovo"] != null)
                    Label2.Text += Request.Cookies["comp"]["lenovo"] + " ";
            }
            else Label2.Text = "Please select your choice";
            Response.Cookies["comp"].Expires = DateTime.Now.AddDays(-1);


        }

      
    }
}