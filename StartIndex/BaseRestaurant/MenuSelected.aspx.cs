using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class BaseRestaurant_MenuSelected : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../InfoErrorPage.aspx");
            return;
        }


       string order_id = Request.QueryString["order_id"];
       OrderNoLabel.Text = order_id;


        int i =0;
        int total = 0;
       String nic = (String)Session["nic"];
       String username = (String)Session["username"];
       String usertype =(String)Session["usertype"] ;

       if (nic != null)
       {

           if (usertype!= "Customer")
           {



               DataSet dataset = ProductManager.ShowBase_UserDetail(nic);
               if(!IsPostBack)
               ShippingAddTextBox.Text = dataset.Tables["Base_user_details"].Rows[0]["address1"].ToString();
               CustomerNameLabel.Text = dataset.Tables["Base_user_details"].Rows[0]["first_name"].ToString();
               
             
           }
           else
           {
               DataSet dataset = ProductManager.ShowBase_CustomerDetail(nic);

               if (!IsPostBack)
                   ShippingAddTextBox.Text = dataset.Tables["Base_customer_details"].Rows[0]["address1"].ToString();

   
               CustomerNameLabel.Text = dataset.Tables["Base_customer_details"].Rows[0]["first_name"].ToString();
           }
           CustomerIdLabel.Text = username;
           TotalNoILabel.Text = GridView1.Rows.Count.ToString();
       }
       else
       {
           Response.Redirect("../ErrorPage.aspx?message=In Order to Make a Order First You need to Login..");
       }

        while(i<GridView1.Rows.Count)
        {

            total= total+int.Parse(GridView1.Rows[i].Cells[3].Text);
            i++;

        }
        TotalLabel.Text = total.ToString();
        
        
    //    GridView1.DataBind();


       
        
    
      // ProductManager.DeleteTempOrder(order_id);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        //  String order_id ="CO" + DateTime.Now.Year + DateTime.Now.Month+DateTime.Now.Day+DateTime.Now.Hour+DateTime.Now.Minute+DateTime.Now.Second ;
        //  ProductManager.AddCusOrder(order_id, "Ashan", 0, 0, DateTime.Now.AddDays(60).ToString(), DateTime.Now.ToString());



        //  Response.Redirect("MenuSelected.aspx?order_id="+order_id);

        int i = 0;
        String item_no = "";




        int qnty = 0;
        int amount = 0;
        string order_id = Request.QueryString["order_id"];
        String dd = ddDropDownList.SelectedValue;
        String mm = mmDropDownList.SelectedValue;
        String yy = yyDropDownList.SelectedValue;
        String order_date = yy + "-" + dd + "-" + mm + "--";
        order_date = order_date + TimeDropDownList.SelectedValue + "-" + DropDownList1.SelectedValue; ;
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


        try
        {


            foreach (GridViewRow row in GridView1.Rows)
            {

                if (row.RowType == DataControlRowType.DataRow)
                {

                    qnty = int.Parse(GridView1.Rows[i].Cells[2].Text);

                    amount = int.Parse(GridView1.Rows[i].Cells[3].Text);
                    DataSet dataset = ProductManager.ShowBase_MenuItemID(GridView1.Rows[i].Cells[0].Text);
                    item_no = dataset.Tables["Base_Menu_ItemID"].Rows[0]["item_no"].ToString();


                    ProductManager.UpdateCusOrderDes(order_id, item_no, qnty, amount);


                }
                i++;

            }
            ProductManager.UpdateCusOrder(order_id, CustomerIdLabel.Text, int.Parse(TotalLabel.Text), int.Parse(TotalNoILabel.Text), order_date, DateTime.Now.Date.ToString(), ShippingAddTextBox.Text, paymentType);


        }

        catch
        {
            Response.Redirect("../ErrorPage2.aspx?message=Error Occured.");

        }
       SendMail();
     Response.Redirect("CustomerOrderSuccess.aspx");
 
 
    }


    protected void SendMail()
    {

        try
        {
            MailMessage mm = new MailMessage("shenalifoods@gmail.com", (String)Session["email"]);
            mm.Subject = "Shenali Restaurant Order Item Details";
            mm.Body = "Order No " + OrderNoLabel.Text + "<br /><br />Customer Name: " + CustomerNameLabel.Text + "<br />" + "Delivery Address: " + ShippingAddTextBox.Text + "<br />" + "Body: " + OrderNoLabel.Text + "<br/>" + "Other Realated Data";
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
        Response.Redirect("MenuGrid.aspx");
    }
}