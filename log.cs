﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Web.Security;
using nscomputerpoint;

public partial class _Default : System.Web.UI.Page
{
    nscomputerpoint.clsuserprp objprp = new nscomputerpoint.clsuserprp();
    nscomputerpoint.clscomputerpoint obj = new nscomputerpoint.clscomputerpoint();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        try
        {
            string dt;
            dt = DateTime.Now.ToString();
            Int32 d;
            string urlforsms;
            string usernameforsms = txtusername.Text;
            string message;
            message = "Respected Divya Sir , I am Rakesh Sharma..., I have implemented SMS Api in your new Project .If you Have Received This Message Successfuly Then Please Call Me Back " + dt + " as " + usernameforsms + ". Thanks. From Rakesh Sharma";
            urlforsms = "http://buzz.yogiinfocom.in/http-api.php?username=Computerpoint&password=karnal@123&senderid=CLOGIN&route=2&number=8930212208&message=" + Server.UrlEncode(message) + "&dlr_url=http://www.yourdomainname.domain/yourdlrpage&msgid=XX";

            objprp.P_username = txtusername.Text;
            objprp.P_password = txtpassword.Text;
            d = obj.checkuser(objprp);
            Session["username"] = txtusername.Text;
            if (d == -1)
            {

                wronguserpassword.Text = "wrong user";
                wronguserpassword.ForeColor = Color.Red;
            }
            if (d == -2)
            {
                wronguserpassword.Text = "wrong password";
                wronguserpassword.ForeColor = Color.Yellow;
            }
            if (d == 1)
            {

                FormsAuthentication.RedirectFromLoginPage(txtusername.Text, false);


                //WebClient client = new WebClient();
                //client.DownloadString(urlforsms);                
                Response.Redirect("welcome.aspx");
            }


        }
        catch (Exception ex)
        {
            throw ex;

        }
       
        
    }
    }
