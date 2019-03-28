using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using nscomputerpoint;
using System.Text;
using System.Text.RegularExpressions;
using System.Numerics;
using System.Web.Services;
using System.Web.Security;
using System.Net;



public partial class _Default : System.Web.UI.Page
{
      string studentphone, parentphone, balance ,paidamount,fee;
      
       

    SqlConnection con = new SqlConnection();

    nscomputerpoint.clscomputerpoint obj = new nscomputerpoint.clscomputerpoint();
    nscomputerpoint.clsstudentadmissionprp objprp = new nscomputerpoint.clsstudentadmissionprp();
    nscomputerpoint.clsReceiptDetailsprp objprprctp = new nscomputerpoint.clsReceiptDetailsprp();
    nscomputerpoint.clsCertificateDetailsprp objprpcrtifcate = new nscomputerpoint.clsCertificateDetailsprp();
    protected void Page_Load(object sender, EventArgs e)
    {

        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        if (Page.IsPostBack==false)
        {
            if (User.Identity.IsAuthenticated)
            {
               BindGridView();
               GetMaxReceiptCode();
               
                
            }
            else
            {
                FormsAuthentication.RedirectToLoginPage();
            }

        }
    }



    //private Int32 GetTotalCount()
    //{
    //    SqlDataAdapter adp = new SqlDataAdapter("gettotalcount", ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    //    DataTable dt = new DataTable();
    //    adp.Fill(dt);
    //    return Convert.ToInt32(dt.Rows[0][0].ToString());

    //}


    protected void imgbtn_Click(object sender, ImageClickEventArgs e)
    {

        this.ModalPopupExtender1.Show();
    }


    private void GetMaxReceiptCode()
    {
        List<nscomputerpoint.clsstudentadmissionprp> k;
        k = obj.Get_ReceiptCodeMax();
        txtrecptid.Text = k[0].P_id.ToString();

    }

    private void BindGridView()
    {

        gvdetails.DataSource = obj.BindGridview();
        gvdetails.DataBind();


    }



    public string HighLight(string InputTxt)
    {
        string Search_Str = txtsearch.Text.ToString();
        Regex RegExp = new Regex(Search_Str.Replace("", "|").Trim(),
         RegexOptions.IgnoreCase);

        // Highlight keywords by calling the 

        //delegate each time a keyword is found.

        return RegExp.Replace(InputTxt,

       new MatchEvaluator(ReplaceKeyWords));


        // Set the RegExp to null.

        // RegExp = null;

    }

    public string ReplaceKeyWords(Match m)
    {
        return ("<span class=highlight>" + m.Value + "</span>");

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        objprp.P_id = Convert.ToInt32(lblID.Text);
        objprp.p_stuname = txtstunme.Text;
        objprp.P_fathername = txtfathnme.Text;
        objprp.P_course = txtcourse.Text;
        objprp.P_dob = txtdob.Text;
        objprp.P_address = txtaddress.Text;
        objprp.P_mobileno = txtstuphon.Text;
        objprp.P_parentmob = txtparentphon.Text;
        objprp.P_gender = txtgender.Text;
        objprp.p_emailid = txtemail.Text;

        objprp.P_fees = Convert.ToInt32(txtfee.Text);
        objprp.P_installment = Convert.ToInt32(txtinstall.Text);
        objprp.p_regdate = txtregistration.Text;
        objprp.P_operator = txtrecordadded.Text;
        objprp.P_idproof = txtidprof.Text;
       // obj.savestudent_rec(objprp);
        obj.updatestudent_rec(objprp);

        getdatabyname();
        // BindGridView();

        
        Clear_Rec();

    }

