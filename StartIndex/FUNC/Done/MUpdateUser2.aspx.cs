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

public partial class FUNC_Done_updatec2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        if (!IsPostBack)
        {
            string username = Request.QueryString["username"];


            Master.HeadingMessage = "Updating User Stage2";
            InputUserName.Text = username;

            try
            {
                DataSet dataSet = ProductManager.ShowBase_User(username);

                String app_name = dataSet.Tables["Base_user"].Rows[0]["APP_NAME"].ToString();
                

                TextBox1.Text = app_name;
           
          
              //  output.Text = "Successfully Updated!..";
                
            }
            catch
            {
                Master.HeadingMessage = "Update fails due to not valid input,No related information";
            }





        }


    }

    
    protected void Save(object sender, EventArgs e)
    {
        String tb1 = InputUserName.Text;
        String tb2 = TextBox1.Text;
        String tb3 = TextBox2.Text;
      
  
        try
        {
         ProductManager.UpdateUserA(tb1,tb2,tb3);

          //  output.Text = tb1 + tb2 + tb3 + tb4 + tb5 + tb6 + tb7 + tb8;
          output.Text = "Successfully Updated!..";


        }
        catch
        {
            //Master.ErrorMessage = ex.Message;
            output.Text = "Can not Update";
        }



    }
    protected void SexTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}