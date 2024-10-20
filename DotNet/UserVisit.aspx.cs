using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Extraz
{
    public partial class UserVisit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //ViewState["x"] =Convert.ToInt32( ViewState["x"]) + 1;
            //Label1.Text = ViewState["x"].ToString();

            Application["x"] = Convert.ToInt32(Application["x"]) + 1;
            Label1.Text = Application["x"].ToString();
        }
    }
}