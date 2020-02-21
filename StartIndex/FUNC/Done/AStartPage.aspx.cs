using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class FUNC_Done_StartPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["UserInfo"];

        if (cookie != null)
        {
            String username = cookie["Username"];
            if (username != null)
            {
                Response.Redirect("Home.aspx?username="+username);
                return;
            }
        }
        Response.Redirect("Login.aspx");
    }
}