using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessManagement
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Request.QueryString["color"] != null)
            {
                string color = Request.QueryString["color"];
                bodyTag.Attributes.Add("style", $"background-color:{color};");
                lblQueryStringResult.Text = "Favorite color from Query String: " + Request.QueryString["color"];
            }
        }

        protected void btnViewState_Click(object sender, EventArgs e)
        {
            ViewState["Name"] = txtViewState.Text;
            lblViewStateResult.Text = "Name saved in ViewState: " + ViewState["Name"];
        }

        protected void btnSessionState_Click(object sender, EventArgs e)
        {
            Session["Age"] = txtSessionState.Text;
            lblSessionStateResult.Text = "Age saved in Session: " + Session["Age"];
        }

        protected void btnQueryString_Click(object sender, EventArgs e)
        {
            string color = txtQueryString.Text;
            Response.Redirect("WebForm1.aspx?color=" + color);
        }

        protected void btnCookie_Click(object sender, EventArgs e)
        {
            Response.Cookies["Email"].Value = txtCookie.Text;
            Response.Cookies["Email"].Expires = DateTime.Now.AddMinutes(5); // Cookie will expire in 5 minutes
            lblCookieResult.Text = "Email saved in Cookie: " + txtCookie.Text;
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Request.Cookies["Email"] != null)
            {
                lblCookieResult.Text = "Email retrieved from Cookie: " + Request.Cookies["Email"].Value;
            }
        }
    }
}