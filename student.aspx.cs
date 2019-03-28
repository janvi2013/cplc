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
using System.IO;
using System.Drawing;
using AjaxControlToolkit;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
    
   
    
    
    nscomputerpoint.clsstudentadmissionprp objprp = new nscomputerpoint.clsstudentadmissionprp();
    nscomputerpoint.clscomputerpoint obj = new nscomputerpoint.clscomputerpoint();
    protected void Page_Load(object sender, EventArgs e)
    {

        
        if (Page.IsPostBack == false)
        {

           

            if (User.Identity.IsAuthenticated)
            {
                BindCourseDropDown();
                MaxStudentId();
                
            }
            else
            {
                FormsAuthentication.RedirectToLoginPage();
                
            }

        }
           


    }
    private void MaxStudentId()
    {
        List<nscomputerpoint.clsstudentadmissionprp> k;
        k = obj.Get_StudentID();
        txtstucode.Text = k[0].P_id.ToString();

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        Int32 idfinal;
        string filename = string.Empty;
        if (FileUpload1.HasFile)
        {
            filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("Files/" + filename));
        }
        idfinal = Convert.ToInt32(txtstucode.Text);
        objprp.p_stuname=txtname.Text.ToUpper();
        objprp.P_fathername=txtfather.Text.ToUpper();
        objprp.P_course=dropdowncourse.SelectedItem.Text;
        objprp.P_dob=txtdob.Text;
        objprp.P_address=txtaddress.Text.ToUpper();
        objprp.P_mobileno=txtstumobile.Text;
        objprp.P_parentmob=txtparentmob.Text;
        objprp.P_gender=dropdowngender.SelectedValue;
        objprp.p_emailid=txtemail.Text.ToUpper();
        
        objprp.P_fees=Convert.ToInt32(txtfees.Text);
        objprp.P_installment=Convert.ToInt32(txtinstallment.Text);
        objprp.P_idproof = txtidfrf.Text;
        objprp.P_operator = Session["username"].ToString();
        objprp.P_image = "Files/" + filename;
        
        obj.savestudent_rec(objprp);
        //lblsuccess1.Text = "Record Added Successfuly, Thanks !";
        //lblsuccess1.ForeColor = Color.Red;      

        MaxStudentId();
        
        Clear_Rec();
        string message = "Record Added Successfuly With ID";
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + message+":" + idfinal + "');", true);
          



    }

    private void Clear_Rec()
    {
        txtname.Text = string.Empty;
        txtfather.Text = string.Empty; ;
        txtdob.Text = string.Empty;
        txtaddress.Text = string.Empty;
        txtstumobile.Text = string.Empty;
        txtparentmob.Text = string.Empty;
        txtemail.Text = string.Empty;
        txtfees.Text = string.Empty;
        txtinstallment.Text = string.Empty;
        txtidfrf.Text = string.Empty;
    }

    


    //protected void OnUploadComplete(object sender, AjaxFileUploadEventArgs e)
    //{
        
    //    string fileName = Path.GetFileName(e.FileName);   
    //    AjaxFileUpload11.SaveAs(Server.MapPath("~/Files/" + fileName));   
    //}


    
    


    private void BindCourseDropDown()
    {
        //SqlDataAdapter apd = new SqlDataAdapter("select*from coursename",ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        //DataSet ds = new DataSet();
        //apd.Fill(ds);
        dropdowncourse.DataSource = obj.Bindddl();
        dropdowncourse.DataTextField = "coursename";
        dropdowncourse.DataValueField = "id";
        dropdowncourse.DataBind();

        dropdowncourse.Items.Insert(0, new ListItem("--Select Courses--", "0"));
        dropdowngender.Items.Insert(0, new ListItem("--Select Gender--", "0"));

    }

    


    



    
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }
    protected void bckbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }
}