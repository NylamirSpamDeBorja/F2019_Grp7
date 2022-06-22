using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebCommunity
{
    public partial class UserLogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Login_Click(object sender, EventArgs e)
        {

            string connectionString = @"Data Source=QUINTOS-PC;Initial Catalog=UserSignUpDB;Integrated Security=True";

            SqlConnection connect = new SqlConnection(connectionString);

            try
            {
                connect.Open();
                SqlCommand command = new SqlCommand("select count (*) from UserSignUpForm where username = '" + txtUsername.Text + "' and password = '" + txtPassword.Text + "'", connect);
                SqlDataAdapter dataadapter = new SqlDataAdapter(command);
                DataTable datatable = new DataTable();
                dataadapter.Fill(datatable);
                command.ExecuteNonQuery();

               if (datatable.Rows[0][0].ToString() == "1")
                {
                    Response.Redirect("BSCS.aspx");
                }
                          

                else
                {
                    lblErrorMessage.Text = ("Please check your Username and Password");
                }
            } catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        void Clear()
        {
           
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
        }
    }
}