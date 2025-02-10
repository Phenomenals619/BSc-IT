using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public delegate int MathOperation(int a,int b);
public partial class _Default : System.Web.UI.Page
{
    int Add(int a, int b)
    {
        return a + b;
    }
    int Subtract(int a, int b)
    {
        return a - b;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int x = Convert.ToInt32(TextBox1.Text);
        int y = Convert.ToInt32(TextBox2.Text);

        MathOperation add = new MathOperation(Add);
        MathOperation sub = new MathOperation(Subtract);
        Label1.Text = add(x, y).ToString();
        Label2.Text = Subtract(x, y).ToString();
    }
}