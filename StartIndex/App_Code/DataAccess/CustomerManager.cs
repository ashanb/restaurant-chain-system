using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using Oracle.DataAccess.Client;

/// <summary>
/// Summary description for Class1
/// </summary>
public class CustomerManager
{
	public CustomerManager()
	{}

    public static void AddCustomer(string textBox1, string textBox2, String textBox3, string textBox4, String textBox5, String textBox6, String textBox7, String textBox8,int step) 
   
    {

        string sql="";
        
        if (step == 1)
        {
            sql = "INSERT INTO BASE_Customer_details (NIC, EMAIL, CONTACT_NO, ADDRESS1, DOB, SEX, FIRST_NAME, LAST_NAME) VALUES ('" + textBox1 + "','" + textBox2 + "','" + textBox3 + "','" + textBox4 + "',to_date(" + textBox5 + ",'dd.mm.yy'),'" + textBox6 + "','" + textBox7 + "','" + textBox8 + "')";
        }
         else if (step == 2)
        {
            sql = "INSERT INTO BASE_customers (CUSTOMER_USERNAME, APP_NAME, NIC, PASSWORD, PASSWORD_QUES, PASSWORD_ANS)  VALUES ('" + textBox1 + "','" + textBox2 + "','" + textBox3 + "','" + textBox4 + "','" + textBox5 + "','" + textBox6 + "')";
         }

        OracleConnection connection = ConnectionManager.OraConnection();
        
          OracleCommand command = new OracleCommand(sql, connection);
        command.CommandType = CommandType.Text;
        

          command.ExecuteNonQuery();

    }
	
}