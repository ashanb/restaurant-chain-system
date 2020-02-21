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
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        try
        {

            String tb1 = UserNTextBox.Text;
            String tb2 = AppNTextBox.Text;
            String tb3 = NICTextBox.Text;
            String tb4 = PasswordTextBox.Text;
            String tb5 = PasswordQTextBox.Text;
            String tb6 = PasswordAnsTextBox.Text;

            
            
            String tb8 = LocationTextBox.Text;
          

    

            int step = 2;
            
            
            
            ProductManager.AddUser(tb1,tb2,tb3,tb4,tb5,tb6,"Admin",tb8,"",step);
         
            output.Text = "Successfull";


            
        }
        catch (OracleException ex)
        {
            //Master.ErrorMessage = ex.Message;
            output.Text = "Cannot add product.";
        }


    }







   
}