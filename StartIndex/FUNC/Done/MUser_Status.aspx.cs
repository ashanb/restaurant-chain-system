﻿using System;
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
public partial class ViewUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         String usertype = (String)Session["usertype"];


         if (Session["username"] == null || usertype != "Admin")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        Master.HeadingMessage = "Status of Users";
    }


  

}