using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class News : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype != "Admin")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
     Master.HeadingMessage = "Editing News";
     output.Text = "";
     TextBox0.Text = "News" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + DateTime.Now.Hour + DateTime.Now.Minute + DateTime.Now.Second;

     String news_id = Request.QueryString["news_id"];

     if (news_id != null)
     {
         ProductManager.Delete_News(news_id);
     }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            ProductManager.AddNews(TextBox0.Text, TextArea1.InnerHtml, DateTime.Now.ToString(), (String)Session["username"]);
            output.Text = "News Added Successfully";
            Response.Redirect("MAdd_News.aspx");
        }
        catch
        {
            output.Text = "News Adding Failed";
        }
    }
  
}