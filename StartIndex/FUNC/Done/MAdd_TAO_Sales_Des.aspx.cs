﻿using System;
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
public partial class RTSalesDes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
     
        Master.HeadingMessage = "Take-Away-Outlet :Adding Items to the Bill";
        SalesIDLabel.Text = Request.QueryString["sales_id"];
        String sales_id = Request.QueryString["sales_id"];

        
        String sales_item_no = Request.QueryString["sales_item_no"];

        if (sales_item_no != null)
        {
            ProductManager.Delete_TAO_sales_des(sales_id, sales_item_no);
        }

    }
    protected void Add(object sender, EventArgs e)
    {

        int count = 0;
        try
        {
            DataSet dataset = ProductManager.ShowBase_ItemnoisCorrectTAO(ItemNoLabel.Text, UnitPriceTextBox.Text);

            String tester = dataset.Tables["Base_itemnoisCorrectTAO"].Rows[0]["item_no"].ToString();
            count = 1;
        }

        catch
        {
            count = 0;
        }

        if (count == 0)
        {
            ItemNoMatchLabel.Text = "Item No and Unit Price MisMatch";
            return;
        }
        else if (count == 1)
        {
            ItemNoMatchLabel.Text = "";
        }
        String sales_id =Request.QueryString["sales_id"];
////

/////
        ProductManager.AddTAOSale_Des(sales_id,ItemNoLabel.Text,int.Parse(QuantityTextBox.Text),int.Parse(UnitPriceTextBox.Text) * int.Parse(QuantityTextBox.Text));


       
       Response.Redirect("MAdd_TAO_Sales_Des.aspx?sales_id=" + sales_id);
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String item_name =DropDownList1.SelectedItem.ToString();
          DataSet dataset =ProductManager.ShowBase_TAO_NameitemJoin(item_name);
         String item_no = dataset.Tables["Base_TAO_NameItemJoin"].Rows[0]["item_no"].ToString();
        ItemNoLabel.Text = item_no;

        DataSet dataset2 =ProductManager.ShowBase_TAO_items(item_no);
      UnitPriceTextBox.Text = dataset2.Tables["Base_TAO_items"].Rows[0]["unit_price"].ToString();
            
       

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        String sales_id = Request.QueryString["sales_id"];

        //  output.Text = "Ashan";
        int i = 0;
        int total = 0;

        DataSet dataset = ProductManager.ShowBase_SalesTotValueTAO(sales_id);

        int count = dataset.Tables["Base_SalesTotValueTAO"].Rows.Count;

        while (i < count)
        {

            total = total + int.Parse(dataset.Tables["Base_SalesTotValueTAO"].Rows[i]["amount"].ToString());
            i++;
        }
      //  SaleNameLabel.Text = total + "";


        // String item_name = dataset.Tables["Base_SalesTotValue"].Rows[0]["item_name"].ToString();

        try
        {
            ProductManager.UpdateTAO_Sale(sales_id, "Default", total, "Cash", "No", DateTime.Now.ToString(), (String)Session["username"]);
            Response.Redirect("MAdd_TAO_Sales_Report.aspx?sales_id=" + sales_id);
        }
        catch
        {

        }
      
    }


    protected void CancelButton_Click(object sender, EventArgs e)
    {

    }
}