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
public partial class ViewOnlineOrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        orderinfo.Visible = false;
        Master.HeadingMessage = "Viewing Online Order Information";
        String order_id = Request.QueryString["order_id"];
        if (order_id != null)
        {
            orderinfo.Visible = true;

            DataSet dataset =ProductManager.ShowBase_Online_Orders(order_id);
            TextBox1.Text = dataset.Tables["Base_orders"].Rows[0]["order_id"].ToString();
           String customer_id = dataset.Tables["Base_orders"].Rows[0]["customer_id"].ToString();
           TextBox2.Text = customer_id;

            int type = int.Parse(dataset.Tables["Base_orders"].Rows[0]["type"].ToString());

            if (type == 1)
            {
                DataSet dataset1 = ProductManager.Valid_User_details(customer_id);
                TextBox3.Text = dataset1.Tables["Valid_User_details"].Rows[0]["first_name"].ToString() + " " + dataset1.Tables["Valid_User_details"].Rows[0]["last_name"].ToString();
                TextBox4.Text = dataset1.Tables["Valid_User_details"].Rows[0]["contact_no"].ToString();
                TextBox5.Text = dataset1.Tables["Valid_User_details"].Rows[0]["email"].ToString();
            }
            else if(type==0)
            {
                DataSet dataset2 = ProductManager.Valid_Customer_details(customer_id);
                TextBox3.Text = dataset2.Tables["Valid_Customer_details"].Rows[0]["first_name"].ToString() + " " + dataset2.Tables["Valid_Customer_details"].Rows[0]["last_name"].ToString();
                TextBox4.Text = dataset2.Tables["Valid_Customer_details"].Rows[0]["contact_no"].ToString();
                TextBox5.Text = dataset2.Tables["Valid_Customer_details"].Rows[0]["email"].ToString();
            }


            TextBox7.Text = dataset.Tables["Base_orders"].Rows[0]["order_date"].ToString();
            TextBox6.Text = dataset.Tables["Base_orders"].Rows[0]["Deliver_Status"].ToString();
           


        }
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        ProductManager.Delete_ZeroOrders();
        Response.Redirect("MViewOnlineOrders.aspx");
    }
}