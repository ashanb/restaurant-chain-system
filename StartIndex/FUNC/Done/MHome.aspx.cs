using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using Oracle.DataAccess.Client;
public partial class MHomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Session["username"] == null)
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }*/

        string usertype =(String)Session["usertype"];

        if (usertype == "Admin")
        {
            Response.Redirect("MAdminHome.aspx");
        }
        else if (usertype == "Manager")
        {
            Response.Redirect("MManagerHome.aspx");
        }
        else if (usertype == "Staff")
        {
            Response.Redirect("MStaffHome.aspx");
        }
        else
        {
            Response.Redirect("../../ShenaliHome.aspx");
        }


    }

}