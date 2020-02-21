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
public partial class FUNC_OK_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        Master.HeadingMessage = "Add New Item Description";
    }
    protected void Add(object sender, EventArgs e)
    {


       try
       {
            String tb1 = ItemNoTextBox.Text;
            String tb2 = ItemNTextBox.Text;
            String tb3 = CategoryITextBox.Text;
            String tb4 = CompanyITextBox.Text;
            String tb5 = AllTTextBox.Text;
            int tb6 = int.Parse(ItemSTextBox.Text);
            String tb7 = ItmeTTextBox.Text;
            
         
            String tb8 = DateTime.Now.ToString();
            String tb9 = (String)Session["username"];
            String tb10= DateTime.Now.ToString();
            String tb11 = (String)Session["username"];



           
            ProductManager.AddItem_des(tb1, tb2, tb3, tb4, tb5, tb6, tb7, tb8, tb9, tb10, tb11);
          
            output.Text = "Successfull";



       }
       catch
        {
          
            output.Text = "Unsuccessful add detail";
       }


   }







  
}