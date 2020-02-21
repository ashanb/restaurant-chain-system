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
public partial class FUNC_Done_MAddCustomerAccount : System.Web.UI.Page
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

            String tb1 = LocationITextBox.Text;
            String tb2 = NameTextBox.Text;
            string tb3 = AddressTextBox.Text;




            ProductManager.Add_Location(tb1, tb2, tb3);

            output.Text = "Successfull";



        }
        catch (OracleException ex)
        {
            //Master.ErrorMessage = ex.Message;
            output.Text = "Unsuccessfull";
        }


    }











    protected void NameTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}