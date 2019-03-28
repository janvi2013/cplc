using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class exam_examlogin : System.Web.UI.Page
{
    Int32 time;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    DataTable DOBdt = new DataTable();
    SqlConnection con = new SqlConnection();
     
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

      

    }


    
    protected void submitexam_Click(object sender, EventArgs e)
    {
        
        Session["examtable"] = null;

       // String dob =  txtdob.Text;

        Int32 exam = drpcourse.SelectedIndex+1;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "getallexam";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.Add("@sid", SqlDbType.Int).Value = txtuser.Text;
        cmd.ExecuteNonQuery();
        cmd.Dispose();



        SqlDataAdapter adp = new SqlDataAdapter(cmd);
          

             adp.Fill(ds);
             dt=ds.Tables[exam];
             //DOBdt = ds.Tables[0];

            // String dobfinal = DOBdt.Rows[0][4].ToString();

             //String dobnew = dobfinal.Substring(dobfinal.Length - 4, 4);



                if (dt.Rows.Count > 0)
                 {
                     Session["examtable"] = dt;
                     time = 30;
                     Session["time"] = time;
                     Response.Redirect("onlinexam.aspx");
                 }
                 else
                 {
                     lblerror.Text = "Sorry, This Exam Is Not Available At This Time";
                 }

             
            
    }
    protected void ScriptManager1_Init(object sender, EventArgs e)
    {
        try
        {
            foreach (Control _ctrl in form.Controls)
            {

                if (_ctrl.GetType() == typeof(AjaxControlToolkit.ToolkitScriptManager))
                {
                   form.Controls.Remove(_ctrl);
                    break;
                };
            }
        }
        catch (Exception ex)
        {
        }
    }
    protected void drpcourse_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (drpcourse.SelectedItem.Text == "c")
        {



        }
        
    }
}