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

            String tb1 = UserNTextBox.Text;
            String tb2 = AppNTextBox.Text;
            String tb3 = NICTextBox.Text;
            String tb4 = PasswordTextBox.Text;
            String tb5 = PasswordQTextBox.Text;
            String tb6 = PasswordAnsTextBox.Text;



           




            int step = 2;



            CustomerManager.AddCustomer(tb1, tb2, tb3, tb4, tb5, tb6,"","", step);

            output.Text = "Successfull";



        }
        catch (OracleException ex)
        {
            //Master.ErrorMessage = ex.Message;
            output.Text = "Cannot add product.";
        }


    }










}