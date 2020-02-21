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
public partial class Add_item_Category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
    }
    protected void Submit(object sender, EventArgs e)
    {


        try
        {

            String tb1 = ItemCTextBox.Text;
            String tb2 = NameTextBox.Text;
            String tb3 = DateTime.Now.ToString();
            String tb4 = (String)Session["username"];
            String tb5 = DateTime.Now.ToString();
            String tb6 = (String)Session["username"];




            ProductManager.AddItem_Category(tb1, tb2, tb3, tb4, tb5, tb6);

            output.Text = "Successfull";



        }
        catch
        {
            //Master.ErrorMessage = ex.Message;
            output.Text = "Unsuccessfull";
        }


    }











}