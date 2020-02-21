using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FUNC_Done_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String username = Request.QueryString["username"];


            if (username == null || username.Length == 0)
            {
                Response.Redirect("ErrorPage.aspx?message=Your username is missing");
     


            }


            WelcomeLabel.Text = username;



        }

    }
}