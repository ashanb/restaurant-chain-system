using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class FUNC_Done_MAddStartSale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        String sales_id ="BKS" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + DateTime.Now.Hour + DateTime.Now.Minute + DateTime.Now.Second;
        string tdy = "" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day;
        DateTime D = Convert.ToDateTime(DateTime.Now);


        ProductManager.AddBK_Sale(sales_id, "Default", 0, "Cash", "No", "No", (String)Session["username"], "No", (String)Session["username"],D);
        Response.Redirect("MAdd_BK_Sales_Des.aspx?sales_id=" + sales_id);
    }
}