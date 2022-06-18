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
    public partial class Index : System.Web.UI.Page
    
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
          

            string connectionString = @"Data Source=QUINTOS-PC;Initial Catalog=UserSignUpDB;Integrated Security=True";
         

            if (txtUsername.Text == "")
                lblErrorMessage.Text = "Please put a Username";

            else if (txtPassword.Text == "")
                lblErrorMessage.Text = "Please put a Password";

            else if (txtPassword.Text != txtConfirmPassword.Text)
                lblErrorMessage.Text = "Password Do Not Match";

            else
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {

                    SqlCommand SqlCMD = new SqlCommand(@"INSERT INTO [dbo].[UserSignUpForm]
           ([FirstName]
           ,[LastName]
           ,[Gender]
           ,[Email]
           ,[Course]
           ,[StudentYear]
           ,[Username]
           ,[Password])
     VALUES
           ('" + txtFirstName.Text + "', '" + txtLastName.Text + "', '" + ddlGender.SelectedItem.ToString() + "', '" + txtEmail.Text + "', '" + ddlCourse.SelectedItem.ToString() + "', '" + ddlStudentYear.SelectedItem.ToString() + "', '" + txtUsername.Text + "', '" + txtPassword.Text + "')", sqlCon);
                    sqlCon.Open();
                    SqlCMD.ExecuteNonQuery();
                    sqlCon.Close();
                    lblSuccessMessage.Text = "Register Successfully!";
                    Clear();

                    //REDIRECTING PAGE AFTER SELECTING COURSE
                    if (ddlCourse.Text == "BEEd")
                    {

                        Response.Redirect("BEEd.aspx");
                    }
                    else if (ddlCourse.Text == "BSEd")
                    {
                        Response.Redirect("BSEd.aspx");
                    }
                    else if (ddlCourse.Text == "BSBM")
                    {
                        Response.Redirect("BSBM.aspx");
                    }
                    else if (ddlCourse.Text == "BSIT")
                    {
                        Response.Redirect("BSIT.aspx");
                    }
                    else if (ddlCourse.Text == "BSCS")
                    {
                        Response.Redirect("BSCS.aspx");
                    }
                    else if (ddlCourse.Text == "BSIS")
                    {
                        Response.Redirect("BSIS.aspx");
                    }
                    else if (ddlCourse.Text == "BSOA")
                    {
                        Response.Redirect("BSOA.aspx");
                    }
                    else if (ddlCourse.Text == "BSPA")
                    {
                        Response.Redirect("BSPA.aspx");
                    }
                    else if (ddlCourse.Text == "BSEM")
                    {
                        Response.Redirect("BSEM.aspx");
                    }
                    else if (ddlCourse.Text == "BSCRIM")
                    {
                        Response.Redirect("BSCRIM.aspx");
                    }
                    else if (ddlCourse.Text == "BSPSYCH")
                    {
                        Response.Redirect("BSPSYCH.aspx");
                    }
                    else if (ddlCourse.Text == "BSCE")
                    {
                        Response.Redirect("BSCE.aspx");
                    }
                    else if (ddlCourse.Text == "BSIE")
                    {
                        Response.Redirect("BSIE.aspx");
                    }
                    else if (ddlCourse.Text == "BSME")
                    {
                        Response.Redirect("BSME.aspx");
                    }
                    else if (ddlCourse.Text == "BSHRM")
                    {
                        Response.Redirect("BSHRM.aspx");
                    }
                    else if (ddlCourse.Text == "BSTM")
                    {
                        Response.Redirect("BSTM.aspx");
                    }
                    else if (ddlCourse.Text == "BSTrM")
                    {
                        Response.Redirect("BSTrM.aspx");
                    }
                }
            }

          
        }

        //CLEAR FUNCTION AFTER SUBMITTING REGISTRATION
        void Clear()
        {
            txtFirstName.Text = txtLastName.Text = txtEmail.Text = txtUsername.Text = txtPassword.Text = txtConfirmPassword.Text = "";
            hfUserId.Value = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
        }
    }
}