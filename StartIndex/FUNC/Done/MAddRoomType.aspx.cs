using System;
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
public partial class AddRoomType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }

    }
    protected void ADD(object sender, EventArgs e)
    {


        try
        {

            String tb1 = TextBox1.Text;
            String tb2 = TextBox2.Text;
            int tb3 = int.Parse(TextBox3.Text);
            int tb4 = int.Parse(TextBox4.Text);
            int tb5 = int.Parse(TextBox5.Text);

            String tb6 = DateTime.Now.ToString();

            ProductManager.AddRoomType(tb1, tb2, tb3, tb4, tb5,tb6);

            output.Text = "Successfull";



        }
        catch
        {
    
            output.Text = "Cannot add product.";
        }


    }








    protected void UserNTextBox_TextChanged(object sender, EventArgs e)
    {

    }

}