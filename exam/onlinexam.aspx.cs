using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;

public partial class exam_onlinexam : System.Web.UI.Page
{
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            BindGrid();



        }

    }

    public void BindGrid()
    {
        //SqlDataAdapter adp = new SqlDataAdapter("select * from exam_cplus", ConfigurationManager.ConnectionStrings["cn"].ToString());
        //adp.Fill(dt);



        if (Session["examtable"] != null)
        {
            var ds = Session["examtable"];
            grdquestions.DataSource = ds;
            grdquestions.DataBind();
        }
        else
        {
           // lblerror.Text = "Sorry, This Exam Is Not Available At This Time !";

        }



    }



    protected void grdquestions_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            RadioButtonList rdlstOptions = (RadioButtonList)e.Row.FindControl("rdlstOptions");
            HiddenField hdnquestionId = (HiddenField)e.Row.FindControl("hdnquestionId");
            if (rdlstOptions != null && hdnquestionId != null)
            {
                DataRow[] result = dt.Select("questionid=" + (Convert.ToInt32(hdnquestionId.Value)));
                DataView view = new DataView();
                view.Table = dt;
                view.RowFilter = "questionid=" + (Convert.ToInt32(hdnquestionId.Value));
                if (view.Table.Rows.Count > 0)
                {
                    DataTable dt1 = new DataTable();
                    dt1 = view.ToTable();
                }
            }
        }
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("examlogin.aspx");
        
        
    }


    

    protected void rdOption1_CheckedChanged(object sender, EventArgs e)
    {

     

    }


    protected void btnlogout_Click1(object sender, EventArgs e)
    {
        Response.Redirect("examlogin.aspx");
    }
}
