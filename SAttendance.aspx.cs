using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = "Data Source=ALI\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True";
        string username = (string)Session["username"];
        string query1 = "SELECT distinct studentId,courseID FROM studies WHERE studentid = @username";
        string query2 = "select date,status from attendance WHERE studentID = @username AND courseId = @course";
        string course = "";
        string previouscourse = "";
        
        if (!IsPostBack)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                SqlCommand command1 = new SqlCommand(query1, connection);
                command1.Parameters.AddWithValue("@username", username);

                SqlDataReader reader1 = command1.ExecuteReader();

                DropDownList1.DataSource = reader1;
                DropDownList1.DataTextField = "courseid";
                DropDownList1.DataValueField = "courseid";
                DropDownList1.DataBind();

                reader1.Close();
                

                course = DropDownList1.SelectedValue;
                Session["coursereg"] = course;

                SqlCommand command2 = new SqlCommand(query2, connection);
                command2.Parameters.AddWithValue("@username", username);
                command2.Parameters.AddWithValue("@course", course);
                SqlDataReader reader2 = command2.ExecuteReader();
                DataTable dt2 = new DataTable();
                dt2.Load(reader2);
                GridView1.DataSource = dt2;
                GridView1.DataBind();
                connection.Close();
            }
        }
        else
        {
            previouscourse = (string)Session["coursereg"];
            course = DropDownList1.SelectedValue;

            if (course != previouscourse)
            {
                Session["coursereg"] = course;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    SqlCommand command2 = new SqlCommand(query2, connection);
                    command2.Parameters.AddWithValue("@username", username);
                    command2.Parameters.AddWithValue("@course", course);

                    SqlDataReader reader = command2.ExecuteReader();
                    DataTable dt2 = new DataTable();
                    dt2.Load(reader);
                    GridView1.DataSource = dt2;
                    GridView1.DataBind();
                    connection.Close();
                }
            } 
        }
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("SHome.aspx");

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}