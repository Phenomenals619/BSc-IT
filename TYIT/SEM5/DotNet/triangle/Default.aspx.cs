using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int row = Convert.ToInt32(TextBox1.Text);
        int num = 1;
        StringBuilder sb = new StringBuilder();
        for (int i = 1; i <= row; i++)
        {
            for (int j = 1; j <= i; j++)
            {
                sb.Append(num + " ");
                num++;

            }
            sb.Append("</br>");

        }
        Label1.Text = sb.ToString();
    }
}