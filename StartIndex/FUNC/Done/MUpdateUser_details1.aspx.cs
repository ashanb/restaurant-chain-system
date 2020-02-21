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
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        Master.HeadingMessage = "Update User Details";


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String nic = NICTextBox.Text;

        Response.Redirect("MUpdateUser_details2.aspx?nic=" + nic);

    }

}