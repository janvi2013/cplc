﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            resultdiv.Visible = false;
            

        }

    }

    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {

        popup.Visible = false;
        popup2.Visible = false;
        overlay.Visible = false;
        resultdiv.Visible = true;
    }
}