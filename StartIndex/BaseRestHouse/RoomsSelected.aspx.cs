using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;


public partial class BaseRestHouse_RoomSelected : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
           Response.Redirect("../InfoErrorPage.aspx");
           return;
        }




       string Bill_id = Request.QueryString["Bill_id"];
       BillNoLabel.Text = Bill_id;


        int i =0;
        int total = 0;
       String nic = (String)Session["nic"];
       String username = (String)Session["username"];

       if (nic != null)
       {
           DataSet dataset;
           if (Session["usertype"] != "Customer")
           {
              dataset = ProductManager.ShowBase_UserDetail(nic);

              CustomerFirstNameLabel.Text = dataset.Tables["Base_user_details"].Rows[0]["first_name"].ToString();
              CustomerLastNameLabel.Text = dataset.Tables["Base_user_details"].Rows[0]["Last_name"].ToString();
           }
           else
           {
               dataset = ProductManager.ShowBase_CustomerDetail(nic);

               CustomerFirstNameLabel.Text = dataset.Tables["Base_Customer_details"].Rows[0]["first_name"].ToString();
               CustomerLastNameLabel.Text = dataset.Tables["Base_Customer_details"].Rows[0]["Last_name"].ToString();
           }
          // ShippingAddTextBox.Text = dataset.Tables["Base_user_details"].Rows[0]["address1"].ToString();
           


           CustomerIdLabel.Text = username;
          TotalNoILabel.Text = GridView1.Rows.Count.ToString();
          CustomerNICLabel.Text = nic;

       }
       else
       {
           Response.Redirect("../ErrorPage.aspx?message=In Order to Make a Reservation First You need to Login..");
       }

        while(i<GridView1.Rows.Count)
        {

            total= total+int.Parse(GridView1.Rows[i].Cells[4].Text);
            i++;

        }
        TotalLabel.Text = total.ToString();

        RLabel.Text = (String)Session["check_in"] + " to " + (String)Session["check_out"];
        GridView1.DataBind();


       
        
    
      // ProductManager.DeleteTempOrder(order_id);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

          int i = 0;
          int k =0;
          int j = 0;

          String bill_id = BillNoLabel.Text ;
     
         String paymentType;

          if (OnlineRadioButton.Checked == true)
          {
              paymentType = "Online";
          }
          else if (CashRadioButton.Checked == true)
          {
              paymentType = "Cash";

          }
          else
          {
              paymentType = "No";
          }


         // try
         // {

              ProductManager.UpdateRHbill(bill_id, CustomerNICLabel.Text, int.Parse(TotalLabel.Text), paymentType, "No", "no", "Ashan", DateTime.Now.ToString(), "Ashan", int.Parse(TotalNoILabel.Text));
              foreach (GridViewRow row in GridView1.Rows)
              {
                  if (row.RowType == DataControlRowType.DataRow)
                  {
                      String room_id = GridView1.Rows[i].Cells[1].Text;

                      int amount = int.Parse(GridView1.Rows[i].Cells[4].Text);

                      String check_in = GridView1.Rows[i].Cells[2].Text;
                      String check_out = GridView1.Rows[i].Cells[3].Text;


                     ProductManager.UpdateRHBill_Room(bill_id, room_id, check_in, check_out, amount, 0, "no", DateTime.Now.ToString(), (String)Session["username"], DateTime.Now.ToString(), (String)Session["username"]);
                    
                      DateTime bookingS = Convert.ToDateTime(check_in);
                      DateTime bookingE = Convert.ToDateTime(check_out);
             

                      
                    j =int.Parse((bookingE-bookingS).TotalDays.ToString());

                    k = 0;
                    while (k <= j)
                    {
                        
                        ProductManager.Add_Room_Reservation(room_id, bookingS.AddDays(k));
                        

                        k++;
                    }
               


                  }
                  i++;

           //   }
              
        }
      /* catch
         {
              Response.Redirect("../ErrorPage2.aspx?message=Error Occured.");
         }*/
              SendMail();
        Response.Redirect("CustomerReservationSuccess.aspx?bill_id=" + bill_id);
        //  Response.Redirect("Default.aspx");
    }

    protected void SendMail()
    {

        try
        {
            MailMessage mm = new MailMessage("shenalifoods@gmail.com", (String)Session["email"]);
            mm.Subject ="Shenali Rest House Reservation Details";
            mm.Body = "Bill ID " + BillNoLabel.Text + "<br /><br />Customer Name: " + CustomerFirstNameLabel.Text +" "+CustomerLastNameLabel.Text + "<br />" + "Customer NIC: " + CustomerNICLabel.Text + "<br />" + "Body: " + BillNoLabel.Text+"<br/>"+"Other Realated Data";
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReservationGridLocator.aspx");
    }
}