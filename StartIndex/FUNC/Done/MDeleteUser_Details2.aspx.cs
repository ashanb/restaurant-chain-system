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
            string nic = Request.QueryString["nic"];


            Master.HeadingMessage = "Deleting a User_detail from the System";
            NICInput.Text = nic;

            try
            {
                DataSet dataSet = ProductManager.ShowBase_UserDetail(nic);

                String email = dataSet.Tables["Base_user_details"].Rows[0]["Email"].ToString();
                String conatct_no = dataSet.Tables["Base_user_details"].Rows[0]["Contact_no"].ToString();
                String address1 = dataSet.Tables["Base_user_details"].Rows[0]["Address1"].ToString();
                String dob = dataSet.Tables["Base_user_details"].Rows[0]["DOB"].ToString();
                String sex = dataSet.Tables["Base_user_details"].Rows[0]["Sex"].ToString();
                String f_name = dataSet.Tables["Base_user_details"].Rows[0]["first_name"].ToString();
                String l_name = dataSet.Tables["Base_user_details"].Rows[0]["last_name"].ToString();


                
                EmailLabel.Text = email;
                CNLabel.Text = conatct_no;
                AddressLabel.Text = address1;

                DOBLabel.Text = dob;
                
                SexLabel.Text = sex;
                FNLabel.Text = f_name;
                LNLabel.Text = l_name;
          
              //  output.Text = "Successfully Updated!..";
                
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


            ProductManager.Delete_User_Detail(NICInput.Text);
          output.Text = "Successfully Deleted!..";


        }
        catch
        {
            //Master.ErrorMessage = ex.Message;
            output.Text = "Can not Delete";
        }



    }
}