using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Oracle.DataAccess.Client;
using System.Net.Mail;
using System.Net;

public partial class CreateNewForm : System.Web.UI.Page
{
    public static int check1;
    protected void Page_Load(object sender, EventArgs e)
    {

    

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        output.Text = "";

        String username = TextBox1.Text;


        try
        {
            DataSet dataSet = ProductManager.ShowBase_Customer(username);

            String nic = dataSet.Tables["Base_customer"].Rows[0]["nic"].ToString();


            ACValidLabel2.Text = "";

            ACValidLabel1.Text = "Username allready In Use!";

        }
        catch
        {
            ACValidLabel1.Text = "";
            ACValidLabel2.Text = "Valid Username";
        }
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
   

        String nic = TextBox3.Text;
        TextBox11.Text = nic;
        check1 = 5;
        try
        {
            DataSet dataSet = ProductManager.ShowBase_CustomerDetail(nic);

            String email = dataSet.Tables["Base_Customer_details"].Rows[0]["Email"].ToString();
            String conatct_no = dataSet.Tables["Base_Customer_details"].Rows[0]["Contact_no"].ToString();
            String address1 = dataSet.Tables["Base_Customer_details"].Rows[0]["Address1"].ToString();
            String dob = dataSet.Tables["Base_Customer_details"].Rows[0]["DOB"].ToString();
            String sex = dataSet.Tables["Base_Customer_details"].Rows[0]["Sex"].ToString();
            String f_name = dataSet.Tables["Base_Customer_details"].Rows[0]["first_name"].ToString();
            String l_name = dataSet.Tables["Base_Customer_details"].Rows[0]["last_name"].ToString();



            TextBox12.Text = email;
            TextBox13.Text = conatct_no;
            TextBox14.Text = address1;

            ddTextBox.Text = dob.Substring(3, 2);
            monTextBox.Text = dob.Substring(0, 2);
            yTextBox.Text = dob.Substring(8, 2);
            if (sex == "Female")
            {
                MaleRadioButton.Checked = false;
                FemaleRadioButton.Checked = true;

            }
            else
            {
                FemaleRadioButton.Checked = false;
                MaleRadioButton.Checked = true;
            }
            TextBox16.Text = f_name;
            TextBox17.Text = l_name;
            check1 = 1;
            //  output.Text = "Successfully Updated!..";

        }
        catch
        {
            //  Master.HeadingMessage = "Update fails due to not valid input,No related information";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";



            ddTextBox.Text = "";
            monTextBox.Text = "";
            yTextBox.Text = "";
            MaleRadioButton.Checked = true;
            TextBox16.Text = "";
            TextBox17.Text = "";
            check1 = 2;

        }
        ACValidLabel2.Text = "";
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        ACValidLabel2.Text = "";

        ACValidLabel1.Text = "";
        if (TextBox4.Text.Length < 3)
        {
            Label21.Text = "Minimum Password length is 3.";
            return;
        }
        else if (TextBox4.Text.Length > 7)
        {
            Label21.Text = "Maximun Password length is 7.";
            return;
        }

        try
        {
            String tb1 = TextBox1.Text;
            String tb2 = "Customer";
            String tb3 = TextBox3.Text;
            String tb4 = TextBox4.Text;
            String tb5 = TextBox5.Text;
            String tb6 = TextBox6.Text;

            String user = "";



            String tb11 = TextBox11.Text;

            String tb12 = TextBox12.Text;
            String tb13 = TextBox13.Text;
            String tb14 = TextBox14.Text;
            String dd = ddTextBox.Text;
            String mm = monTextBox.Text;
            String yy = yTextBox.Text;
            String dob = dd + mm + yy;

            String tb15 = "";
            if (MaleRadioButton.Checked)
            {
                tb15 = "Male";
            }
            else
            {
                tb15 = "Female";
            }

            String tb16 = TextBox16.Text;
            String tb17 = TextBox17.Text;



            ProductManager.DirectAddCustomer(tb1, tb2, tb3, tb4, tb5, tb6, "Enabled", tb11, tb12, tb13, tb14, dob, tb15, tb16, tb17, check1);

            output.Text = "Successful Account Creation..";
            TextBox1.Text = "";
            TextBox3.Text = "";
            SendMail();
            ClearInputs(Page.Controls);

        }
        catch
        {

            TextBox1.Text = "";
            output.Text = "UnSuccessfull..";
            TextBox3.Text = "";
        }




    }
 
    void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            ClearInputs(ctrl.Controls);
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        ClearInputs(Page.Controls);
    }

    protected void SendMail()
    {

        try
        {
            MailMessage mm = new MailMessage("shenalifoods@gmail.com",TextBox12.Text);
            mm.Subject = "Shenali New Account Details";
            mm.Body = "Username: " + TextBox1.Text + "<br /><br />Password: " + TextBox4.Text + "<br />"  + "Other Realated Data";
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