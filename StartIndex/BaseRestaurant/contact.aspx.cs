using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class BaseRestaurant_ContactTester : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (!IsPostBack)
        {
            Label5.Visible = false;
            Random rand = new Random((int)DateTime.Now.Ticks);
            int RandomNumber1;
            RandomNumber1 = rand.Next(1, 10);
            Label3.Text = RandomNumber1 + "";
            int RandomNumber2;
            RandomNumber2 = rand.Next(1, 10);
            Label4.Text = RandomNumber2 + "";
        }

        //HumanV.Text = int.Parse(Label3.Text) + int.Parse(Label4.Text)+"";

        String username = (String)Session["username"];
        String usertype = (string)Session["usertype"];


        if (username != null && usertype != "Customer")
        {


            if (usertype == "Admin" || usertype == "Manager" || usertype == "Staff" || usertype == "Customer")
            {


                store.Text = "<li><a href='../FUNC/Done/MHome.aspx'> New Store </a></li>";
            }
        }
    }
    protected void SendMail()
    {

        try
        {
            MailMessage mm = new MailMessage("shenalifoods@gmail.com", "ashanb58@gmail.com");
            mm.Subject = subject.Text;
            mm.Body = "Name: " + name.Text + "<br /><br />Email: " + email.Text + "<br />" + "Subject: " + subject.Text + "<br />" + "Body: " + textarea.InnerHtml;
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
            Label1.Text = "Email Sent SucessFully.";
        }
        catch
        {
            Label1.Text = "Email Sent Faild.";
        }



    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (int.Parse(HumanV.Text.ToString()) != (int.Parse(Label3.Text.ToString()) + int.Parse(Label4.Text.ToString())))
        {
            Label5.Visible = true;
         
            return;
        }
        else
        {
            Label5.Visible = false;
            SendMail();
        }
       
       
      //  name.Text = "";
       // subject.Text = "";
      //  textarea.InnerHtml = "";
      //  email.Text = "";
      //  HumanV.Text = "";


    }
}