    private void Clear_Rec()
    {

        //txtid.Text = string.Empty;
        txtstunme.Text = string.Empty;
        txtfathnme.Text = string.Empty;
        txtcourse.Text = string.Empty;
        txtdob.Text = string.Empty;
        txtaddress.Text = string.Empty;
        txtstuphon.Text = string.Empty;
        txtparentphon.Text = string.Empty;
        txtgender.Text = string.Empty;
        txtemail.Text = string.Empty;

        txtfee.Text = string.Empty;
        txtinstall.Text = string.Empty;
        txtregistration.Text = string.Empty;
        txtrecordadded.Text = string.Empty;
        txtidprof.Text = string.Empty;



    }


    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {

        studentphone = string.Empty;

        parentphone = string.Empty;
        
        lblID.Text = gvdetails.SelectedRow.Cells[1].Text;
        txtstunme.Text = gvdetails.SelectedRow.Cells[2].Text;
        txtfathnme.Text = gvdetails.SelectedRow.Cells[3].Text;
        txtcourse.Text = gvdetails.SelectedRow.Cells[4].Text;
        txtdob.Text = gvdetails.SelectedRow.Cells[5].Text;
        txtaddress.Text = gvdetails.SelectedRow.Cells[6].Text;
        txtstuphon.Text = gvdetails.SelectedRow.Cells[7].Text;

         studentphone  = gvdetails.SelectedRow.Cells[7].Text;

      //  studentphone=gvdetails.SelectedRow.Cells[7].Text;



        txtparentphon.Text = gvdetails.SelectedRow.Cells[8].Text;

        parentphone = gvdetails.SelectedRow.Cells[8].Text;

        txtgender.Text = gvdetails.SelectedRow.Cells[9].Text;
        txtemail.Text = gvdetails.SelectedRow.Cells[10].Text;
        txtinstall.Text = gvdetails.SelectedRow.Cells[11].Text;
        txtregistration.Text = gvdetails.SelectedRow.Cells[12].Text;
        txtrecordadded.Text = gvdetails.SelectedRow.Cells[13].Text;
        txtidprof.Text = gvdetails.SelectedRow.Cells[14].Text;
        txtfee.Text = gvdetails.SelectedRow.Cells[15].Text;
        fee = txtfee.Text;
        Session["finalfees"] = fee;
        paidamount = gvdetails.SelectedRow.Cells[16].Text;
        balance = gvdetails.SelectedRow.Cells[17].Text;
        //string i = "&nbsp;";

        if (paidamount == "&nbsp;" || paidamount==null || paidamount== string.Empty  && balance == "&nbsp;" || balance==null || balance==string.Empty  && studentphone == "&nbsp;" || studentphone==null || studentphone==string.Empty)
        {
            Session["paidamount"] = 0;
            Session["balance"] = 0;
            Session["studentphone"]=0;
            Session["parentphone"] = 0;
        }
        else
        {
            Session["paidamount"] = paidamount;
            Session["balance"] = balance;
            Session["studentphone"] = studentphone;
            
            
            
            Session["parentPhone"] = parentphone;
        }

        
       
      


        // For Fee Receipt Entry
        //txtstucodforrecpt.Text = gvdetails.SelectedRow.Cells[1].Text;
        //txtnameforrecpt.Text = gvdetails.SelectedRow.Cells[2].Text;
        //txtfahternameforrecpt.Text = gvdetails.SelectedRow.Cells[3].Text;
        //txtcourseforrecpt.Text = gvdetails.SelectedRow.Cells[4].Text;
        //txtaddressforrecpt.Text = gvdetails.SelectedRow.Cells[6].Text;
        //txtdateforrecpt.Text = DateTime.Now.ToString();
        // End For Fee Receipt Entry
        
    }

