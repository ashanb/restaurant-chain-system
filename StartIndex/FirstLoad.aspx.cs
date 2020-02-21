using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FirstLoad : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      /*HttpCookie cookie = Request.Cookies["UserInfo"];
        if (cookie != null)
        {
          string username = cookie["Username"];
          if (username != null)
        {
                   Session["Username"] = username;
                   Response.Redirect("GreetingMsg.aspx");
               // Response.Redirect("GreetingMsg.aspx?username="+username);*/

        String username = (String)Session["username"];

            if(username !=null)
            {
                Response.Redirect("GreetingMsg.aspx");
                return;
            }
        
        Response.Redirect("Login.aspx"); 
    }
}