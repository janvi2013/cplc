using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewFolder1_MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

       


    }


    protected void ScriptManager1_Init(object sender, EventArgs e)
    {
        try
        {
            foreach (Control _ctrl in ContentPlaceHolder1.Controls)
            {

                if (_ctrl.GetType() == typeof(AjaxControlToolkit.ToolkitScriptManager))
                {
                    ContentPlaceHolder1.Controls.Remove(_ctrl);
                    break;
                };
            }
        }
        catch (Exception ex)
        {
        }
    }


}
