using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Messagebox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Master.HeadingMessage = "Welcome to the MessageInbox, You are Logged in as Admin";

        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype=="Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }

    }
}