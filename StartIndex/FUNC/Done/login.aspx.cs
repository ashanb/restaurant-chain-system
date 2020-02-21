using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using System.Data;
using System.Net;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       String username = UserNTextBox.Text;
       HttpCookie cookie = new HttpCookie("UserInfo");
       cookie["username"] = username;
       cookie.Expires = DateTime.Now.AddMinutes(1);
       Response.Cookies.Add(cookie);


       Response.Redirect("Home.aspx?username=" + username);

       


      //---------------------------------------------------------------------------------------------------
       // UserNTextBox.Text = var;

     /*  try
        {

           ProductManager.pkgTester();

           // String sale = dataset.Tables["pkg_Tester"].Rows[0]["Sales_id"].ToString();

            UserNTextBox.Text ="Working";
        }
        catch
        {
            UserNTextBox.Text = "Not Working buddy";
        }*/
        

        //open plsql...............this will work with update,insert,delete..so this is a better way..



    }
}