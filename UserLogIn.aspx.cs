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
                SqlCommand command = new SqlCommand("select count (*) from UserSignUpForm where Username = '" + txtUsername.Text + "' and Course = '" + txtCourse.Text + "'", connect);
                SqlDataAdapter sda = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                command.ExecuteNonQuery();

                if (dt.Rows.Count > 0)
                {
                    Session["Username"] = txtUsername.Text;

                    if (txtCourse.Text == "BEEd")
                    {

                        Response.Redirect("BEEd.aspx");
                    }
                    else if (txtCourse.Text == "BSEd")
                    {
                        Response.Redirect("BSEd.aspx");
                    }
                    else if (txtCourse.Text == "BSBA")
                    {
                        Response.Redirect("BSBA.aspx");
                    }
                    else if (txtCourse.Text == "BSBM")
                    {
                        Response.Redirect("BSBM.aspx");
                    }
                    else if (txtCourse.Text == "BSIT")
                    {
                        Response.Redirect("BSIT.aspx");
                    }
                    else if (txtCourse.Text == "BSCS")
                    {
                        Response.Redirect("BSCS.aspx");
                    }
                    else if (txtCourse.Text == "BSIS")
                    {
                        Response.Redirect("BSIS.aspx");
                    }
                    else if (txtCourse.Text == "BSOA")
                    {
                        Response.Redirect("BSOA.aspx");
                    }
                    else if (txtCourse.Text == "BSPA")
                    {
                        Response.Redirect("BSPA.aspx");
                    }
                    else if (txtCourse.Text == "BSEM")
                    {
                        Response.Redirect("BSEM.aspx");
                    }
                    else if (txtCourse.Text == "BSCRIM")
                    {
                        Response.Redirect("BSCRIM.aspx");
                    }
                    else if (txtCourse.Text == "BSPSYCH")
                    {
                        Response.Redirect("BSPSYCH.aspx");
                    }
                    else if (txtCourse.Text == "BSCE")
                    {
                        Response.Redirect("BSCE.aspx");
                    }
                    else if (txtCourse.Text == "BSIE")
                    {
                        Response.Redirect("BSIE.aspx");
                    }
                    else if (txtCourse.Text == "BSME")
                    {
                        Response.Redirect("BSME.aspx");
                    }
                    else if (txtCourse.Text == "BSHRM")
                    {
                        Response.Redirect("BSHRM.aspx");
                    }
                    else if (txtCourse.Text == "BSTM")
                    {
                        Response.Redirect("BSTM.aspx");
                    }
                    else if (txtCourse.Text == "BSTrM")
                    {
                        Response.Redirect("BSTrM.aspx");
                    }
                }

                else
                {
                    lblErrorMessage.Text = ("Please check your Username and Password");
                }
            }
            catch (Exception ex)
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