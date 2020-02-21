using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String username = (String)Session["username"];
        String usertype = (string)Session["usertype"];


        if (username != null && usertype != "Customer")
        {


            if (usertype == "Admin" || usertype == "Manager" || usertype == "Staff" || usertype == "Customer")
            {


                store.Text = "<li><a href='../FUNC/Done/MHome.aspx'> New Store </a></li>";
            }
        }
   
    }
}