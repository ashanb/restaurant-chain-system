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


            Master.HeadingMessage = "Updating User Details";
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


                
                EmailTextBox.Text = email;
                CNTextBox.Text = conatct_no;
                AddressTextBox.Text = address1;
                
                ddTextBox.Text = dob.Substring(3,2);
                monTextBox.Text = dob.Substring(0, 2);
                yTextBox.Text = dob.Substring(8, 2);
                SexTextBox.Text = sex;
                FNTextBox.Text = f_name;
                LNTextBox.Text = l_name;
          
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
        String tb1 = NICInput.Text;
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
       
        try
        {
         ProductManager.UpdateUser(tb1,tb2, tb3, tb4, tb5, tb6, tb7, tb8);

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