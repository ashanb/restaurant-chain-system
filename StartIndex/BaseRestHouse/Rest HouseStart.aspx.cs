using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Base_Rest_House : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /* int i = 1;
 String k = "";
 while(i<10)
 {
    k  = k + "<li><a href=''><img src='images/home/" +  i + ".jpg' alt='' /></a></li>";
    i++;
            
 }
 myText.Text = k;*/

        SessionHandler();

  

        
    }
    protected void SessionHandler()
    {

        String UserSpec1 = "";
        try
        {
            String username = (String)Session["username"];
            String usertype =(string)Session["usertype"];
            if(usertype =="Worker")
            {
                    usertype ="Staff";
            }

            if (username != null && usertype !="Customer")
            {
                USER.Text = username;

                if (usertype == "Admin" || usertype == "Manager" || usertype == "Staff" || usertype == "Customer")
                {
             
                UserSpec1 = "<span class='reservations-title'>User Type :</span><hr class='hr-solid' /><span style='font-family: 'Lobster13Regular', cursive;'>"+usertype +"</span><hr class='hr-dashed' />";

                store.Text = "<li><a href='../FUNC/Done/MHome.aspx'> New Store </a></li>";
                }
            
            }
            else
            {
                USER.Text = "Your Not Logged in";
                UserSpec1 = "<div style='margin-top:15px'> <a class='button' href='../ShenaliHome.aspx' title='Login Now'>Login Now!</a> </div>";
            
            }
        }
        catch
        {
            UserSpec1 = "<div style='margin-top:15px'> <a class='button' href='#' title='Order Now'>Order Now!</a> </div>";
        }

        Userspec.Text = UserSpec1;

    }

}