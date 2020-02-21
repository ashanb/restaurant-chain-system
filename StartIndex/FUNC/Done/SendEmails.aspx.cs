using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;


public partial class MenuItemFront : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
     Master.HeadingMessage = "Send emails to Customers";


    

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        SendMail();

    }
    protected void SendMail()
    {

        try
        {
            MailMessage mm = new MailMessage("shenalifoods@gmail.com", DropDownList2.SelectedItem.ToString());
            mm.Subject = TextBox0.Text;
            mm.Body = "Subject: " + TextBox0.Text + "<br />" + "Body: " + TextArea1.InnerHtml;
            /*  if (FileUpload1.HasFile)
              {
                  string FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName)   ;
                  mm.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileName));
              }*/
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "shenalifoods@gmail.com";
            NetworkCred.Password = "123456shenali";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            output0.Text = "Email Sent SucessFully.";
        }
        catch
        {
            output0.Text = "Email Sent Faild.";
        }



    }

   
}