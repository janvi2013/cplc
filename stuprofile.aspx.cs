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
using System.Web.Security;
using System.Numerics;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Text;
using System.IO;


public partial class _Default : System.Web.UI.Page
{
    Int32 id;
    Int32 idimg;
   
    nscomputerpoint.clsstudentadmissionprp objprp = new nscomputerpoint.clsstudentadmissionprp();
    nscomputerpoint.clscomputerpoint obj = new nscomputerpoint.clscomputerpoint();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (User.Identity.IsAuthenticated)
            {
                BindTable();
            }
            else
            {
                FormsAuthentication.RedirectToLoginPage();
              
            }
        }
        

    }


    public void BindTable()
    {

        id = Convert.ToInt32(Session["profilid"]);

        List<nscomputerpoint.clsstudentadmissionprp> k = new List<clsstudentadmissionprp>();
        k = obj.Find_Rec(id);

        lblid.Text = k[0].P_id.ToString();
        lblname.Text = k[0].p_stuname;
        Label1.Text = k[0].P_fathername;
        Label2.Text = k[0].P_course;
        Label3.Text = k[0].P_dob;
        Label4.Text = k[0].P_address;
        Label5.Text = k[0].P_mobileno;
        Label6.Text = k[0].P_parentmob;
        Label7.Text = k[0].P_gender;
        Label8.Text = k[0].p_emailid;
        Label9.Text = k[0].P_fees.ToString();
        Label10.Text = k[0].P_installment.ToString();
        Label11.Text = k[0].p_regdate;
        Label12.Text = k[0].P_idproof;
        Label13.Text = k[0].P_installment.ToString();



        //Label5.Text = k[0].P_parentmob;
        //Label6.Text = k[0].P_gender;
        //Label7.Text = k[0].p_emailid;
        //Label8.Text = k[0].P_fees.ToString();
        //Label9.Text = k[0].P_installment.ToString();
        //Label10.Text = k[0].p_regdate;
        //Label11.Text = k[0].P_idproof;
        //Label12.Text = k[0].P_operator;
        //Label13.Text = k[0].P_mobileno;
        //Image1.ImageUrl = k[0].P_image;
        
       
    }


    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("sturecords.aspx");
    }
    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }
    protected void imgprint_Click(object sender, ImageClickEventArgs e)
    {
        string image;
         idimg= Convert.ToInt32(Session["profilid"]);
         List<nscomputerpoint.clsstudentadmissionprp> k1 = new List<clsstudentadmissionprp>();
         k1 = obj.Find_Rec(idimg);

         image = k1[0].P_image;
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=Panel.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);


        iTextSharp.text.Image myImage = iTextSharp.text.Image.GetInstance(image);
        PdfPCell cell = new PdfPCell(myImage);
       



       // personaldetails.RenderControl(hw);
        personaldetail.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f,0f);
      
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc,Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
    }
}