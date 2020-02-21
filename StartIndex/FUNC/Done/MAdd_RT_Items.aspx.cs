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
public partial class AddRT_Items : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        Master.HeadingMessage = "Adding new Items to the Restaurant Stock";
    }
    protected void Add(object sender, EventArgs e)
    {
       // DataSet dataset = ProductManager.ShowRTItems();

      //  String a_av = dataset.Tables["Base_RTItems"].Rows[0]["av"].ToString();
        // Ajax functionality must be implemented here...

        try
        {
            String tb1 = ItemNoTextBox.Text;
            int tb2 = int.Parse(AddATextBox.Text);
            float tb3 = float.Parse(UPTextBox.Text);
            int tb4 = int.Parse(Buffer_QTextBox.Text);
            
            
         
            String tb5 = DateTime.Now.ToString();
            String tb6 = (String)Session["username"];
            String tb7= DateTime.Now.ToString();
            String tb8 = (String)Session["username"];

            String tb9 = "RT";

           
            ProductManager.AddItems(tb1, tb2, tb3, tb4, tb5, tb6, tb7, tb8,tb9);
          
            output.Text = "Successfull";



        }
        catch (OracleException ex)
        {
          
            output.Text = "Unsuccessful add detail";
        }


    }








    protected void UPTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}