    protected void gvdetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void gvdetails_RowEditing(object sender, GridViewEditEventArgs e)
    {

        

    }
    protected void gvdetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {

    }
    protected void gvdetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Select")
        {
            String ID = e.CommandArgument.ToString();
            List<clsstudentadmissionprp> k;            
           k = obj.Find_Rec(Convert.ToInt32(ID));           
                txtstucodforrecpt.Text = k[0].P_id.ToString();
               txtnameforrecpt.Text = k[0].p_stuname;
               txtfahternameforrecpt.Text = k[0].P_fathername;
               txtcourseforrecpt.Text = k[0].P_course;
               txtaddressforrecpt.Text = k[0].P_address;
               txtdateforrecpt.Text = DateTime.Now.ToString();
               ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "ShowPopup();", true);           
                //lblsearch.Text = "Id not Found";  
        }
        else if (e.CommandName == "Select2")
        {

          


            String ID = e.CommandArgument.ToString();
            List<clsstudentadmissionprp> k;
            k = obj.Find_Rec(Convert.ToInt32(ID));
            txtcertificatestucode.Text = k[0].P_id.ToString();
            txtcertificatename.Text = k[0].p_stuname;
            txtcertificatefather.Text = k[0].P_fathername;
            txtcertificatecourse.Text = k[0].P_course;
            txtcertificatedate.Text = DateTime.Now.ToString("dd/MM/yyyy");
            txtcertificatesessionstart.Text = DateTime.Now.ToString();
            txtcertificatesessionend.Text = DateTime.Now.ToString();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "ShowPopup();", true);

        }
        else
        {

        }


    }


    




    protected void gvdetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {




        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
            
        //}







       // gvdetails.AllowPaging = false;

        //    DataRowView drv = (DataRowView)e.Row.DataItem;

        //    string catName = Convert.ToString(drv["balance"]);

        //    if (catName == "1")
        //    {

        //        catName = "";

        //    }
        //}

    }
    
    protected void bckbtn_Click1(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");

    }


    protected void imgprofile_Click(object sender, ImageClickEventArgs e)
    {

        ImageButton lnk = (ImageButton)(sender);
        Session["profilid"] = lnk.CommandArgument;

        Response.Redirect("stuprofile.aspx");

       
    }

    private void getdatabyname()
    {
        //SqlDataAdapter adp = new SqlDataAdapter("select id,student,father,course,gender from student where id='" + code + "'OR student like '%" + name + "%'", con);
        //SqlDataAdapter adp = new SqlDataAdapter("select id,student,father,course,dob,address,phone,mobile,email,fee,inst,reg_date,operatername,idproof,gender from student where id='" + code + "'OR student like '%" + name + "%'", con);
        //SqlDataAdapter adp = new SqlDataAdapter("Searching", con);

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Searchbyname";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@name", txtsearch.Text.Trim());
        // cmd.Parameters.AddWithValue("@father", txtsearch.Text.Trim());
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        gvdetails.DataSource = dt;
        gvdetails.DataBind();

    }

    

    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {
        getdatabyname();
    }
    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        getdatabyname();
    }
    protected void imgrupee_Click(object sender, ImageClickEventArgs e)
    {
        //this.ModalPopupExtender1.Show();
       // ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "ShowPopup();", true);


        //this.ModalPopupExtender4.Show();

        this.ModelPopupExtender2.Show();


    }
    protected void btnreceipt_Click(object sender, EventArgs e)
    {

       // myModal.Visible = true;


        
    }




    protected void buttonupdate_Click(object sender, EventArgs e)
    {






        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select  password  from fee_password";
        cmd.Connection = con;
        String passwords = cmd.ExecuteScalar().ToString();

        String valuefromtextboxpassord = txtpassword.Text;




        if (valuefromtextboxpassord == passwords)
        {





            string dt;
            dt = DateTime.Now.ToString();
            Int32 d;
            string urlforsms, urlforsmss, urlforsmsss;
            // string balanceamount =Session["balance"].ToString();
            string nil;




            string message;

            string date = txtdateforrecpt.Text;
            Int32 finalfee, amount, finalbalance, paidamountnew, finalpaidamount, balancenew;
            string feenew, studentphonefinal, parentphonefinal;
            amount = Convert.ToInt32(txtamountforrecpt.Text);




            studentphonefinal = Session["studentphone"].ToString();
            parentphonefinal = Session["parentphone"].ToString();





            feenew = Session["finalfees"].ToString();
            paidamountnew = Convert.ToInt32(Session["paidamount"]);
            balancenew = Convert.ToInt32(Session["balance"]);



            string studentname, oncoutof;
            Int64 regno, payment, recieptcode;


            finalpaidamount = amount + paidamountnew;


            finalbalance = Convert.ToInt32(feenew) - Convert.ToInt32(finalpaidamount);
            // finalfee = Convert.ToDouble(fee);
            //finalbalance = finalfee - finalpaidamount;




            objprprctp.P_recptcode = Convert.ToInt32(txtrecptid.Text);
            recieptcode = Convert.ToInt64(txtrecptid.Text);
            objprprctp.P_recptstucode = Convert.ToInt32(txtstucodforrecpt.Text);

            regno = Convert.ToInt32(txtstucodforrecpt.Text);
            objprprctp.P_recptstuname = txtnameforrecpt.Text;

            studentname = txtnameforrecpt.Text;
            objprprctp.P_recptfathname = txtfahternameforrecpt.Text;
            objprprctp.P_recptcourse = txtcourseforrecpt.Text;
            objprprctp.P_recptaddress = txtaddressforrecpt.Text;
            objprprctp.P_recptdatetime = date;
            objprprctp.P_recptmonth = txtmonthforrecpt.Text;
            objprprctp.P_recptamount = Convert.ToDouble(amount);
            payment = Convert.ToInt64(amount);
            objprprctp.P_recptonaccountof = txtonaccountforrecpt.Text;
            oncoutof = txtonaccountforrecpt.Text;
            obj.SaveReceiptDetails(objprprctp);
            GetMaxReceiptCode();
            getdatabyname();




            //if (finalbalance == null)
            //{

            //    nil = "NIL";
            //    message = "Dear" + " " + studentname + " " + "Regn No - " + " " + regno + "Payment of Rs." + " " + amount + "/-vide receipt" + " " + recieptcode + " " + "on" + " " + dt + " on A/C of " + " " + oncoutof + " " + nil + " " + "print receipt http://cpedu.in";
            //    urlforsms = "http://buzz.yogiinfocom.in/http-api.php?username=Computerpoint&password=karnal@123&senderid=CLOGIN&route=2&number=8930212208'&message=" + Server.UrlEncode(message) + "&dlr_url=http://www.yourdomainname.domain/yourdlrpage&msgid=XX";

            //    WebClient client = new WebClient();
            //    client.DownloadString(urlforsms);

            //    getdatabyname();

            //    // BindGridView();

            //}
            //else
            //{

                // message = "Dear"+"  " + studentname + ",Regn No - " + regno + "Payment of Rs." + finalpaidamount + "/-vide receipt" + recieptcode + "on" + dt + " on A/C of " + oncoutof + "" + finalbalance + "";


                message = "Dear" + " " + studentname + " " + "Regn No - " + " " + regno + " " + "Payment of Rs." + " " + amount + " " + "/-vide receipt" + " " + recieptcode + " " + "on" + " " + dt + " on A/C of " + " " + oncoutof + " " + "FEE BALANCE" + " " + finalbalance + " ";

                urlforsms = "http://buzz.yogiinfocom.in/http-api.php?username=Computerpoint&password=karnal@123&senderid=CRECPT&route=2&number=9254116274&message=" + Server.UrlEncode(message) + "&dlr_url=http://www.yourdomainname.domain/yourdlrpage&msgid=XX";
                urlforsmss = "http://buzz.yogiinfocom.in/http-api.php?username=Computerpoint&password=karnal@123&senderid=CRECPT&route=2&number=" + studentphonefinal + "&message=" + Server.UrlEncode(message) + "&dlr_url=http://www.yourdomainname.domain/yourdlrpage&msgid=XX";
                urlforsmsss = "http://buzz.yogiinfocom.in/http-api.php?username=Computerpoint&password=karnal@123&senderid=CRECPT&route=2&number=" + parentphonefinal + "&message=" + Server.UrlEncode(message) + "&dlr_url=http://www.yourdomainname.domain/yourdlrpage&msgid=XX";

                WebClient client = new WebClient();
                WebClient clients = new WebClient();
                WebClient clientss = new WebClient();

                client.DownloadString(urlforsms);
                clients.DownloadString(urlforsmss);
                clientss.DownloadString(urlforsmsss);
                getdatabyname();

                // BindGridView();

         //   }


            getdatabyname();

            getdatabyname();

            //  BindGridView();


 Response.Redirect("~/welcome.aspx");

        }

        else
        {
            lblpassworderror.Text = "Password is incorrect";
            this.ModelPopupExtender2.Show();
            
        }
        


    }


    protected void imgcertificate_Click(object sender, ImageClickEventArgs e)
    {
        this.ModelPopupExtender3.Show();
    }
    protected void savecertificate_Click(object sender, EventArgs e)
    {



        //double id;
        //id = Convert.ToDouble(txtstucodforrecpt.Text);

        objprpcrtifcate.P_stucodeforcertificate = Convert.ToDouble(txtcertificatestucode.Text);
        
        objprpcrtifcate.P_stunameforcertificate = txtcertificatename.Text;
        objprpcrtifcate.p_stufatherforcertificate = txtcertificatefather.Text;
        objprpcrtifcate.P_stucourseforcertificate = txtcertificatecourse.Text;
        objprpcrtifcate.P_stuissuedateforcertificate = txtcertificatedate.Text;
        objprpcrtifcate.P_stusessionstartdateforcertificate = txtcertificatesessionstart.Text;
        objprpcrtifcate.P_stusessionenddateforcertificate = txtcertificatesessionend.Text;
        objprpcrtifcate.P_stuchargesforcertificate = Convert.ToInt32(txtcertificatecharges.Text);
        objprpcrtifcate.P_stugradeforcertificate = txtcertificategrade.Text;
        obj.SaveCertificateDetails(objprpcrtifcate);
        getdatabyname();


    }
    //protected void btn_sumbitpassword_Click(object sender, EventArgs e)
    //{


    //    if (TextBox1.Text == "123")
    //    {
    //        //this.ModalPopupExtender4.Hide();
    //        this.ModelPopupExtender2.Show();
    //    }
    //    else
    //    {
    //        lblerro.Text = "Enter Password";
    //    }

    //}
    //protected void button2_Click(object sender, EventArgs e)
    //{

    //}
    
}







