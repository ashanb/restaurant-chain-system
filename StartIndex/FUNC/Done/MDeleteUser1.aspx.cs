﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FUNC_Done_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype != "Admin")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        Master.HeadingMessage = "Delete a User";


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String username = UserNTextBox.Text;

        Response.Redirect("MDeleteUser2.aspx?username=" + username);

    }

}