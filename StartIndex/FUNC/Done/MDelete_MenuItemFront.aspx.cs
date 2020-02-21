using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DeleteMenuItemFront : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
     Master.HeadingMessage = "Deleting from  Menu Item Front Page";

     String message = Request.QueryString["message"];
     if (message != null)
     {
            output.Text =message;
     }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String message = "";
        try
        {
            ProductManager.Delete_MenuItem_Front(DropDownList1.SelectedItem.ToString());
            message = "Successful Deletion";
            
        }
        catch
        {
            message = "UnSuccessful Deletion";
        }
       Response.Redirect("MDelete_MenuItemFront.aspx?message="+message);
    }
}