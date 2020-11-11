using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Policy;
using System.Windows;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Data.OleDb;
using System.IO;

namespace CyberDaySystem
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get connection string from web.config file  
            string strcon = ConfigurationManager.ConnectionStrings["CyberDay"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
        }
        protected void btnCommit_Click(object sender, EventArgs e)
        {
            if (IsStudentDuplicate(txtStudentFN.Text, txtStudentLN.Text, txtAge.Text, txtNotes.Text, txtLunchTicket.Text))
            {
                // Check if the student exist after user input all the information in the webpage
                //System.Windows.MessageBox.Show("The Student has already exist");
                Response.Write("<script>alert('The Student has already exist');</script>");
                return;
            }

            string FirstName = HttpUtility.HtmlEncode(txtStudentFN.Text);
            string LastName = HttpUtility.HtmlEncode(txtStudentLN.Text);
            string Age = HttpUtility.HtmlEncode(txtAge.Text);
            string Notes = HttpUtility.HtmlEncode(txtNotes.Text);
            string LunchTicket = HttpUtility.HtmlEncode(txtLunchTicket.Text);
            int TeacherID = Convert.ToInt32(DropDownList1.SelectedValue);
            string ParentEmail = HttpUtility.HtmlEncode(txtparentEmail.Text);
            string ParentAttending = "";
            bool isChecked = rbtnYes.Checked;
            if (isChecked)
                ParentAttending = "Yes";
            else
                ParentAttending = "No";


            // Make sure none of the textboxes are blank before commit to the database
            if ((!string.IsNullOrEmpty(txtStudentFN.Text)) && (!string.IsNullOrEmpty(txtStudentLN.Text))
                && (!string.IsNullOrEmpty(txtAge.Text)) && (!string.IsNullOrEmpty(txtNotes.Text)) && (!string.IsNullOrEmpty(txtLunchTicket.Text)))
            {
                try
                {
                    // Retrieve the data and display a messagebox shows added successfully
                    Insetr_Student(FirstName, LastName, Age, Notes, LunchTicket, TeacherID, ParentAttending, ParentEmail);
                    //System.Windows.MessageBox.Show("OK! Added Student Successfully!");
                    Response.Write("<script>alert('OK! Added Student Successfully!');</script>");
                    string selectedValue = rdoParentSignature.SelectedValue;


                    if (rdoParentSignature.SelectedValue == "1")
                    {
                        MailMessage mail = new MailMessage();

                        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                        mail.From = new MailAddress("johnsmithtesting8901@gmail.com");
                        mail.To.Add(ParentEmail);
                        mail.Subject = "JMU CyberDay Photo Authorization Request";
                        mail.Body = "Hello, " +
                            "\n" +
                            "\nThank you for releasing your child's: " + FirstName + " " + LastName + " photo authorizaton Request. We will strive to make the event as productive as possible." +
                            "\n" +
                            "\nThank you,  " +
                            "\n" +
                            "\nThe JMU CyberDay Team";

                        SmtpServer.Port = 587;
                        SmtpServer.Credentials = new System.Net.NetworkCredential("johnsmithtesting8901@gmail.com", "hotWeather!!3952#?suN");
                        SmtpServer.EnableSsl = true;
                        SmtpServer.Send(mail);


                    }


                    if (rdoParentSignature.SelectedValue == "0")
                    {
                        MailMessage mail = new MailMessage();

                        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                        mail.From = new MailAddress("johnsmithtesting8901@gmail.com");
                        mail.To.Add(ParentEmail);
                        mail.Subject = "JMU CyberDay Photo Authorization Request";
                        mail.Body = "Hello, " +
                            "\n" +
                            "\nThis email is an acknowledgement that you did not authorize for your child's: " + FirstName + " " + LastName + " Photo Authorizaton Request. We understand your decision." +
                            "\n" +
                            "\nThank you ,  " +
                            "\n" +
                            "\nThe JMU CyberDay Team";

                        SmtpServer.Port = 587;
                        SmtpServer.Credentials = new System.Net.NetworkCredential("johnsmithtesting8901@gmail.com", "hotWeather!!3952#?suN");
                        SmtpServer.EnableSsl = true;
                        SmtpServer.Send(mail);


                    }

                }
                catch (SqlException ex)
                {
                    //System.Windows.MessageBox.Show("Warning!The Student has already exist!");
                    Response.Write("<script>alert('Warning!The Student has already exist!');</script>");

                }
            }
            else
            {
                //System.Windows.MessageBox.Show("There is textbox is empty!");
                Response.Write("<script>alert('There is textbox is empty!');</script>");

            }
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            // Outer Join SQL Query
            String sqlQuery = "SELECT Student.FirstName + ' ' + Student.LastName AS StudentName, Teacher.FirstName+ ' ' + Teacher.LastName as TeacherName, Student.Age, Student.Notes, Student.LunchTicket, Student.ParentAttending, Student.ParentEmail ";
            sqlQuery += "FROM Student FULL OUTER JOIN Teacher ";
            sqlQuery += "ON Student.TeacherID = Teacher.TeacherID ";

            //Get connection string from web.config file  
            string strcon = ConfigurationManager.ConnectionStrings["CyberDay"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, con);
            con.Open();
            DataTable dtForGridTable = new DataTable();
            sqlAdapter.Fill(dtForGridTable);

            getTeacherResult.DataSource = dtForGridTable;
            getTeacherResult.DataBind();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            // Clear the textbox after each insertion data
            txtStudentFN.Text = "";
            txtStudentLN.Text = "";
            txtAge.Text = "";
            txtNotes.Text = "";
            txtLunchTicket.Text = "";
            txtparentEmail.Text = "";
        }

        private void Insetr_Student(string FirstName, string LastName, string Age, string Notes, string LunchTicket, int TeacherID, string ParentAttending, string ParentEmail)
        {
            // Read the data from the database
            SqlCommand cmd = new SqlCommand();

            //Get connection string from web.config file  
            string strcon = ConfigurationManager.ConnectionStrings["CyberDay"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);

            con.Open();

            cmd.Connection = con;

            cmd.CommandText = "insert into Student (FirstName,LastName,Age,Notes,LunchTicket,TeacherID,ParentAttending, ParentEmail) values (@FirstName,@LastName,@Age,@Notes,@LunchTicket,@TeacherID,@ParentAttending,@ParentEmail)";

            cmd.Parameters.Add("@FirstName", SqlDbType.NVarChar).Value = FirstName;
            cmd.Parameters.Add("@LastName", SqlDbType.NVarChar).Value = LastName;
            cmd.Parameters.Add("@Age", SqlDbType.NVarChar).Value = Age;
            cmd.Parameters.Add("@Notes", SqlDbType.NVarChar).Value = Notes;
            cmd.Parameters.Add("@LunchTicket", SqlDbType.NVarChar).Value = LunchTicket;
            cmd.Parameters.Add("@TeacherID", SqlDbType.Int).Value = TeacherID;
            cmd.Parameters.Add("@ParentAttending", SqlDbType.NVarChar).Value = ParentAttending;
            cmd.Parameters.Add("@ParentEmail", SqlDbType.NVarChar).Value = ParentEmail;

            SqlDataReader sqlDataReader = cmd.ExecuteReader();

            con.Close();
        }

        private bool IsStudentDuplicate(string FirstName, string LastName, string Age, string Notes, string LunchTicket)
        {
            // Check if the system has the duplicate student information a
            String sqlQuery = "select * from Student where FirstName = ' + @FirstName + ' and LastName = ' + @LastName + ' and Age = ' + Age + ' and Notes = ' + @Notes +' and LunchTicket = ' + @LunchTicket + ' ";

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CyberDay"].ConnectionString);

            SqlCommand comm = new SqlCommand(sqlQuery, con);
            comm.Parameters.Add("@FirstName", SqlDbType.NVarChar).Value = FirstName.Trim();
            comm.Parameters.Add("@LastName", SqlDbType.NVarChar).Value = LastName.Trim();
            comm.Parameters.Add("@Age", SqlDbType.NVarChar).Value = Age.Trim();
            comm.Parameters.Add("@Notes", SqlDbType.NVarChar).Value = Notes.Trim();
            comm.Parameters.Add("@LunchTicket", SqlDbType.NVarChar).Value = LunchTicket.Trim();
            con.Open();
            comm.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = comm;
            DataTable dtForGridTable = new DataTable();
            da.Fill(dtForGridTable);

            con.Close();

            if (dtForGridTable.Rows.Count > 0)
                return true;
            else
                return false;
        }


 



        public static DataTable GetExcelDatatable(string fileUrl)
        {

            string cmdText = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileUrl + "; Extended Properties='Excel 12.0; HDR=Yes; IMEX=1'";
            System.Data.DataTable dt = null;

            OleDbConnection conn = new OleDbConnection(cmdText);
            try
            {
                if (conn.State == ConnectionState.Broken || conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                System.Data.DataTable schemaTable = conn.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                string strSql = "select * from [Sheet1$]";
                OleDbDataAdapter da = new OleDbDataAdapter(strSql, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                dt = ds.Tables[0]; ;
                return dt;
            }
            catch (Exception exc)
            {
                throw exc;
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }
        }

        public static bool SqlBulkCopyToDB(string savePath, string destinationTableName)
        {
            DataTable ds = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["CyberDay"].ConnectionString;
            using (System.Data.SqlClient.SqlBulkCopy bcp = new System.Data.SqlClient.SqlBulkCopy(connectionString))
            {

                ds = GetExcelDatatable(savePath);
                bcp.BatchSize = 100;
                bcp.NotifyAfter = 100;
                bcp.DestinationTableName = "Student";
                bcp.DestinationTableName = destinationTableName; //sql datatable name
                try
                {
                    string[] s = new string[7];
                    s[0] = "FirstName";
                    s[1] = "LastName";
                    s[2] = "Age";
                    s[3] = "Notes";
                    s[4] = "LunchTicket";
                    s[5] = "TeacherID";
                    s[6] = "ParentAttending";
                    s[7] = "ParentEmail";

                    for (int i = 0; i < ds.Columns.Count; ++i)
                    {
                        //string s = ds.Columns[i].ColumnName;
                        bcp.ColumnMappings.Add(ds.Columns[i].ColumnName, s[0]);
                        bcp.ColumnMappings.Add(ds.Columns[i].ColumnName, s[1]);
                        bcp.ColumnMappings.Add(ds.Columns[i].ColumnName, s[2]);
                        bcp.ColumnMappings.Add(ds.Columns[i].ColumnName, s[3]);
                        bcp.ColumnMappings.Add(ds.Columns[i].ColumnName, s[4]);
                        bcp.ColumnMappings.Add(ds.Columns[i].ColumnName, s[5]);
                        bcp.ColumnMappings.Add(ds.Columns[i].ColumnName, s[6]);
                        bcp.ColumnMappings.Add(ds.Columns[i].ColumnName, s[7]);

                    }
                    bcp.WriteToServer(ds);
                    return true;
                    //Response.Write("<script>alert('Excel upload successful!')</script>");   
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    return false;
                    //Response.Write("<script>alert('Excel upload failed!');</script>");
                }
            }
        }

        //protected void btnSelect_Click(object sender, EventArgs e)
        //{
        //    if (FileUpload1.HasFile == false)
        //    {
        //        Response.Write("<script>alert('Please select an excel file!')</script> ");
        //        return;
        //    }
        //    string IsXls = Path.GetExtension(FileUpload1.FileName).ToString().ToLower();
        //    if (IsXls != ".xlsx" && IsXls != ".xls")
        //    {
        //        Response.Write(FileUpload1.FileName);
        //        Response.Write("<script>alert('Please check your file type! Thanks! ')</script>");
        //        return;
        //    }
        //    string filename = FileUpload1.FileName;
        //    string savePath = Server.MapPath(("uploadfiles\\") + filename);
        //    Response.Write(savePath);
        //    //savePath ="E:\\Visual Studio 2013 Workspace\\fileUpLoad\\fileUpLoad\\uploadfiles\\201842314025658.xls"
        //    DataTable ds = new DataTable();
        //    FileUpload1.SaveAs(savePath);
        //    bool ok = SqlBulkCopyToDB(savePath, "Student");
        //    if (ok)
        //    {
        //        Response.Write("<script>alert('Excel upload successful!')</script>");
        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('Excel upload failed!');</script>");
        //    }
        //}


    }
}
        

     