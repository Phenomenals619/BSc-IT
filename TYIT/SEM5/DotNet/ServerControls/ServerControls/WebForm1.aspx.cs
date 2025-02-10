using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ServerControls
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlColor.SelectedIndex = 0;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string hobbies = "";
            foreach (ListItem item in cblHobbies.Items)
            {
                if (item.Selected)
                {
                    hobbies += item.Text + ", ";
                }
            }

            string gender = rblGender.SelectedItem.Text;

            lblMessage.Text = "Name: " + txtName.Text + "<br>Color: " + ddlColor.SelectedItem.Text + "<br>Hobbies: " + hobbies + "<br>Gender: " + gender;

        }
        protected void txtName_TextChanged(object sender, EventArgs e)
        {
            lblMessage.Text = "You entered: " + txtName.Text;
        }

        protected void ddlColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMessage.Text = "You selected: " + ddlColor.SelectedItem.Text;
        }

       
    }

}
