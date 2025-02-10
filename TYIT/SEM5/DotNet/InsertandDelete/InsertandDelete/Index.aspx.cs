using System;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsertandDelete
{
    public partial class Index : System.Web.UI.Page
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void insertData_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            try
            {
                if (rollno.Text == "" || name.Text == "")
                {
                    message.Text = "Required all fields";
                    return;
                }
                else
                {
                    string query = "INSERT INTO student(name, id) VALUES(@name, @id)";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@name", name.Text);
                    cmd.Parameters.AddWithValue("@id", rollno.Text);

                    int result = cmd.ExecuteNonQuery();
                    if(result > 0) 
                    {
                        message.Text = "Data Inserted!";
                    }
                    else
                    {
                        message.Text = "Data Insertion Fail!";
                    }
                }
            }
            catch(Exception ex) 
            {
                message.Text = "" + ex;
            }
            finally
            {
                con.Close();
            }
            
        }

        protected void deleteData_Click(object sender, EventArgs e)
        {
            try
            {
                if (rollno.Text == "")
                {
                    message.Text = "Roll No Required";
                    return;
                }
                else
                {
                    SqlConnection con = new SqlConnection (conn);
                    con.Open();

                    string query = "DELETE FROM student WHERE id = @id";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@id", rollno.Text);
                    int result = cmd.ExecuteNonQuery ();
                    if (result > 0) 
                    {
                        message.Text = "Data Deleted!";
                    }
                    else
                    {
                        message.Text = "Data Deletion Fail! or Data not found";
                    }
                }
            }
            catch (Exception ex)
            {
                message.Text = "" + ex;
            }
            finally
            {

            }
        }
    }
}