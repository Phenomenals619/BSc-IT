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
        int add, sub, mul, div;
        add = Convert.ToInt32(TextBox1.Text)+Convert.ToInt32(TextBox2.Text);
        sub = Convert.ToInt32(TextBox1.Text) - Convert.ToInt32(TextBox2.Text);
        mul = Convert.ToInt32(TextBox1.Text) * Convert.ToInt32(TextBox2.Text);
        div = Convert.ToInt32(TextBox1.Text) / Convert.ToInt32(TextBox2.Text);

        Label1.Text = add.ToString();
        Label2.Text = sub.ToString();




    }
}