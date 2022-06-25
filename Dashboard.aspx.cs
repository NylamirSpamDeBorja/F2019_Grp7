using System;
using System.Collection.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.DataVisualization.Charting;

namespace Dashboard
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string query = string.Format("Select YrLevel, PopulationPerc from StudentPopulation where yrlevel <> '1st'", "PopulationPerc");
            DataTable dt = GetData(query);
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
            }
            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.Series[0].CharType = SeriesCharType.Pie;
            Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;

            Chart1.Legends[0].Enabled = true;

        }

        private static DataTable GetData(string query)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand(query);
            String constr = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            return dt;
        }

        protected void Chart1_Load(object sender, EventArgs e)
        {
        }
    }
}