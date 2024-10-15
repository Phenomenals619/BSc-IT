using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADO1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
            totEmp();
        }
        protected void totEmp()
        {
            SqlConnection con = new SqlConnection(conn);
            try
            {
                string q = "select count(*) As 'totalEmp' from[dbo].[Employee]";
                SqlCommand cmd = new SqlCommand(q, con);
                con.Open();
                int empCount = Convert.ToInt32(cmd.ExecuteScalar());
                if (empCount > 0)
                {
                    lblTotal.Text = "Total Employees Present: " + empCount;
                }

            }catch(Exception e1){

            }
            finally
            {
                con.Close();
            }
        }
        protected void getData()
        {
            SqlConnection con = new SqlConnection(conn);
            try{
                con.Open();
                string q = "select * from Employee";
                SqlDataAdapter da = new SqlDataAdapter(q, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                int totEmp = ds.Tables[0].Rows.Count;
                //lblTotal.Text = "Total Employees:" + totEmp;
                GridView1.DataSource = ds;
                GridView1.DataBind();

            }catch(Exception e1)
            {
                Response.Write(e1);
            }
            finally
            {
                con.Close();
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conn);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Employee(name,course,gender) values (@Name, @Course,@Gender )", con);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Course", ddlCourse.Text);
                cmd.Parameters.AddWithValue("@Gender", rblGender.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Inserted successfully')</script>");
                    lblResult.Text = "<style='background-color:green';>Inserted Successfully</style>";
                }
                else
                {

                    Response.Write("<scrip>alert('Inserted failed')</script>");
                 

                }
            }
            catch (Exception e1)
            {
                Response.Write(e1);
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnFetch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conn);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Employee where id=@Id", con);
                cmd.Parameters.AddWithValue("@Id", txtId.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    txtName.Text = dr.GetString(1);
                    ddlCourse.Text = dr.GetString(2);
                    rblGender.Text = dr.GetString(3);
                }

            }
            catch (Exception e2)
            {
                Response.Write(e2);
            }
            finally {
                con.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conn);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update Employee set name=@Name,course=@Course,gender=@gender where id=@Id", con);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Course", ddlCourse.Text);
                cmd.Parameters.AddWithValue("@Gender", rblGender.Text);
                cmd.Parameters.AddWithValue("@Id", txtId.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Updated successfilly')</script>");
                }
                else
                {

                    Response.Write("<scrip>alert('Updated failed')</script>");

                }
            }
            catch (Exception e1)
            {
                Response.Write(e1);
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(conn);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from Employee where id=@Id", con);
            
                cmd.Parameters.AddWithValue("@Id", txtId.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('deleted successfilly')</script>");
                }
                else
                {

                    Response.Write("<scrip>alert('deleted failed')</script>");

                }
            }
            catch (Exception e1)
            {
                Response.Write(e1);
            }
            finally
            {
                con.Close();
            }
        }
    }
}
