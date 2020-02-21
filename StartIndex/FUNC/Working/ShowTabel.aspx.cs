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
            String nic= UserNTextBox.Text;
            DataSet dataSet = ProductManager.ShowBase_UserDetail(nic);

            DataView view1 = new DataView(dataSet.Tables["Base_user_Details"]);
            view1.AllowEdit = true;
            view1.AllowDelete = true;
            view1.Sort = "nic";

            GridView1.DataSource = view1;
            DataBind();

       //     Master.ResultMessage = "Command completed successfully.";
         
            output.Text = "Successfull";


            
        }
        catch (OracleException ex)
        {
            //Master.ErrorMessage = ex.Message;
            output.Text = "Cannot add product.";
        }


    }









  
}