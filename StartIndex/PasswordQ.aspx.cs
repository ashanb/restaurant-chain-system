using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Net;

public partial class passq : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String username = Request.QueryString["username"];
        DataSet dataset = ProductManager.Valid_User_Info(username);
        String password_q = dataset.Tables["Valid_User_Info"].Rows[0]["password_ques"].ToString();
        PasswordQTextBox.Text = password_q;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String username = Request.QueryString["username"];
        DataSet dataset = ProductManager.Valid_User_Info(username);
        String password_ans = dataset.Tables["Valid_User_Info"].Rows[0]["password_ans"].ToString();

        if (password_ans.Equals(PasswordAnsTextBox.Text))
        {
            SendMail("Shenali Account Recovery");
            ProductManager.failed_pass(username, 0);
            //output.Text = "Your Account details is send to your mail";
            Response.Redirect("Recoverpass.aspx");
        }
        else
        {
         
           // output.Text = "Your Account has been disabled.Please contact admin";
            ProductManager.user_Status(username,"","Disabled");
            Response.Redirect("Recoverfail.aspx");
        }
       
    }

    protected void SendMail(String msg)
    {

        try
        {
            String username = Request.QueryString["username"];
            DataSet dataset = ProductManager.Valid_User_Info(username);
            String password = dataset.Tables["Valid_User_Info"].Rows[0]["password"].ToString();
            String nic = dataset.Tables["Valid_User_Info"].Rows[0]["nic"].ToString();

            DataSet dataset2 = ProductManager.Valid_User_detail_Info(nic);
            String email = dataset2.Tables["Valid_User_detail_Info"].Rows[0]["email"].ToString();
           

            MailMessage mm = new MailMessage("shenalifoods@gmail.com",email);
            mm.Subject = msg;
            mm.Body = "Username: " + username + "<br /><br />Password: " + password + "<br />" + "Other Realated Data";
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

        }
        catch
        {

        }



    }
}