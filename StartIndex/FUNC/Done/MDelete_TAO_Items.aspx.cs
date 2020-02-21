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
public partial class Delete_RT_Items : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        Master.HeadingMessage = "Delete Take Away Outlet Items";
    }
   



    protected void Delete(object sender, EventArgs e)
    {
        String t1 = DropDownList1.SelectedItem.ToString();
        try
        {
            ProductManager.deleteItem(t1,"TAO");

            output2.Text ="Successful Deletion";

        }
        catch
        {
            output2.Text = "Unsuccessful Delete detail";
        }

    }
 
}