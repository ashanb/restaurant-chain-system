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
public partial class MHomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype != "Admin")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }

      //  Master.HeadingMessage = "Welcome to the System Administrator";




        Chart1.MaxValue = 60;

        Chart1.Values.Clear();

        Chart1.Values.Add("Jan", 10);
        Chart1.Values.Add("Feb", 20);
        Chart1.Values.Add("Mar", 30);
        Chart1.Values.Add("Apr", 50);
        Chart1.Values.Add("May", 5);
        Chart1.YAxisLabels.Add("0 ");
        Chart1.YAxisLabels.Add("25+ ");
        Chart1.YAxisLabels.Add("50+ ");
        Chart1.CssClass = "p3";


        Chart3.MaxValue = 60;

        Chart3.Values.Clear();
        Chart3.Values.Add("Jan", 30);
        Chart3.Values.Add("Feb", 50);
        Chart3.Values.Add("Mar", 20);
        Chart3.Values.Add("Apr", 5);
        Chart3.Values.Add("May", 30);

        Chart3.YAxisLabels.Add("0 ");
        Chart3.YAxisLabels.Add("25+ ");
        Chart3.YAxisLabels.Add("50+ ");

    }

}