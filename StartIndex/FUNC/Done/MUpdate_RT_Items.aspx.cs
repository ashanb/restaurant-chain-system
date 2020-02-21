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
public partial class UpdateRT_Items : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        Master.HeadingMessage = "Update Items from the Restaurant Stock";
    }
    protected void Add(object sender, EventArgs e)
    {


        try
        {

            String tb1 = DropDownList1.SelectedValue;
            int tb2 = int.Parse(AddATextBox.Text);

            String tb3 = DateTime.Now.ToString();
            String tb4 = (String)Session["username"];

            DataSet dataset = ProductManager.currentQV(tb1, "RT");
            int Q_AV = int.Parse(dataset.Tables["Base_current_qv"].Rows[0]["Q_AV"].ToString());

            tb2 = tb2 + Q_AV;


            ProductManager.updateItems(tb1, tb2,tb3,tb4 ,"RT");

            output.Text = "Successfull";
        }




        catch
        {

            output.Text = "Unsuccessful add detail";

        }

    }








    protected void UPTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}