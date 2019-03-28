using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Xml;
using System.Net;
using System.IO;
using System.Web.Security;


public partial class _Default : System.Web.UI.Page
{
    object usr;
    string msg;
    object xmlhttp;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            if (Session["username"] != null)
            {
                //lbluser.Text = "Welcome User :" + Session["username"].ToString();
                lbluser.Text = "Welcome User:" + User.Identity.Name;
                lbluser.ForeColor = Color.Red;
                lbluser.Attributes.Add("style", "font-size:100%; color:Red; font-weight:bold;margin-left:4%");
            }
        }
        else
        {
            FormsAuthentication.RedirectToLoginPage();
        }
        
    }
    protected void logout1_Click(object sender, EventArgs e)
    {
        //Session.RemoveAll();
        Response.Redirect("login.aspx");
    }
}