using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wwwroot_cplc_viewPayment : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {


    }


    public DataTable GetFeeslip()
    {
        DataTable dt = new DataTable();
        string Query = "[dbo].[GetFeeslip]";
        SqlDataAdapter da = new SqlDataAdapter();
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ToString();
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = Query;
                cmd.Parameters.AddWithValue("@code", code.Text);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = conn;
                da.SelectCommand = cmd;
                conn.Open();
                da.Fill(dt);
                conn.Close();
            }
        }
        return dt;
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        DataTable dt1 = new DataTable();
        dt1 = GetFeeslip();

        if (dt1.Rows.Count > 0)
        {
            GridView1.DataSource = dt1;
            GridView1.DataBind();
            //  decimal total = dt1.AsEnumerable().Sum(row => row.Field<decimal>("Amount"));
            GridView1.FooterRow.Cells[2].Text = "Total";
            GridView1.FooterRow.Cells[2].HorizontalAlign = HorizontalAlign.Right;
            GridView1.FooterRow.Cells[3].Text = String.Format("{0:f}", dt1.Compute("SUM(Amount)", string.Empty));

        }
    }
}