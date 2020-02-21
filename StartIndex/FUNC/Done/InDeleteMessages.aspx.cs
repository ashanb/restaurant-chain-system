using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class InDeleteMessages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] != null && usertype != "Customer")
        {

        //   Master.HeadingMessage = "Welcome to the MessageInbox, You are Logged in as Admin";


        String M_id = Request.QueryString["Message_id"];

        if (M_id != null)
        {
    

            ProductManager.Delete_User_MessageSent(M_id);



        }
        }
        else
        {
            Response.Redirect("../../ShenaliHome.aspx");
        }


    }
}