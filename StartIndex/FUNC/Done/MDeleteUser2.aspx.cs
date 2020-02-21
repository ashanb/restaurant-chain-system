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
        if (Session["username"] == null || usertype != "Admin")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }

        if (!IsPostBack)
        {
            string username = Request.QueryString["username"];


            Master.HeadingMessage = "Deleting a User from the System";
            UserNInput.Text = username;

            try
            {
               
                DataSet dataSet1 = ProductManager.ShowBase_User(username);

              //  String username = dataSet1.Tables["Base_users"].Rows[0]["Username"].ToString();
                String app_name = dataSet1.Tables["Base_user"].Rows[0]["App_Name"].ToString();
                String nic = dataSet1.Tables["Base_user"].Rows[0]["NIC"].ToString();
                

                DataSet dataSet2 = ProductManager.ShowBase_UserDetail(nic);


                
                String email = dataSet2.Tables["Base_user_details"].Rows[0]["email"].ToString();
                String f_name = dataSet2.Tables["Base_user_details"].Rows[0]["first_name"].ToString();
                String l_name = dataSet2.Tables["Base_user_details"].Rows[0]["last_name"].ToString();
                
                UserNInput.Text = username;
                AppNLabel.Text = app_name;
                NICLabel.Text = nic;

                EmailLabel.Text = email;
               
                FNLabel.Text = f_name;
                LNLabel.Text = l_name;
          
              //  output.Text = "Successfully Loaded!..";
                
            }
            catch
            {
                Master.HeadingMessage = "Delete fails due to not valid input,No related information";
            }





        }


    }

    
    protected void Delete(object sender, EventArgs e)
    {
       
       
        try
        {


            ProductManager.Delete_User(UserNInput.Text);
          output.Text = "Successfully Deleted!..";


        }
        catch
        {
            //Master.ErrorMessage = ex.Message;
            output.Text = "Can not Delete";
        }



    }
}