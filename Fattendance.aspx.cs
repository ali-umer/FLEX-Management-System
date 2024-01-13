using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;

public partial class Fattendance : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = "Data Source=ALI\\SQLEXPRESS;Initial Catalog=FLEX;Integrated Security=True;Encrypt=False";
        string username = (string)Session["username"];
        string query1 = "SELECT distinct courseID FROM teaches WHERE facultyid = @username";
        string query2 = "select section from teaches WHERE facultyID = @username AND courseid = @course";
        string query3 = "select studentid as roll,name from studies join users on users.username = studies.studentid where courseid = @course AND section = @section";

        string course = "";
        string previouscourse = "";
        string section = "";
        string previoussection = "";

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
                Session["courseattendance"] = course;

                
                SqlCommand command2 = new SqlCommand(query2, connection);
                command2.Parameters.AddWithValue("@username", username);
                command2.Parameters.AddWithValue("@course", course);

                SqlDataReader reader2 = command2.ExecuteReader();

                DropDownList2.DataSource = reader2;
                DropDownList2.DataTextField = "section";
                DropDownList2.DataValueField = "section";
                DropDownList2.DataBind();
                reader2.Close();


                section= DropDownList2.SelectedValue;
                Session["sectionattendance"] = section;


                SqlCommand command3 = new SqlCommand(query3, connection);
                command3.Parameters.AddWithValue("@section", section);
                command3.Parameters.AddWithValue("@course", course);
                SqlDataReader reader3 = command3.ExecuteReader();
                DataTable dt1 = new DataTable();
                dt1.Load(reader3);
                GridView1.DataSource = dt1;
                GridView1.DataBind();
                connection.Close();


            }
        }
        else
        {
            previouscourse = (string)Session["courseattendance"];
            previoussection = (string)Session["sectionattendance"];
            course = DropDownList1.SelectedValue;
            section = DropDownList2.SelectedValue;
            
            if (previouscourse != course || section != previoussection )
            {
                Session["courseattendance"] = course;
                section=DropDownList2.SelectedValue;    
                Session["section"] = section;
                
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    SqlCommand command2 = new SqlCommand(query2, connection);
                    command2.Parameters.AddWithValue("@username", username);
                    command2.Parameters.AddWithValue("@course", course);
                    SqlDataReader reader2 = command2.ExecuteReader();

                    DropDownList2.DataSource = reader2;
                    DropDownList2.DataTextField = "section";
                    DropDownList2.DataValueField = "section";
                    DropDownList2.DataBind();
                    reader2.Close();
                    

                    SqlCommand command3 = new SqlCommand(query3, connection);
                    command3.Parameters.AddWithValue("@section", section);
                    command3.Parameters.AddWithValue("@course", course);
                    SqlDataReader reader3 = command3.ExecuteReader();
                    DataTable dt1 = new DataTable();
                    dt1.Load(reader3);
                    GridView1.DataSource = dt1;
                    GridView1.DataBind();

                    connection.Close();

                }
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("Fhome.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void Button2_Click(object sender, EventArgs e)
    {

        SqlConnection connection = new SqlConnection("Data Source=ALI\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        connection.Open();

        int priority = 0;
        string username = (string)Session["username"];
        string query_b = "select top 1 priority from usersforlog order by priority desc";
        SqlCommand command_b = new SqlCommand(query_b, connection);
        object result1 = command_b.ExecuteScalar();
        if (result1 != null && result1 != DBNull.Value)
        {
            priority = Convert.ToInt32(result1.ToString());
        }
        else
        {
            priority = 0;
        }


        priority++;
        string query_a = "insert into usersforlog values(@username,@priority)";

        using (SqlCommand command_a = new SqlCommand(query_a, connection))
        {
            command_a.Parameters.AddWithValue("@username", username);
            command_a.Parameters.AddWithValue("@priority", priority);


            int rowsAffected = command_a.ExecuteNonQuery();

        }



        DateTime selectedDate = calendar1.SelectedDate;
        string dateString = selectedDate.ToString("yyyy-MM-dd");
        string course = DropDownList1.SelectedValue;
        string section = DropDownList2.SelectedValue;
        
        foreach (GridViewRow row in GridView1.Rows)
        { 
            TextBox attendanceTextBox = (TextBox)row.FindControl("AttendanceTextBox");

            string attendanceValue = attendanceTextBox.Text;
            string rollNumber = row.Cells[1].Text;


            string query = "INSERT INTO attendance (studentID, date, section, facultyid, status, courseid) VALUES ('" + rollNumber + "', '" + dateString + "', '" + section + "', '" + username + "', '" + attendanceValue + "', '" + course + "')";
            SqlCommand comm = new SqlCommand(query, connection);
            comm.ExecuteNonQuery();
            comm.Dispose();


        }

        connection.Close();
    }


    protected void GeneratePDF_Click(object sender, EventArgs e)
    {
        // Create a new PDF document
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);

        // Open the PDF document
        pdfDoc.Open();

        // Add a title to the PDF document
        Paragraph title = new Paragraph("Attendance Report\n\n\n");
        title.Alignment = Element.ALIGN_CENTER;
        pdfDoc.Add(title);

        // Add a table to the PDF document
        PdfPTable pdfTable = new PdfPTable(3);
        pdfTable.WidthPercentage = 100;

        // Add table headers
        pdfTable.AddCell(new PdfPCell(new Phrase("Student ID")));
        pdfTable.AddCell(new PdfPCell(new Phrase("Student Name")));
        pdfTable.AddCell(new PdfPCell(new Phrase("Attendance Percentage")));

        // Retrieve attendance data from the database and add rows to the table
        string connectionString = "Data Source=ALI\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True";
        string section = DropDownList2.SelectedValue;
        string course = DropDownList1.SelectedValue;
        string query = "SELECT studentid, name ,(presents * 100 / total) AS percentage FROM (  SELECT studentID,name ,COUNT(date) AS total, SUM(CASE WHEN status = 'P' THEN 1 ELSE 0 END) AS presents FROM attendance  join Users on Users.username = attendance.studentid WHERE section = @section AND courseid = @course GROUP BY studentID,name) AS subquery";
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            using (SqlCommand comm = new SqlCommand(query, conn))
            {
                conn.Open();
                comm.Parameters.AddWithValue("@section", section);
                comm.Parameters.AddWithValue("@course", course);

                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    pdfTable.AddCell(new PdfPCell(new Phrase(reader["studentid"].ToString())));
                    pdfTable.AddCell(new PdfPCell(new Phrase(reader["name"].ToString())));
                    pdfTable.AddCell(new PdfPCell(new Phrase(reader["percentage"].ToString() + "%")));
                }
                conn.Close();
            }
        }

        pdfDoc.Add(pdfTable);

        pdfDoc.Close();

        Response.ContentType = "application/pdf";
        Response.AppendHeader("Content-Disposition", "attachment;filename=AttendanceReport.pdf");
        Response.Write(pdfDoc);
        Response.End();
    }





    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}