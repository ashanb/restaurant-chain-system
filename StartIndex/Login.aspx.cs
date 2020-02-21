using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String username = UserNameTextBox.Text;
        String password = PasswordTextBox.Text;
        int i = 0;
        int ac = 0;
       
            if (password.Length > 7)
            {
                String type = "";
                DataSet dataset = ProductManager.Valid_User_Info(username);
                try
                {
                    type = dataset.Tables["Valid_User_Info"].Rows[0]["status"].ToString();
                }
                catch
                {
                    output.Text = "username/password incorrect";
                    return;
                }

                if (type != "Enabled")
                {
                    output.Text = "Your Account has been disabled.Contact Adiministrator";
                    return;
                }

                try
                {
                    
                    ac = int.Parse(dataset.Tables["Valid_User_Info"].Rows[0]["Failed_Pass_Attempt"].ToString());
                }
                catch
                {
                    ac = 0;
                }

                  if (ac < 3)
                  {


                      i = ProductManager.Validate_User(username, password);
                      if (i == 1)
                      {
                          // DataSet dataset = ProductManager.Valid_User_details(username);

                          // String app_name = dataset.Tables["Valid_User_details"].Rows[0][""].ToString();
                          //  String nic = dataset.Tables["Valid_User_details"].Rows[0]["NIC"].ToString();
                          try
                          {




                              String nic = dataset.Tables["Valid_User_Info"].Rows[0]["NIC"].ToString();
                              String userType = dataset.Tables["Valid_User_Info"].Rows[0]["User_Type"].ToString();
                              String user_location = dataset.Tables["Valid_User_Info"].Rows[0]["location_id"].ToString();

                              //  ----------------------------------------------------------------------------------
                              //  HttpCookie cookie = new HttpCookie("UserInfo");
                              // cookie["username"] = username;
                              //  cookie.Expires = DateTime.Now.AddMinutes(6);
                              //  Response.Cookies.Add(cookie);

                              DataSet dataset2 = ProductManager.Valid_User_detail_Info(nic);
                              String email = dataset2.Tables["Valid_User_detail_Info"].Rows[0]["email"].ToString();

                              Session["username"] = username;
                              Session["usertype"] = userType;
                              Session["nic"] = nic;
                              Session["location_id"] = user_location;
                              Session["email"] = email;

                              //Response.Redirect("GreetingMsg.aspx?username=" + userType);
                              ProductManager.failed_pass(username,0);
                              Response.Redirect("GreetingMsg.aspx");

                          }
                          catch
                          {
                              output.Text = "Fails to load";
                          }

                      }
                      else if (i == 0)
                      {
                          output.Text = "username/password incorrect";
                          try
                          {
                              
                              ac = ac + 1;
                              ProductManager.failed_pass(username, ac);
                              output0.Text = "no of trys left :" + (3 - ac); 
                          }
                          catch
                          {
                          }
                      }
                  }



                  else
                  {
                      Response.Redirect("passwordQ.aspx?username="+username);

                  }


            }
            else if (password.Length < 7)
            {
                i = ProductManager.Validate_Customer(username, password);
                if (i == 1)
                {
                
                    try
                    {
                        DataSet dataset = ProductManager.Valid_Customer_Info(username);


                        String nic = dataset.Tables["Valid_Customer_Info"].Rows[0]["NIC"].ToString();


               

                        DataSet dataset2 = ProductManager.Valid_Customer_detail_Info(nic);
                        String email = dataset2.Tables["Valid_Customer_detail_Info"].Rows[0]["email"].ToString();


                        Session["username"] = username;
                        Session["nic"] = nic;
                        Session["usertype"] = "Customer";
                        Session["email"] = email;


                        //Response.Redirect("GreetingMsg.aspx?username=" + userType);
                        Response.Redirect("GreetingMsg.aspx");

                    }
                    catch
                    {
                        output.Text = "Fails to load";
                    }

                }
                else if (i == 0)
                {
                    output.Text = "username/password incorrect";
                    
                }
            }
            else
            {
                output.Text = "username/password incorrect";
            }

       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        UserNameTextBox.Text = "";
        PasswordTextBox.Text = "";
    }
}