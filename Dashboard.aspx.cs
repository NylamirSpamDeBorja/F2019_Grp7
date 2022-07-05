using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;

namespace WebCommunity
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindChart();
        }

        private void BindChart()
        {
            string connectionString = @"Data Source=QUINTOS-PC;Initial Catalog=UserSignUpDB;Integrated Security=True";
            SqlConnection sqlCon = new SqlConnection(connectionString);
            sqlCon.Open();
            SqlCommand CMD = new SqlCommand("GetStudentYearChart", sqlCon);
            CMD.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(CMD);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DataTable ChartData = ds.Tables[0];

            //storing total rows count to loop on each Record  
            string[] XPointMember = new string[ChartData.Rows.Count];
            int[] YPointMember = new int[ChartData.Rows.Count];

            for (int count = 0; count < ChartData.Rows.Count; count++)
            {
                //storing Values for X axis  
                XPointMember[count] = ChartData.Rows[count]["StudentYear"].ToString();
                //storing values for Y Axis  
                YPointMember[count] = Convert.ToInt32(ChartData.Rows[count]["Population"]);

            }
            //binding chart control  
            Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);

            //Setting width of line  
            Chart1.Series[0].BorderWidth = 10;

            //setting Chart type   
            Chart1.Series[0].ChartType = SeriesChartType.Pie;


            foreach (Series charts in Chart1.Series)
            {
                foreach (DataPoint point in charts.Points)
                {
                    switch (point.AxisLabel)
                    {
                        case "Q1":
                            point.Color = Color.YellowGreen;
                            break;
                        case "Q2":
                            point.Color = Color.Yellow;
                            break;
                        case "Q3":
                            point.Color = Color.Red;
                            break;
                        case "Q4":
                            point.Color = Color.SpringGreen;
                            break;
                        case "Q5":
                            point.Color = Color.Green;
                            break;
                    }
                    point.Label = string.Format("{0:0} - {1}", point.YValues[0], point.AxisLabel);

                }
            }

            sqlCon.Close();

        }
    }

}

