using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] != null && usertype !="Customer")
        {
            // Master.HeadingMessage = "Welcome to the MessageInbox, You are Logged in as Admin";

            Label14.Text = "Msg" + DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            Label13.Text = (String)Session["username"];
        }
        else
        {
            Response.Redirect("../../ShenaliHome.aspx");
        }

   


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String MessageID = Label14.Text;
        String SenderID = Label13.Text;
        String Send_date = DateTime.Now.ToString();
        String messageH = HeadingTextBox.Text;
        String MessageC = TextArea1.InnerText;
        String Receiver_Type = TypeDropDownList.SelectedValue;
        String Receiver_ID = IDDropDownList.SelectedValue;
        String Status = "Unread";
        if (Receiver_ID == null)
        {
            Receiver_ID = "none";
        }
        try
        {
            ProductManager.Add_Message(MessageID, SenderID, Send_date, messageH, MessageC, Receiver_Type, Receiver_ID, Status);
            output.Text = "Message Send Successful.";
            HeadingTextBox.Text = "";
            TextArea1.InnerText = "";
        }
        catch
        {
            output.Text = "Message Send Faild.";
        }
    }
}