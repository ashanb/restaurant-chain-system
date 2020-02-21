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
public partial class BKSalesReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        Master.HeadingMessage = "Restaurant Item Billing Page";
        NotAddedLabel.Text = "";
      
        String sales_id = Request.QueryString["sales_id"];


        String sales_item_no = Request.QueryString["sales_item_no"];

        if (sales_item_no != null)
        {
            ProductManager.Delete_RT_sales_des(sales_id, sales_item_no);
        }
     //----------------------------------------------------
        int i = 0;
        int total = 0;

        DataSet dataset = ProductManager.ShowBase_SalesTotValueRT(sales_id);

        int count = dataset.Tables["Base_SalesTotValueRT"].Rows.Count;

        while (i < count)
        {

            total = total + Convert.ToInt32(dataset.Tables["Base_SalesTotValueRT"].Rows[i]["amount"].ToString());
            i++;
        }
        SILabel.Text = sales_id;
        TILabel.Text = count + "";
        TALabel.Text = total + "";


    }
    protected void Paid(object sender, EventArgs e)
    {
        String sales_id = Request.QueryString["sales_id"];
        int i = 0;
        int total = 0;
        //
        String tb1 = "";
        int tb2 = 0;
        String tb3 = DateTime.Now.ToString();
        String tb4 = (String)Session["username"];
        int Qnty =0;
        int count2 = 0;
        int buffer =0;
        //
        DataSet dataset = ProductManager.ShowBase_SalesTotValueRT(sales_id);

        int count = dataset.Tables["Base_SalesTotValueRT"].Rows.Count;

        while (i < count)
        {

            total = total + int.Parse(dataset.Tables["Base_SalesTotValueRT"].Rows[i]["amount"].ToString());
            tb1 = dataset.Tables["Base_SalesTotValueRT"].Rows[i]["sales_item_no"].ToString();
            tb2 = int.Parse(dataset.Tables["Base_SalesTotValueRT"].Rows[i]["qnty"].ToString());
            DataSet ds = ProductManager.ShowBase_ItemName(tb1);
            String iname = ds.Tables["Base_item_name"].Rows[0]["item_name"].ToString();

            DataSet dataset1 = ProductManager.currentQV(tb1, "RT");
             Qnty= int.Parse(dataset1.Tables["Base_current_qv"].Rows[0]["Q_AV"].ToString());
             buffer= int.Parse(dataset1.Tables["Base_current_qv"].Rows[0]["buffer_q"].ToString());
             tb2 = Qnty - tb2;

             if (tb2< 0)
             {
                 count2++;
                 tb2 = 0;
             }
             if (tb2 < buffer)
             {
                 String Msg = "Msg" + DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() +DateTime.Now.Millisecond.ToString();
                 ProductManager.Add_Message(Msg, tb4, DateTime.Now.ToString(),iname+"'s quantity is getting low","From Restaurant Section","All Users", "","Unread");
             }
                 ProductManager.updateItems(tb1, tb2, tb3, tb4, "RT");
             
            i++;
        }
        ProductManager.UpdateRT_Sale(sales_id, "Default", total, "Cash", "Paid", DateTime.Now.ToString(), tb4);

       

        
        /////

        if (count2 > 0)
        {
            NotAddedLabel.Text = "Saled items still not added to the stock";
            count2 = 0;
        }
  
       
        
     
     
/////



        Response.Redirect("MAdd_RT_StartSale.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        String sales_id = Request.QueryString["sales_id"];
        ProductManager.Del_RT_sales_des(sales_id);
        ProductManager.Del_RT_sales(sales_id);
        Response.Redirect("MHome.aspx");

    }
    protected void AddMoreButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("MAdd_RT_Sales_Des.aspx?sales_id=" + Request.QueryString["sales_id"]);
    }
}