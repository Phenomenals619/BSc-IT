using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calci1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(txtFirstNumber.Text);
            double num2 = Convert.ToDouble(txtSecondNumber.Text);
            double result = num1 + num2;
            lblResult.Text = "Result: " + result.ToString();
        }

        protected void btnSubtract_Click(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(txtFirstNumber.Text);
            double num2 = Convert.ToDouble(txtSecondNumber.Text);
            double result = num1 - num2;
            lblResult.Text = "Result: " + result.ToString();
        }

        protected void btnMultiply_Click(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(txtFirstNumber.Text);
            double num2 = Convert.ToDouble(txtSecondNumber.Text);
            double result = num1 * num2;
            lblResult.Text = "Result: " + result.ToString();
        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(txtFirstNumber.Text);
            double num2 = Convert.ToDouble(txtSecondNumber.Text);

            if (num2 != 0)
            {
                double result = num1 / num2;
                lblResult.Text = "Result: " + result.ToString();
            }
            else
            {
                lblResult.Text = "Error: Division by zero is not allowed.";
            }
        }
    }
}