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
        int a, b, c, i, n;
        a = 0;
        b = 1;
        Label1.Text = a.ToString() + b.ToString();
        n = Convert.ToInt32(TextBox1.Text);
        for (i = 1; i <= n; ++i)
        {
            c = a + b;
            Label1.Text = Label1.Text + c.ToString();
            a = b;
            b = c;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int n, i, s = 0; // s is used to track if the number is prime
        n = Convert.ToInt32(TextBox1.Text);

        if (n <= 1) // Check for numbers less than or equal to 1
        {
            s = 1; // Not prime
        }
        else
        {
            for (i = 2; i <= n / 2; ++i) // Check for factors from 2 to n/2
            {
                if (n % i == 0) // If n is divisible by i, it's not prime
                {
                    s = 1; // Not prime
                    break; // Exit the loop if a factor is found
                }
            }
        }

        if (s == 0)
            Label2.Text = "The given number is prime";
        else
            Label2.Text = "The given number is not prime";

    }
}
