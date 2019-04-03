using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;
using System.Web.Script.Serialization;
using nscomputerpoint;


public partial class exams_Default : System.Web.UI.Page
{
    DataTable dt = new DataTable();

    String username = string.Empty;
    nscomputerpoint.clscomputerpoint obj = new nscomputerpoint.clscomputerpoint();
    nscomputerpoint.clsstudentadmissionprp objprp = new nscomputerpoint.clsstudentadmissionprp();
    DataTable examlogin = new DataTable();


    protected void Page_Load(object sender, EventArgs e)
    {

        
        if (HttpContext.Current.Session["examtable"] != null)
        {

             

            DataTable dt = HttpContext.Current.Session["examtable"] as DataTable;
            QuestionsCountLabel.InnerText = Convert.ToString(dt.Rows.Count);
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }

    [WebMethod(enableSession: true)]
    public static string GetData()
    {
        DataTable dt = HttpContext.Current.Session["examtable"] as DataTable;
        if (HttpContext.Current.Session["examtable"] != null)
        {
            List<Exams> list = new List<Exams>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Exams exam = new Exams();
                exam.QuestionId = Convert.ToInt32(dt.Rows[i]["QuestionId"]);
                exam.Question = dt.Rows[i]["Question"].ToString();
                exam.Option1 = dt.Rows[i]["Option1"].ToString();
                exam.Option2 = dt.Rows[i]["Option2"].ToString();
                exam.Option3 = dt.Rows[i]["Option3"].ToString();
                exam.Option4 = dt.Rows[i]["Option4"].ToString();
                exam.QuestionAnswer = dt.Rows[i]["QuestionAnswer"].ToString();
                list.Add(exam);
            }



            //if (HttpContext.Current.Session["examtable"] != null)
            //{
            //}
            //else
            //{
            //}


            string myJsonString = (new JavaScriptSerializer()).Serialize(list);
            return myJsonString;

        }
        else
        {
            return null;
        }

    }




    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/exams/login.aspx");
    }
}