using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ServerControlss
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = ListBox1.SelectedValue.ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedValue;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Font.Size =Convert.ToInt32( DropDownList2.SelectedValue);
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                Label2.Font.Underline = true;

            }
            else
            {
                Label2.Font.Underline = false;
            }
            if (CheckBox2.Checked)
            {
                Label2.Font.Bold = true;

            }
            else
            {
                Label2.Font.Bold = false;
            }
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked)
            {
                Label2.Font.Italic = true;

            }
            else
            {
                Label2.Font.Italic = false;
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Label2.ForeColor = Color.Red;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Label2.ForeColor = Color.Green;
        }
    }
}