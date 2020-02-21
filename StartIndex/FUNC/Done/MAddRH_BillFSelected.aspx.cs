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
public partial class MRHRSelected : System.Web.UI.Page
{
    public static int aval = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        string Bill_id = Request.QueryString["Bill_id"];
        BillNoLabel.Text = Bill_id;


        int i = 0;
        int total = 0;
        String nic = (String)Session["nic"];
        String username = (String)Session["username"];

    
        TotalNoILabel.Text = GridView1.Rows.Count.ToString();
        while (i < GridView1.Rows.Count)
        {

            total = total + int.Parse(GridView1.Rows[i].Cells[4].Text);
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
        int k = 0;
        int j = 0;

        String bill_id = BillNoLabel.Text;

        String paymentType="Cash";
       
        
        String tb1 = NIDTextBox.Text;
        String tb2 = EmailTextBox.Text;
        String tb3 = CNTextBox.Text;
        String tb4 = AddressTextBox.Text;
        String tb51 = ddTextBox.Text;
        String tb52 = monTextBox.Text;
        String tb53 = yTextBox.Text;
        String tb5 = tb51 + tb52 + tb53;





        String tb6 = "";
        if (MaleRadioButton.Checked)
        {
            tb6 = "Male";
        }
        else
        {
            tb6 = "Female";
        }
        String tb7 = FNTextBox.Text;
        String tb8 = LNTextBox.Text;


        if (aval == 0)
        {

            ProductManager.AddCustomer_Detail(tb1, tb2, tb3, tb4, tb5, tb6, tb7, tb8);
        }
        else if(aval ==1)
        {
            ProductManager.UpdateCustomer_detail(tb1, tb2, tb3, tb4, tb5, tb6, tb7, tb8);
        }

         try
         {

             ProductManager.UpdateRHbill(bill_id, tb1, int.Parse(TotalLabel.Text), paymentType, "No", "no", (String)Session["username"], DateTime.Now.ToString(), (String)Session["username"], int.Parse(TotalNoILabel.Text));
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


                j = int.Parse((bookingE - bookingS).TotalDays.ToString());

                k = 0;
                while (k <= j)
                {

                    ProductManager.Add_Room_Reservation(room_id, bookingS.AddDays(k));


                    k++;
                }



            }
            i++;

         }

        }
        catch
        {
            OutLabel.Text = "UnSuccessFul";
        }
         OutLabel.Text = "Successful..";
   
    }

    protected void NIDTextBox_TextChanged(object sender, EventArgs e)
    {
        try
        {
            DataSet dataSet = ProductManager.ShowBase_CustomerDetail(NIDTextBox.Text);


            EmailTextBox.Text = dataSet.Tables["Base_Customer_details"].Rows[0]["Email"].ToString();
            CNTextBox.Text = dataSet.Tables["Base_Customer_details"].Rows[0]["Contact_no"].ToString();
            AddressTextBox.Text = dataSet.Tables["Base_Customer_details"].Rows[0]["Address1"].ToString();
            String dob = dataSet.Tables["Base_Customer_details"].Rows[0]["DOB"].ToString();
            String sex = dataSet.Tables["Base_Customer_details"].Rows[0]["Sex"].ToString();
            FNTextBox.Text = dataSet.Tables["Base_Customer_details"].Rows[0]["first_name"].ToString();
            LNTextBox.Text = dataSet.Tables["Base_Customer_details"].Rows[0]["last_name"].ToString();



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
            aval = 1;
        }
        catch
        {
            aval = 0;


            EmailTextBox.Text = "";
            CNTextBox.Text = "";
            AddressTextBox.Text = ""; ;
         
            FNTextBox.Text = "";
            LNTextBox.Text = "";

            ddTextBox.Text = "";
            monTextBox.Text = "";
            yTextBox.Text = "";
           
            MaleRadioButton.Checked = true;
      




        }

    }
}