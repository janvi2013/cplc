using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;
using System.Web.Script.Serialization;
using nscomputerpoint;
using System.Data.SqlClient;
using System.Configuration;


public partial class exams_Default : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DataTable dtquestions = new DataTable();

    String username = string.Empty;
     
    nscomputerpoint.clscomputerpoint obj = new nscomputerpoint.clscomputerpoint();
    nscomputerpoint.clsstudentadmissionprp objprp = new nscomputerpoint.clsstudentadmissionprp();
    nscomputerpoint.clsExamLoginprp examloingprp = new nscomputerpoint.clsExamLoginprp();
    DataTable examlogin = new DataTable();
    SqlConnection con = new SqlConnection();
    Int32 id;
    String name,fathername,address;
    String dob;
    String exam, currentdate;
    Int32 obtainedmarks, totalmarks;





    protected void Page_Load(object sender, EventArgs e)
    {

        form1.Action = Request.RawUrl;
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if(con.State==ConnectionState.Closed)
        {
            con.Open();
        }
        
        if (HttpContext.Current.Session["examtable"] != null)
        {

           
            id = Convert.ToInt32(Session["id"]);

            GetStudentDetails();

          //  InsertStudentExamDetails();

           
            

             dtquestions = HttpContext.Current.Session["examtable"] as DataTable;
            QuestionsCountLabel.InnerText = Convert.ToString(dtquestions.Rows.Count);
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
                     


            string myJsonString = (new JavaScriptSerializer()).Serialize(list);
            return myJsonString;

        }
        else
        {
            return null;
        }

    }
    
    
    public void GetStudentDetails()
    {
        SqlCommand cmd = new SqlCommand("StudentDetailForExamLogin", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@sturegid", SqlDbType.Int).Value = id;
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {

            name = dr["student"].ToString();
            fathername = dr["father"].ToString();
            address = dr["address"].ToString();
            dob = dr["dob"].ToString();
            

        }
        dr.Close();
        lblusername.Text = "User :" + " " + name;


    }

    [WebMethod(enableSession:true)]
    public static String FetchStudentDetails()
    {
        SqlConnection cons = new SqlConnection();
        cons.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (cons.State == ConnectionState.Closed)
        {
            cons.Open();
        }
        Int64 ids = Convert.ToInt32(HttpContext.Current.Session["id"]);
        if (HttpContext.Current.Session["id"] != null)
        {
            String currentdate = DateTime.Now.ToString("dddd, dd MMMM yyyy");
            SqlCommand cmd = new SqlCommand("StudentDetailForExamLogin", cons);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@sturegid", SqlDbType.Int).Value = ids;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            List<StudentDetails> list = new List<StudentDetails>();
            StudentDetails details = new StudentDetails();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                
                details.id = ids;
                details.name = dt.Rows[i]["student"].ToString();
                details.father = dt.Rows[i]["father"].ToString();
                details.address = dt.Rows[i]["address"].ToString();
                details.dob = dt.Rows[i]["dob"].ToString();
                // details.exam = dt.Rows[i]["exam"].ToString();
                //  details.obtainedmarks = Convert.ToInt64(dt.Rows[i]["obtainedmarks"]);
                // details.totalmarks = Convert.ToInt64(dt.Rows[i]["totalmarks"]);
                details.currentdate = currentdate;
                list.Add(details);
            }
            string myJsonString = (new JavaScriptSerializer()).Serialize(details);
            return myJsonString;

        }
        else
        {
            return null;
        }
               

    }

    //public void InsertStudentExamDetails()
    //{



    //    exam = Session["ExamName"].ToString();
    //    obtainedmarks = Convert.ToInt32(hiddenscore.Value);
    //    totalmarks = dtquestions.Rows.Count;
    //    currentdate = DateTime.Now.ToString("dddd, dd MMMM yyyy");
    //    SqlCommand cmd = new SqlCommand("InsertStudentExamDetails", con);
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
    //    cmd.Parameters.Add("@name", SqlDbType.VarChar, 100).Value = name;
    //    cmd.Parameters.Add("@father", SqlDbType.VarChar, 100).Value = fathername;
    //    cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = address;
    //    cmd.Parameters.Add("@dob", SqlDbType.VarChar, 100).Value = dob;
    //    cmd.Parameters.Add("@exam", SqlDbType.NVarChar).Value = exam;
    //    cmd.Parameters.Add("@obtainedmarks", SqlDbType.Int).Value = obtainedmarks;
    //    cmd.Parameters.Add("@totalmarks", SqlDbType.Int).Value = totalmarks;
    //    cmd.Parameters.Add("@currentdate", SqlDbType.VarChar, 100).Value = currentdate;

    //    cmd.ExecuteNonQuery();
    //    cmd.Dispose();


    //    //con.Close();
    //}


    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/exams/login.aspx");
    }

   





    

   
}