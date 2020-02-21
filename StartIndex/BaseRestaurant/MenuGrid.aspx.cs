using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class BaseRestaurant_MenuGrid : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {





    }

    

    protected void OrderButton_Click(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../InfoErrorPage.aspx");
        }
 
        int i = 0;
        int j =0;
        int amount = 0;
     
        int orderAmount = 0;
        String item_no = "";
        String order_id ="CO" + DateTime.Now.Year + DateTime.Now.Month+DateTime.Now.Day+DateTime.Now.Hour+DateTime.Now.Minute+DateTime.Now.Second ;
        String usertype = (String)Session["usertype"];
        int type= 0;
        if(usertype.Equals("Customer"))
        {
            type = 0;
        }
        else
        {
            type = 1;   
        }

        ProductManager.AddCusOrder(order_id, (String)Session["username"], 0, 0, DateTime.Now.AddDays(60).ToString(), DateTime.Now.ToString(),type);
        
        
        foreach (GridViewRow row in GridView1.Rows)
   
        {
            
           if (row.RowType == DataControlRowType.DataRow)
            {
                TextBox textBox = row.FindControl("OrderTB") as TextBox;
                if (textBox.Text != "")
                {

                    if (int.Parse(textBox.Text) > 0 && (GridView1.Rows[i].Cells[1].Text =="Yes"||GridView1.Rows[i].Cells[1].Text =="yes"))
                    {                  
                        orderAmount = int.Parse(textBox.Text);   
                         amount= int.Parse(GridView1.Rows[i].Cells[2].Text) * orderAmount;
                
                        DataSet dataset = ProductManager.ShowBase_MenuItemID(GridView1.Rows[i].Cells[0].Text);
                        item_no = dataset.Tables["Base_Menu_ItemID"].Rows[0]["item_no"].ToString();
                        ProductManager.AddCusOrderDes(order_id,item_no,orderAmount,amount);

                        j++;

                    }
                }
                   
            }
           i++;
           
        }
        Response.Redirect("MenuSelected.aspx?order_id="+order_id);
      
    }
    
}