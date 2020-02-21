using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class InInbox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     //   Master.HeadingMessage = "Welcome to the MessageInbox, You are Logged in as Admin";
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }

        String M_id = Request.QueryString["Message_id"];

        if (M_id != null)
        {
            Message_IDNameLabel.Visible = true;
            Label1.Visible = true;
           Label3.Visible = true;
           Label5.Visible = true;
           MessageIDLabel.Text = M_id;
           DataSet dataset = ProductManager.ShowBase_LoadMessage(M_id);
            Label2.Text= dataset.Tables["Base_LoadMessage"].Rows[0]["M_heading"].ToString();
            Label4.Text = dataset.Tables["Base_LoadMessage"].Rows[0]["M_content"].ToString();
            Label6.Text = dataset.Tables["Base_LoadMessage"].Rows[0]["send_date"].ToString();

            ProductManager.UpdateMessageRead(M_id,"Read");
           


        }


    }
}