using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DisconnectedData
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["EmployeeDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                BindGridView();
            }
        }
        private void BindGridView()
        {

            SqlConnection conn = new SqlConnection(con);
            try
            {
             string query = "SELECT EmployeeID, FirstName, LastName, Title, Department FROM Employees";

                SqlDataAdapter da = new SqlDataAdapter(query, conn);

                DataSet ds = new DataSet();

                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {

                Response.Write("Error: " + ex.Message);
            }
        }

    }
}