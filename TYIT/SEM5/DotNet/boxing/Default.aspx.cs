using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int valueType = Convert.ToInt32(TextBox1.Text);
        object boxed = valueType;
        Label1.Text = "Boxed Value:" + boxed;

        int unboxed = (int)boxed;
        Label2.Text = "Unbox value:" + unboxed;
    }
}