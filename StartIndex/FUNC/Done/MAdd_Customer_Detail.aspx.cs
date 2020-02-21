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

public partial class FUNC_Done_mCustermer : System.Web.UI.Page
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
    protected void Add(object sender, EventArgs e)
    {


        try
        {
            String tb1 = NIDTextBox.Text;
            String tb2 = EmailTextBox.Text;
            String tb3 = CNTextBox.Text;
            String tb4 = AddressTextBox.Text;
            String tb51 = ddTextBox.Text;
            String tb52 = monTextBox.Text;
            String tb53 = yTextBox.Text;
            String tb5 = tb51 + tb52 + tb53;

            String tb6 = SexTextBox.Text;
            String tb7 = FNTextBox.Text;
            String tb8 = LNTextBox.Text;
            int step = 1;



            CustomerManager.AddCustomer(tb1, tb2, tb3, tb4, tb5, tb6, tb7, tb8, step);
            
            output.Text = "Successfull";



        }
        catch (OracleException ex)
        {
            //Master.ErrorMessage = ex.Message;
            output.Text = "Cannot add product.";
        }


    }



    protected void NIDTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}