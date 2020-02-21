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
        Master.HeadingMessage = "Add New Company Detail";
    }
    protected void Add(object sender, EventArgs e)
    {


        try
        {
            String tb1 = CompanyIDTextBox.Text;
            String tb2 = NameTextBox.Text;
            String tb3 = Address1TextBox.Text;
            String tb4 = Address2TextBox.Text;
            String tb5 = ProvinceTextBox0.Text;
            String tb6 = CityTextBox.Text;
            String tb7 = Phone1TextBox.Text;
            String tb8 = Phone2TextBox.Text;
            String tb9 = FaxTextBox0.Text;
            String tb10 = EmailTextBox1.Text;
            String tb11 = WebTextBox.Text;
            String tb12 = ContactNameTextBox.Text;
            String tb13 = ContactTTextBox4.Text;
         
            String tb14 = DateTime.Now.ToString();
            String tb15 = (String)Session["username"];
            String tb16= DateTime.Now.ToString();
            String tb17 = (String)Session["username"];



           // Master.HeadingMessage=tb1+tb2+tb3+tb4+tb5+tb6+tb7+tb8+tb9+tb10+tb11+tb12+tb13+tb14+tb15+tb16+tb17;

            ProductManager.AddCompany_Detail(tb1, tb2, tb3, tb4, tb5, tb6, tb7, tb8, tb9, tb10, tb11, tb12, tb13, tb14, tb15, tb16,tb17);
          
            output.Text = "Successfull";



        }
        catch (OracleException ex)
        {
            //Master.ErrorMessage = ex.Message;
            output.Text = "Unsuccessful add detail";
        }


    }







  
}