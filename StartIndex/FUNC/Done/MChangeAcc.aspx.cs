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

public partial class ChangeAcc : System.Web.UI.Page
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
            string username = (String)Session["username"];

            Master.HeadingMessage = "Change Account Details";
    
            InputUserName.Text = username;

            try
            {
                DataSet dataSet = ProductManager.ShowBase_User(username);

                String app_name = dataSet.Tables["Base_user"].Rows[0]["APP_NAME"].ToString();
                String Pass_ques = dataSet.Tables["Base_user"].Rows[0]["Password_ques"].ToString();
                String Pass_ans = dataSet.Tables["Base_user"].Rows[0]["Password_ans"].ToString();
                

                TextBox1.Text = app_name;
                pqTextBox.Text = Pass_ques;
                paTextBox.Text = Pass_ans;
           
          
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
        String username = (String)Session["username"];
        DataSet dataSet = ProductManager.ShowBase_User(username);

        String password = dataSet.Tables["Base_user"].Rows[0]["password"].ToString();
        if (password != CPassTextBox.Text)
        {
            Label12.Text = "Invalid Current Password";
            return;
     
        }
        Label12.Text = "";
      
        String tb1 = InputUserName.Text;
        String tb2 = TextBox1.Text;
        String tb3 = TextBox2.Text;
        String tb4 = pqTextBox.Text;
        String tb5 = paTextBox.Text;
      
  
        try
        {
            ProductManager.changeAcc(tb1, tb2, tb3,tb4,tb5);

          //  output.Text = tb1 + tb2 + tb3 + tb4 + tb5 + tb6 + tb7 + tb8;
          output.Text = "Successfully Updated!..";


        }
        catch
        {
            //Master.ErrorMessage = ex.Message;
            output.Text = "Can not Update";
        }



    }
   

}