using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validations
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Perform server-side validation
            if (Page.IsValid)
            {
                // Handle successful form submission
                // Save data or display a success message
                Response.Write("<script>alert('Registration successful!');</script>");
            }
        }
    }
}