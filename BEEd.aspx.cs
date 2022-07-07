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
    public partial class BEEd : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection sqlCon = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            show();
        }

        protected void ButtonPost_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=QUINTOS-PC;Initial Catalog=UserSignUpDB;Integrated Security=True";
            SqlConnection sqlCon = new SqlConnection(connectionString);
            sqlCon.Open();
            string InsertQuery = ("INSERT INTO [dbo].[CommentPost] " + " (UserName, Comment, Time) Values(@UserName, @Comment, @Time)");
            SqlCommand cmd = new SqlCommand(InsertQuery, sqlCon);
            cmd.Parameters.AddWithValue("@UserName", textUsername.Text);
            cmd.Parameters.AddWithValue("@Comment", textComment.Text);
            cmd.Parameters.AddWithValue("@Time", DateTime.Now);
            cmd.ExecuteNonQuery();
            Response.Redirect(Request.Url.AbsoluteUri);

        }

        protected void show()
        {
            string connectionString = @"Data Source=QUINTOS-PC;Initial Catalog=UserSignUpDB;Integrated Security=True";
            SqlConnection sqlCon = new SqlConnection(connectionString);
            sqlCon.Open();
            string InsertQuery = ("INSERT INTO [dbo].[CommentPost] " + " (UserName, Comment, Time) Values(@UserName, @Comment, @Time)");
            SqlCommand cmd = new SqlCommand(InsertQuery, sqlCon);
            cmd.CommandText = "Select * from CommentPost";
            cmd.Connection = sqlCon;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "CommentPost");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
}