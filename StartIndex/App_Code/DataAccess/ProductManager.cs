using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Oracle.DataAccess.Client;
public class ProductManager
{
  
    
   public static void AddUser(string textBox1, string textBox2, String textBox3, string textBox4, String textBox5, String textBox6, String textBox7, String textBox8,String textBox9,int step) 
   
    {
        string sql="";
        if (step == 1)
        {
            sql = "INSERT INTO BASE_USER_DETAILS (NIC, EMAIL, CONTACT_NO, ADDRESS1, DOB, SEX, FIRST_NAME, LAST_NAME) VALUES ('" + textBox1 + "','" + textBox2 + "','" + textBox3 + "','" + textBox4 + "',to_date(" + textBox5 + ",'dd.mm.yy'),'" + textBox6 + "','" + textBox7 + "','" + textBox8 + "')";
        }
        else if (step == 2)
        {
            sql = "INSERT INTO BASE_USERS VALUES ('" + textBox1 + "','" + textBox2 + "','" + textBox3 + "','" + textBox4 + "','" + textBox5 + "','" + textBox6 + "','','',0,'" + textBox7 + "','"+textBox8+"','"+textBox9+"')";
        }

        OracleConnection connection = ConnectionManager.OraConnection();
        
          OracleCommand command = new OracleCommand(sql, connection);
        command.CommandType = CommandType.Text;


        command.ExecuteNonQuery();

    }
   public static void AddCustomer_Detail(string textBox1, string textBox2, String textBox3, string textBox4, String textBox5, String textBox6, String textBox7, String textBox8)
   {
       
      String sql = "INSERT INTO BASE_customer_DETAILS (NIC, EMAIL, CONTACT_NO, ADDRESS1, DOB, SEX, FIRST_NAME, LAST_NAME) VALUES ('" + textBox1 + "','" + textBox2 + "','" + textBox3 + "','" + textBox4 + "',to_date(" + textBox5 + ",'dd.mm.yy'),'" + textBox6 + "','" + textBox7 + "','" + textBox8 + "')";

       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand command = new OracleCommand(sql, connection);
       command.CommandType = CommandType.Text;


       command.ExecuteNonQuery();

   }
 

   public static void AddItem_Category(string textBox1, string textBox2, string textBox3, string textBox4, string textBox5, string textBox6)
   {
    
      
         String  sql = "INSERT INTO BASE_Item_Category (Item_category_id,name,modified,modified_by,created,created_by) VALUES ('" + textBox1 + "','" + textBox2 + "','" + textBox3 + "','" + textBox4 + "','" + textBox5 + "','" + textBox6 + "')";
       
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand command = new OracleCommand(sql, connection);
       command.CommandType = CommandType.Text;


       command.ExecuteNonQuery();

   }
 



   public static void AddCompany_Detail(string t1, string t2, string t3, string t4, string t5, string t6, string t7, string t8, string t9, string t10, string t11, string t12, string t13, string t14, string t15, string t16, string t17)
   {


       
      String sql = "INSERT INTO BASE_COMPANY_DETAILS VALUES ('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "','" + t7 + "','" + t8 + "','" + t9 + "','" + t10 + "','" + t11 + "','" + t12 + "','" + t13 + "','" + t14 + "','" + t15 + "','" + t16 + "','" + t17 + "')";
      
       
   //     String sql = "INSERT INTO BASE_COMPANY_DETAILS VALUES (t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17)";
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand command = new OracleCommand(sql, connection);


       command.CommandType = CommandType.Text;

       command.ExecuteNonQuery();

   }
   public static void AddItem_des(string t1, string t2, string t3, string t4, string t5, int t6, string t7, string t8, string t9, string t10, string t11)
   {

       OracleConnection connection = ConnectionManager.OraConnection();
       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.AddItem_des";
       cmd.CommandType = CommandType.StoredProcedure;


       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);
       cmd.Parameters.Add("t6", OracleDbType.Int16, t6, ParameterDirection.Input);
       cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);
       cmd.Parameters.Add("t8", OracleDbType.Varchar2, t8, ParameterDirection.Input);    
       cmd.Parameters.Add("t9", OracleDbType.Varchar2, t9, ParameterDirection.Input);
       cmd.Parameters.Add("t10", OracleDbType.Varchar2, t10, ParameterDirection.Input);
       cmd.Parameters.Add("t11", OracleDbType.Varchar2, t11, ParameterDirection.Input);

       OracleDataReader rdr = cmd.ExecuteReader();

   }
   public static void AddItems(string t1, int t2, float t3, int t4, string t5, String t6, string t7, string t8, string t9)
   {
       string tabel="";
       if(t9=="BK")
       {
           tabel = "Base_BK_Items";              
       }
       else if (t9 == "RT")
       {
           tabel = "Base_RT_Items";  
       }
       else if (t9 == "RH")
       {
           tabel = "Base_RH_Items";  
       }
       else if (t9 == "TAO")
       {
           tabel = "Base_TAO_Items";  
       }

       String sql = "INSERT INTO "+tabel+ " VALUES ('" + t1 + "'," + t2 + "," + t3 + "," + t4 + ",'" + t5 + "','" + t6 + "','" + t7 + "','" + t8 + "')";


       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand command = new OracleCommand(sql, connection);



       command.CommandType = CommandType.Text;

       command.ExecuteNonQuery();


   }
   public static void updateItems(String t1, int t2,String t3,String t4 ,String loc)
   {

       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.updateItems";
       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Int16, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2,loc, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();


   }


   public static void Add_Location(String t1, String t2, String t3)
   {

       OracleConnection connection = ConnectionManager.OraConnection();
       // DataSet dataSet = new DataSet();
       //   String val1=null;

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.Location";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("Location_id", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("name", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("address", OracleDbType.Varchar2, t3, ParameterDirection.Input);

       OracleDataReader rdr = cmd.ExecuteReader();


   }


 public static void AddImageToGallery(int t1)
   {
       OracleConnection connection = ConnectionManager.OraConnection();
  

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.AddImageToGallery";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Int16, t1, ParameterDirection.Input);
      OracleDataReader rdr = cmd.ExecuteReader();
 }

 public static void AddRHImageToGallery(int t1)
 {
     OracleConnection connection = ConnectionManager.OraConnection();


     OracleCommand cmd = new OracleCommand();
     cmd.Connection = connection;
     cmd.CommandText = "Base_pkg.AddRHImageToGallery";
     cmd.CommandType = CommandType.StoredProcedure;

     cmd.Parameters.Add("t1", OracleDbType.Int16, t1, ParameterDirection.Input);
     OracleDataReader rdr = cmd.ExecuteReader();
 }
 public static void AddCusOrderDes(String order_id,String order_item_no,int qnty,int amount)
 {
     OracleConnection connection = ConnectionManager.OraConnection();


     OracleCommand cmd = new OracleCommand();
     cmd.Connection = connection;
     cmd.CommandText = "Base_pkg.AddCusOrderDes";
     cmd.CommandType = CommandType.StoredProcedure;

     cmd.Parameters.Add("t1", OracleDbType.Varchar2, order_id, ParameterDirection.Input);
     cmd.Parameters.Add("t2", OracleDbType.Varchar2, order_item_no, ParameterDirection.Input);
     cmd.Parameters.Add("t3", OracleDbType.Int16, qnty, ParameterDirection.Input);
     cmd.Parameters.Add("t4", OracleDbType.Int32, amount, ParameterDirection.Input);
     OracleDataReader rdr = cmd.ExecuteReader();
 }
 public static void AddCusOrder(String order_id, String customer_id, float amount, int Ordertotal,String OrderDate,String createdDate,int type)
 {
     OracleConnection connection = ConnectionManager.OraConnection();


     OracleCommand cmd = new OracleCommand();
     cmd.Connection = connection;
     cmd.CommandText = "Base_pkg.AddCusOrder";
     cmd.CommandType = CommandType.StoredProcedure;

     cmd.Parameters.Add("t1", OracleDbType.Varchar2, order_id, ParameterDirection.Input);
     cmd.Parameters.Add("t2", OracleDbType.Varchar2, customer_id, ParameterDirection.Input);
     cmd.Parameters.Add("t3", OracleDbType.BinaryFloat, amount, ParameterDirection.Input);
     cmd.Parameters.Add("t4", OracleDbType.Int32, Ordertotal, ParameterDirection.Input);
     cmd.Parameters.Add("t5", OracleDbType.Varchar2, OrderDate, ParameterDirection.Input);
     cmd.Parameters.Add("t6", OracleDbType.Varchar2, createdDate, ParameterDirection.Input);
     cmd.Parameters.Add("t7", OracleDbType.Int16, type, ParameterDirection.Input);
     OracleDataReader rdr = cmd.ExecuteReader();
 }
 public static void AddRHBill(String Bill_id, String customer_nic, float amount,String payment_type,String status, String createdDate,String created)
 {
     OracleConnection connection = ConnectionManager.OraConnection();


     String d = DateTime.Now.ToString();
     String u = "no";

     OracleCommand cmd = new OracleCommand();
     cmd.Connection = connection;
     cmd.CommandText = "Base_pkg.AddRHBill";
     cmd.CommandType = CommandType.StoredProcedure;

     cmd.Parameters.Add("t1", OracleDbType.Varchar2, Bill_id, ParameterDirection.Input);
     cmd.Parameters.Add("t2", OracleDbType.Varchar2, customer_nic, ParameterDirection.Input);
     cmd.Parameters.Add("t3", OracleDbType.BinaryFloat, amount, ParameterDirection.Input);
     cmd.Parameters.Add("t4", OracleDbType.Varchar2, payment_type, ParameterDirection.Input);
     cmd.Parameters.Add("t5", OracleDbType.Varchar2, status, ParameterDirection.Input);
     cmd.Parameters.Add("t7", OracleDbType.Varchar2, createdDate, ParameterDirection.Input);
     cmd.Parameters.Add("t8", OracleDbType.Varchar2, created, ParameterDirection.Input);
     cmd.Parameters.Add("a1", OracleDbType.Varchar2, d, ParameterDirection.Input);
     cmd.Parameters.Add("a2", OracleDbType.Varchar2, u, ParameterDirection.Input);
     OracleDataReader rdr = cmd.ExecuteReader();
 }
 public static void AddRHBillRoom_des(String t1, String t2, String t3, String t4,float t5,float t6, String t7, String t10, String t11)
 {
     OracleConnection connection = ConnectionManager.OraConnection();

     String d = DateTime.Now.ToString();
     String u = "no";

     OracleCommand cmd = new OracleCommand();
     cmd.Connection = connection;
     cmd.CommandText = "Base_pkg.AddRHBillRoom_des";
     cmd.CommandType = CommandType.StoredProcedure;

     cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
     cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
     cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);
     cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
     cmd.Parameters.Add("t5", OracleDbType.BinaryFloat, t5, ParameterDirection.Input);
     cmd.Parameters.Add("t6", OracleDbType.BinaryFloat, t6, ParameterDirection.Input);
     cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);
     cmd.Parameters.Add("t10", OracleDbType.Varchar2, t10, ParameterDirection.Input);
     cmd.Parameters.Add("t11", OracleDbType.Varchar2, t11, ParameterDirection.Input);
     cmd.Parameters.Add("a1", OracleDbType.Varchar2, d, ParameterDirection.Input);
     cmd.Parameters.Add("a2", OracleDbType.Varchar2, u, ParameterDirection.Input);
     OracleDataReader rdr = cmd.ExecuteReader();
 }
 public static void AddRoomType(String room_type_id, String name, int nb, int np ,int nc, String created)
 {
     OracleConnection connection = ConnectionManager.OraConnection();


     OracleCommand cmd = new OracleCommand();
     cmd.Connection = connection;
     cmd.CommandText = "Base_pkg.AddRoomType";
     cmd.CommandType = CommandType.StoredProcedure;

     cmd.Parameters.Add("t1", OracleDbType.Varchar2, room_type_id, ParameterDirection.Input);
     cmd.Parameters.Add("t2", OracleDbType.Varchar2, name, ParameterDirection.Input);
     cmd.Parameters.Add("t3", OracleDbType.Int16, nb, ParameterDirection.Input);
     cmd.Parameters.Add("t4", OracleDbType.Int16, np, ParameterDirection.Input);
     cmd.Parameters.Add("t5", OracleDbType.Int16, nc, ParameterDirection.Input);
     cmd.Parameters.Add("t6", OracleDbType.Varchar2, created, ParameterDirection.Input);
     OracleDataReader rdr = cmd.ExecuteReader();
 }

 public static void AddRooms(String t1, String t2,String t3,String t4, String t5,String t6)
 {
     OracleConnection connection = ConnectionManager.OraConnection();


     OracleCommand cmd = new OracleCommand();
     cmd.Connection = connection;
     cmd.CommandText = "Base_pkg.Add_RH_Rooms";
     cmd.CommandType = CommandType.StoredProcedure;

     cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
     cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
     cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);
     cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
     cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);
     cmd.Parameters.Add("t6", OracleDbType.Varchar2, t6, ParameterDirection.Input);
    
     OracleDataReader rdr = cmd.ExecuteReader();
 }
   
 public static void Add_Room_Reservation(String room_id, DateTime BookingDate)
 {
     OracleConnection connection = ConnectionManager.OraConnection();

     String d = DateTime.Now.ToString();
     String u ="Ashan";

     OracleCommand cmd = new OracleCommand();
     cmd.Connection = connection;
     cmd.CommandText = "Base_pkg.Add_Room_Reservation";
     cmd.CommandType = CommandType.StoredProcedure;

     cmd.Parameters.Add("t1", OracleDbType.Varchar2, room_id, ParameterDirection.Input);
     cmd.Parameters.Add("t2", OracleDbType.Date, BookingDate, ParameterDirection.Input);
     cmd.Parameters.Add("t3", OracleDbType.Varchar2, d, ParameterDirection.Input);
     cmd.Parameters.Add("t4", OracleDbType.Varchar2, u, ParameterDirection.Input);
     cmd.Parameters.Add("t5", OracleDbType.Varchar2, d, ParameterDirection.Input);
     cmd.Parameters.Add("t6", OracleDbType.Varchar2, u, ParameterDirection.Input);
     OracleDataReader rdr = cmd.ExecuteReader();
 }

 public static void DirectAddUser(String t1, String t2, String t3, String t4, String t5, String t6, String t7, String usertype, String t8, String t11, String t12, String t13, String t14, String dob, String t15, String t16, String t17, int c)
   {
       OracleConnection connection = ConnectionManager.OraConnection();
  

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.DirectAddUser";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);
       cmd.Parameters.Add("t6", OracleDbType.Varchar2, t6, ParameterDirection.Input);
       cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);
       cmd.Parameters.Add("usert", OracleDbType.Varchar2, usertype, ParameterDirection.Input);
       cmd.Parameters.Add("t8", OracleDbType.Varchar2, t8, ParameterDirection.Input);

       cmd.Parameters.Add("t11", OracleDbType.Varchar2, t11, ParameterDirection.Input);
       cmd.Parameters.Add("t12", OracleDbType.Varchar2, t12, ParameterDirection.Input);
       cmd.Parameters.Add("t13", OracleDbType.Varchar2, t13, ParameterDirection.Input);
       cmd.Parameters.Add("t14", OracleDbType.Varchar2, t14, ParameterDirection.Input);
       cmd.Parameters.Add("dob", OracleDbType.Varchar2, dob, ParameterDirection.Input); 
       cmd.Parameters.Add("t15", OracleDbType.Varchar2, t15, ParameterDirection.Input);
       cmd.Parameters.Add("t16", OracleDbType.Varchar2, t16, ParameterDirection.Input);
       cmd.Parameters.Add("t17", OracleDbType.Varchar2, t17, ParameterDirection.Input);
       cmd.Parameters.Add("c", OracleDbType.Int16, c, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();



   }
 public static void DirectAddCustomer(String t1, String t2, String t3, String t4, String t5, String t6, String Status, String t11, String t12, String t13, String t14, String dob, String t15, String t16, String t17, int c)
 {
     OracleConnection connection = ConnectionManager.OraConnection();


     OracleCommand cmd = new OracleCommand();
     cmd.Connection = connection;
     cmd.CommandText = "Base_pkg.DirectAddCustomer";
     cmd.CommandType = CommandType.StoredProcedure;

     cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
     cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
     cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);
     cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
     cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);
     cmd.Parameters.Add("t6", OracleDbType.Varchar2, t6, ParameterDirection.Input);
     cmd.Parameters.Add("t7", OracleDbType.Varchar2, Status, ParameterDirection.Input);
 
    

     cmd.Parameters.Add("t11", OracleDbType.Varchar2, t11, ParameterDirection.Input);
     cmd.Parameters.Add("t12", OracleDbType.Varchar2, t12, ParameterDirection.Input);
     cmd.Parameters.Add("t13", OracleDbType.Varchar2, t13, ParameterDirection.Input);
     cmd.Parameters.Add("t14", OracleDbType.Varchar2, t14, ParameterDirection.Input);
     cmd.Parameters.Add("dob", OracleDbType.Varchar2, dob, ParameterDirection.Input);
     cmd.Parameters.Add("t15", OracleDbType.Varchar2, t15, ParameterDirection.Input);
     cmd.Parameters.Add("t16", OracleDbType.Varchar2, t16, ParameterDirection.Input);
     cmd.Parameters.Add("t17", OracleDbType.Varchar2, t17, ParameterDirection.Input);
     cmd.Parameters.Add("c", OracleDbType.Int16, c, ParameterDirection.Input);
     OracleDataReader rdr = cmd.ExecuteReader();



 }
 public static void UpdateCustomer_detail(String t1, String t2, String t3, String t4, String dob, String t6, String t7,String t8)
 {
     OracleConnection connection = ConnectionManager.OraConnection();


     OracleCommand cmd = new OracleCommand();
     cmd.Connection = connection;
     cmd.CommandText = "Base_pkg.UpdateCustomer_detail";
     cmd.CommandType = CommandType.StoredProcedure;

     cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
     cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
     cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);
     cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
     cmd.Parameters.Add("dob", OracleDbType.Varchar2, dob, ParameterDirection.Input);
     cmd.Parameters.Add("t6", OracleDbType.Varchar2, t6, ParameterDirection.Input);
     cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);
     cmd.Parameters.Add("t8", OracleDbType.Varchar2, t8, ParameterDirection.Input);
   
     OracleDataReader rdr = cmd.ExecuteReader();



 }
 public static void Add_Message(String t1, String t2, String t3, String t4, String t5, String t6, String t7, String t8)
 {
     OracleConnection connection = ConnectionManager.OraConnection();


     OracleCommand cmd = new OracleCommand();
     cmd.Connection = connection;
     cmd.CommandText = "Base_pkg.Add_Message";
     cmd.CommandType = CommandType.StoredProcedure;

     cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
     cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
     cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);
     cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
     cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);
     cmd.Parameters.Add("t6", OracleDbType.Varchar2, t6, ParameterDirection.Input);
     cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);
     cmd.Parameters.Add("t8", OracleDbType.Varchar2, t8, ParameterDirection.Input);
     OracleDataReader rdr = cmd.ExecuteReader();


 }

 
   public static DataSet ShowBase_User(String username)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_users where Username='" + username + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_user");
       }
       return dataSet;
   }


   public static DataSet ShowBase_Customer(String username)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_customers where customer_username='" + username + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Customer");
       }
       return dataSet;
   }
   public static DataSet ShowBase_CustomerDetail(String nic)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_customer_Details where NIC='" + nic + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Customer_details");
       }
       return dataSet;
   }
  
    public static DataSet ShowBase_imageGal()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt img_id from Base_Image_gallery";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_image_gallery");
       }
       return dataSet;
   }
   


    public static DataSet ShowBase_RH_imageGal()
    {
        DataSet dataSet = new DataSet();

        using (OracleConnection connection = ConnectionManager.OraConnection())
        {
            string sql = "SELECt img_id from Base_RH_Image_gallery";
            OracleCommand command = new OracleCommand(sql, connection);
            //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
            command.CommandType = CommandType.Text;

            OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
            dataAdapter.Fill(dataSet, "Base_image_gallery");
        }
        return dataSet;
    }
   public static DataSet ShowBase_imageGalVal()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select max(img_id) from base_image_gallery";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_image_galleryVal");
       }
       return dataSet;
   }


    //----------------Menu Item Front -------------
   public static void AddMenuItemFront(String t1, int t2, int t3, String t4, int t5)
   {
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.AddMenuItemFront";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Int16, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Int16, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Int16, t5, ParameterDirection.Input);

       OracleDataReader rdr = cmd.ExecuteReader();
   }
   public static DataSet ShowBase_MenuItem_Front()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt img_no from Base_menu_items_front";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_MenuItem_Front");
       }
       return dataSet;
   }
   public static DataSet ShowBase_MenuItem_Front_All(int img_no)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * from Base_menu_items_front where img_no =" + img_no;
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_MenuItem_FrontAll");
       }
       return dataSet;
   }

   public static DataSet ShowBase_MenuItem_FrontVal()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select max(img_no) from base_menu_items_front";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_MenuItem_FrontVal");
       }
       return dataSet;
   }


   public static DataSet ShowBase_MenuItem_FrontName()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select name from base_menu_items_front";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_MenuItem_FrontName");
       }
       return dataSet;
   }
   public static void Delete_MenuItem_Front(String name)
   {
       string sql = "delete from Base_menu_items_front where name='" + name + "'";



       using (OracleConnection connection = ConnectionManager.OraConnection())
       {

           OracleCommand command = new OracleCommand(sql, connection);
           command.CommandType = CommandType.Text;


           command.ExecuteNonQuery();
       }


   
   }






    //---------------------------------------

   public static DataSet ShowBase_RH_imageGalVal()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select max(img_id) from base_RH_image_gallery";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_image_galleryVal");
       }
       return dataSet;
   }

   public static OracleDataReader ShowTabel1()
   {
       string sql = "select * from Base_User_details";

       OracleConnection connection = ConnectionManager.OraConnection();
       OracleCommand command = new OracleCommand(sql, connection);
       command.CommandType = CommandType.Text;

       OracleDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
       return reader;
   }

   public static DataSet ShowBase_UserDetail(String nic)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_user_Details where NIC='" + nic + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_user_details");
       }
       return dataSet;
   }
   public static DataSet ShowBase_UserDetailGrid()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_user_Details";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_user_detailsgrid");
       }
       return dataSet;
   }
   public static DataSet ShowBase_MenuItemsGrid()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECT item_name,avalibility ,unit_price FROM Base_Menu_Items INNER JOIN  Base_Item_Des ON Base_Menu_Items.Item_no= Base_Item_Des.Item_No";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Menu_Items");
       }
       return dataSet;
   }
   public static DataSet ShowBase_MenuItemID(String item_name)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select Base_Menu_items.item_no from Base_Menu_items inner join Base_item_des on  Base_Menu_items.item_no =Base_item_des.item_no where Base_item_des.item_name ='" + item_name + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Menu_ItemID");
       }
       return dataSet;
   }
   public static DataSet ShowBase_OrderDetails(String order_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_Cus_order_des where order_id='" + order_id + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_user");
       }
       return dataSet;
   }

   public static DataSet ShowBase_OrderDetailsWName(String order_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           String sql ="select t1.order_item_no,t3.item_name,t1.qnty,t1.amount from base_cus_order_des t1 inner join base_item_des t3 on t3.item_no=t1.order_item_no where order_id='"+order_id+"'";

           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_user");
       }
       return dataSet;
   }

   public static DataSet ShowBase_MenuSelected(String order_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t2.item_name,t3.unit_price,t2.qnty,t2.amount from Base_menu_items t3 inner join(select Base_item_des.item_name,tb1.qnty,tb1.amount,tb1.order_item_no from Base_item_des inner join (SELECt Base_Cus_order_des.order_item_no,Base_Cus_order_des.qnty,Base_Cus_order_des.amount FROM Base_Cus_order_des inner join Base_customer_orders on Base_Cus_order_des.order_id =Base_customer_orders.order_id where Base_Cus_order_des.order_id='"+order_id+"')tb1 on tb1.order_item_no =Base_item_des.item_no)t2 on t2.order_item_no =t3.item_no" ;
           OracleCommand command = new OracleCommand(sql, connection);
       
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_user");
       }
       return dataSet;
   }
   public static DataSet ShowBase_ReservationRoomsGridAStandard()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t2.name,t1.room_id,t2.per_night_c from base_rh_rooms t1 inner join  base_rh_room_type t2 on t1.room_type_id=t2.type_id where t2.name like 'Standard%'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Reservation_RoomsStandard");
       }
       return dataSet;
   }
   public static DataSet ShowBase_ReservationRoomsGridADeluxe()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t2.name,t1.room_id,t2.per_night_c from base_rh_rooms t1 inner join  base_rh_room_type t2 on t1.room_type_id=t2.type_id where t2.name like 'Deluxe%'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Reservation_RoomsDeluxe");
       }
       return dataSet;
   }
   public static DataSet ShowBase_ReservationRoomsGridSuite()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t2.name,t1.room_id,t2.per_night_c from base_rh_rooms t1 inner join  base_rh_room_type t2 on t1.room_type_id=t2.type_id where t2.name like 'Suite%'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Reservation_RoomsSuite");
       }
       return dataSet;
   }

   public static DataSet ShowBase_ReservationRoomsGridAStandardDate(String Booking_date, String End_date)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {

           string sql = "select t4.name ,t3.room_id,t4.per_night_c from base_rh_rooms t3  inner join base_rh_room_type t4 on t3.room_type_id =t4.type_id where t3.room_id not in (select t1.room_id from base_rh_room_reservation t1 where t1.booking_date >= '" + Booking_date + "'AND t1.booking_date < = '" + End_date + "') And t4.name like 'Standard%' order by t4.per_night_c asc ";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Reservation_RoomsStandardDate");
       }
       return dataSet;
   }
   public static DataSet ShowBase_ReservationRoomsGridADeluxeDate(String Booking_date, String End_date)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t4.name ,t3.room_id,t4.per_night_c from base_rh_rooms t3  inner join base_rh_room_type t4 on t3.room_type_id =t4.type_id where t3.room_id not in (select t1.room_id from base_rh_room_reservation t1 where t1.booking_date >= '" + Booking_date + "'AND t1.booking_date < = '" + End_date + "') And t4.name like 'Deluxe%' order by t4.per_night_c asc";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Reservation_RoomsDeluxeDate");
       }
       return dataSet;
   }
   public static DataSet ShowBase_ReservationRoomsGridSuiteDate(String Booking_date, String End_date)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           
           string sql = "select t4.name ,t3.room_id,t4.per_night_c from base_rh_rooms t3  inner join base_rh_room_type t4 on t3.room_type_id =t4.type_id where t3.room_id not in (select t1.room_id from base_rh_room_reservation t1 where t1.booking_date >= '" + Booking_date + "'AND t1.booking_date < = '" + End_date + "') And t4.name like 'Suite%' order by t4.per_night_c asc";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Reservation_RoomsSuiteDate");
       }
       return dataSet;
   }
   public static DataSet ShowBase_RoomsSelected(String Bill_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t4.name,t3.Room_id,t3.check_in,t3.check_out,t3.amount from base_rh_room_type t4 inner join (Select t2.room_type_id,t1.Room_id,t1.check_in,t1.check_out,t1.amount from base_rh_bill_room_des t1 inner join base_rh_rooms t2 on t1.room_id=t2.room_id where bill_id ='"+Bill_id+"') t3 on t4.type_id =t3.room_type_id";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Rooms_selected");
       }
       return dataSet;
   }

   public static DataSet ShowBase_Room_Info(String Room_type)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_RH_rooms where room_type_id='" + Room_type + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Room_info");
       }
       return dataSet;
   }
   public static DataSet ShowBase_Room_Type(String Room_name)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_RH_room_type where name='" + Room_name + "'";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Room_type");
       }
       return dataSet;
   }
   public static DataSet ShowBase_UserByUserType(String user_type)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt username FROM Base_users where user_type='" + user_type + "'";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_userByusertype");
       }
       return dataSet;
   }

   //--------MessageBox-----------//

   public static DataSet ShowBase_User_MessageInbox(String username,String user_type)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt message_id,sender_id,send_date,m_heading,receiver_type,receiver_id,status FROM Base_messagebox where receiver_type in ('All Users','All " + user_type + "s') or  Receiver_id ='" + username + "' order by message_id desc";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_User_MessageInbox");
       }
       return dataSet;
   }
   public static DataSet ShowBase_User_MessageUnread(String username, String user_type)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt message_id,sender_id,send_date,m_heading,receiver_type,receiver_id,status FROM Base_messagebox where (receiver_type in ('All Users','All " + user_type + "s') or  Receiver_id ='" + username + "') and status ='Unread' order by message_id desc";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_User_MessageUnread");
       }
       return dataSet;
   }
   public static DataSet ShowBase_User_MessageRead(String username, String user_type)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt message_id,sender_id,send_date,m_heading,receiver_type,receiver_id,status FROM Base_messagebox where (receiver_type in ('All Users','All " + user_type + "s') or  Receiver_id ='" + username + "') and status ='Read' order by message_id desc";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_User_MessageUnread");
       }
       return dataSet;
   }
   public static DataSet ShowBase_User_MessageSent(String username)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt message_id,sender_id,send_date,m_heading,receiver_type,receiver_id,status FROM Base_messagebox where sender_id ='"+username+"'";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_User_MessageUnread");
       }
       return dataSet;
   }



  
   public static void Delete_User_MessageSent(String message_id)
   {
    
           string sql = "delete from base_messageBox where message_id ='"+message_id+"'";
        OracleConnection connection = ConnectionManager.OraConnection();
        
          OracleCommand command = new OracleCommand(sql, connection);
        command.CommandType = CommandType.Text;


        command.ExecuteNonQuery();

   }
   
   public static DataSet ShowBase_LoadMessage(String message_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           String sql = "select m_heading,m_content,send_date from base_messagebox where message_id ='" + message_id + "'";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_LoadMessage");
       }
       return dataSet;
   }


    //-------------------------------//
   public static int Validate_User(String username,String password)
   {
       int i = 0;
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt password FROM Base_users where username='" + username + "'";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Validity");
           try
           {

               String validate = dataSet.Tables["Validity"].Rows[0]["password"].ToString();
               if (password.Equals(validate))
               {
                   i = 1;
               }
           }
           catch
           {
               i = 0;
           }
       }
       return i;
   }
   public static int Validate_Customer(String username, String password)
   {
       int i = 0;
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt password FROM Base_customers where customer_username='" + username + "'";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "ValidityC");
           try
           {

               String validate = dataSet.Tables["ValidityC"].Rows[0]["password"].ToString();
               if (password.Equals(validate))
               {
                   i = 1;
               }
           }
           catch
           {
               i = 0;
           }
       }
       return i;
   }
   //------------Bakery Sales.............//
   public static void AddBK_Sale(string t1, string t2, float t3, string t4, string t5, String t6, string t7, string t8 ,String t9,DateTime D)
   {

       OracleConnection connection = ConnectionManager.OraConnection();
       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.AddBK_Sale";
       cmd.CommandType = CommandType.StoredProcedure;


       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.BinaryFloat, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);
       cmd.Parameters.Add("t6", OracleDbType.Varchar2, t6, ParameterDirection.Input);
       cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);
       cmd.Parameters.Add("t8", OracleDbType.Varchar2, t8, ParameterDirection.Input);
       cmd.Parameters.Add("t9", OracleDbType.Varchar2, t9, ParameterDirection.Input);
       cmd.Parameters.Add("t10", OracleDbType.Date, D, ParameterDirection.Input);
 

       OracleDataReader rdr = cmd.ExecuteReader();

   }


   public static void UpdateBK_Sale(string t1, string t2, float t3, string t4, string t5, String t6, string t7)
   {

       OracleConnection connection = ConnectionManager.OraConnection();
       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.UpdateBK_Sale";
       cmd.CommandType = CommandType.StoredProcedure;


       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.BinaryFloat, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);
       cmd.Parameters.Add("t6", OracleDbType.Varchar2, t6, ParameterDirection.Input);
       cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);


       OracleDataReader rdr = cmd.ExecuteReader();

   }
   public static void AddBKSale_Des(String sales_id, String sales_item_no, int qnty, float amount)
   {
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.AddBKSale_Des";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, sales_id, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, sales_item_no, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Int16, qnty, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Int32, amount, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }
   public static DataSet ShowCurrentSalesID()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_bk_Sales order by sales_id desc";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_sales_id");
       }

       return dataSet;
   }




   public static DataSet ShowBase_Bk_itemNameJoin()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t1.item_name from base_item_des t1 inner join base_bk_items t2 on t1.item_no =t2.item_no ";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Bk_itemNameJoin");
       }
       return dataSet;
   }



   public static DataSet ShowBase_Bk_NameitemJoin(String item_name)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t2.item_no from base_item_des t1 inner join base_bk_items t2 on t1.item_no =t2.item_no where t1.item_name='" + item_name + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Bk_NameItemJoin");
       }
       return dataSet;
   }



   public static DataSet ShowBase_ItemName(String item_no)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt item_name FROM Base_item_des where item_no='" + item_no + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_item_name");
       }
       return dataSet;
   }
   public static DataSet ShowBase_ItemnoisCorrect(String item_no, String UnitPrice)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_BK_items where item_no='" + item_no + "' and Unit_Price ='" + UnitPrice + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_itemnoisCorrect");
       }
       return dataSet;
   }

   public static DataSet ShowBase_SalesTotValue(String sales_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_BK_Sales_des where sales_id='" + sales_id + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_SalesTotValue");
       }
       return dataSet;
   }

   public static DataSet currentQV(String item_no,String loc)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "";

           if (loc == "BK")
           {
                sql = "SELECt Q_AV,buffer_q FROM Base_BK_items where item_no='" + item_no + "'";
           }
           else if (loc == "RT")
           {
               sql = "SELECt Q_AV,buffer_q FROM Base_RT_items where item_no='" + item_no + "'";
           }
           else if (loc == "RH")
           {
               sql = "SELECt Q_AV,buffer_q FROM Base_RH_items where item_no='" + item_no + "'";
           }
           else if (loc == "TAO")
           {
               sql = "SELECt Q_AV,buffer_q FROM Base_TAO_items where item_no='" + item_no + "'";
           }


           OracleCommand command = new OracleCommand(sql, connection);
        
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_current_qv");
       }
       return dataSet;
   }



   public static DataSet ShowBase_BKSales_des(String sales_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t3.sales_id,t3.sales_item_no,t3.item_name,t4.unit_price, t3.qnty,t3.amount from base_bk_items t4 inner join (SELECt t1.sales_id,t1.sales_item_no,t2.item_name,t1.qnty,t1.amount FROM Base_BK_Sales_des t1 inner join Base_item_des t2 on t1.sales_item_no =t2.item_no where t1.sales_id='" + sales_id + "') t3 on t3.sales_item_no =t4.item_no";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_BK_Sales_des");
       }
       return dataSet;
   }
   public static DataSet ShowBase_BK_items(String item_no)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt unit_price FROM Base_BK_items where item_no='" + item_no + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_BK_items");
       }
       return dataSet;
   }


   public static void Delete_BK_sales_des(String sales_id, String item_no)
   {

       string sql = "delete from base_BK_sales_des where  sales_id='" + sales_id + "' and sales_item_no='" + item_no + "'";
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand command = new OracleCommand(sql, connection);
       command.CommandType = CommandType.Text;


       command.ExecuteNonQuery();

   }
   public static void Delete_BK_sales_des2()
   {

       string sql = "delete from base_BK_sales_des";
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand command = new OracleCommand(sql, connection);
       command.CommandType = CommandType.Text;


       command.ExecuteNonQuery();

   }
   public static DataSet Del_BK_sales(String sales_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "delete FROM Base_BK_Sales where sales_id='" + sales_id + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_DeleteBK_sale");
       }
       return dataSet;
   }

   public static DataSet Del_BK_sales_des(String sales_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "delete FROM Base_BK_Sales_des where sales_id='" + sales_id + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_SalesTotValue");
       }
       return dataSet;
   }











//----------------------------------------//

   //------------Restaurant Sales.............//
   public static void AddRT_Sale(string t1, string t2, float t3, string t4, string t5, String t6, string t7, string t8, String t9,DateTime D)
   {

       OracleConnection connection = ConnectionManager.OraConnection();
       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.AddRT_Sale";
       cmd.CommandType = CommandType.StoredProcedure;


       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.BinaryFloat, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);
       cmd.Parameters.Add("t6", OracleDbType.Varchar2, t6, ParameterDirection.Input);
       cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);
       cmd.Parameters.Add("t8", OracleDbType.Varchar2, t8, ParameterDirection.Input);
       cmd.Parameters.Add("t9", OracleDbType.Varchar2, t9, ParameterDirection.Input);
       cmd.Parameters.Add("t10", OracleDbType.Date, D, ParameterDirection.Input);

       OracleDataReader rdr = cmd.ExecuteReader();

   }


   public static void UpdateRT_Sale(string t1, string t2, float t3, string t4, string t5, String t6, string t7)
   {

       OracleConnection connection = ConnectionManager.OraConnection();
       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.UpdateRT_Sale";
       cmd.CommandType = CommandType.StoredProcedure;


       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.BinaryFloat, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);
       cmd.Parameters.Add("t6", OracleDbType.Varchar2, t6, ParameterDirection.Input);
       cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);


       OracleDataReader rdr = cmd.ExecuteReader();

   }
   public static void AddRTSale_Des(String sales_id, String sales_item_no, int qnty, float amount)
   {
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.AddRTSale_Des";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, sales_id, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, sales_item_no, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Int16, qnty, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.BinaryFloat, amount, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }
   public static DataSet ShowCurrentSalesIDRT()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_RT_Sales order by sales_id desc";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_sales_idRT");
       }

       return dataSet;
   }

   public static DataSet ShowBase_RT_itemNameJoin()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t1.item_name from base_item_des t1 inner join base_RT_items t2 on t1.item_no =t2.item_no ";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_RT_itemNameJoin");
       }
       return dataSet;
   }

   public static DataSet ShowBase_BillsPaid(String location,String d)
   {
       DataSet dataSet = new DataSet();
       String sql = "";
       using (OracleConnection connection = ConnectionManager.OraConnection())
       {


           if(location =="RT")
           {
           sql = "select modified from base_RT_sales where status ='Paid' and modified like '"+d+"%'";
            }
           else if(location =="BK")
           {
               sql = "select modified from base_BK_sales where status ='Paid' and modified like '" + d + "%'";
           }
           else if (location == "TAO")
           {
               sql = "select modified from base_TAO_sales where status ='Paid' and modified like '" + d + "%'";
           }
           else if (location == "RH")
           {
               sql = "select modified from base_RH_room_reservation where modified like '" + d + "%'";
           }
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_salespaid");
       }
       return dataSet;
   }
   public static DataSet ShowBase_BillsPaidAmount(String location, String d)
   {
       DataSet dataSet = new DataSet();
       String sql = "";
       using (OracleConnection connection = ConnectionManager.OraConnection())
       {


           if (location == "RT")
           {
               sql = "select sum(amount) as t from base_RT_sales where status ='Paid' and modified like '" + d + "%'";
           }
           else if (location == "BK")
           {
               sql = "select sum(amount) from base_BK_sales where status ='Paid' and modified like '" + d + "%'";
           }
           else if (location == "TAO")
           {
               sql = "select sum(amount) from base_TAO_sales where status ='Paid' and modified like '" + d + "%'";
           }
           else if (location == "RH")
           {
               sql = "select sum(amount) from base_RH_room_reservation where modified like '" + d + "%'";
           }
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_salespaid_Amount");
       }
       return dataSet;
   }


   public static DataSet ShowBase_RT_NameitemJoin(String item_name)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t2.item_no from base_item_des t1 inner join base_RT_items t2 on t1.item_no =t2.item_no where t1.item_name='" + item_name + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_RT_NameItemJoin");
       }
       return dataSet;
   }






   public static DataSet ShowBase_ItemnoisCorrectRT(String item_no, String UnitPrice)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_RT_items where item_no='" + item_no + "' and Unit_Price ='" + UnitPrice + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_itemnoisCorrectRT");
       }
       return dataSet;
   }

   public static DataSet ShowBase_SalesTotValueRT(String sales_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_RT_Sales_des where sales_id='" + sales_id + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_SalesTotValueRT");
       }
       return dataSet;
   }
   public static DataSet ShowBase_Online_Orders()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt order_id,customer_id,order_total,amount,order_date,deliver_address,Deliver_Status FROM base_customer_orders order by order_id desc";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_orders");
       }
       return dataSet;
   }

   public static void Update_Online_Orders(String order_id, String customer_Id, int order_total, float amount, String order_date, String deliver_address, String deliver_status)
   {
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;

       cmd.CommandText = "Base_pkg.update_Online_Orders";

       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.Add("t1", OracleDbType.Varchar2, order_id, ParameterDirection.Input);
       //cmd.Parameters.Add("t2", OracleDbType.Varchar2, customer_Id, ParameterDirection.Input);
       //cmd.Parameters.Add("t3", OracleDbType.Int32, order_total, ParameterDirection.Input);
       //cmd.Parameters.Add("t4", OracleDbType.BinaryFloat, amount, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, order_date, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, deliver_address, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, deliver_status, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }




   public static DataSet ShowBase_Online_Orders(String order_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM base_customer_orders where order_id='"+order_id+"'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_orders");
       }
       return dataSet;
   }




   public static DataSet ShowBase_RTSales_des(String sales_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t3.sales_id,t3.sales_item_no,t3.item_name,t4.unit_price, t3.qnty,t3.amount from base_RT_items t4 inner join (SELECt t1.sales_id,t1.sales_item_no,t2.item_name,t1.qnty,t1.amount FROM Base_RT_Sales_des t1 inner join Base_item_des t2 on t1.sales_item_no =t2.item_no where t1.sales_id='" + sales_id + "') t3 on t3.sales_item_no =t4.item_no";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_RT_Sales_des");
       }
       return dataSet;
   }
   public static DataSet ShowBase_RT_items(String item_no)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt unit_price FROM Base_rt_items where item_no='" + item_no + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_RT_items");
       }
       return dataSet;
   }


   public static void Delete_RT_sales_des(String sales_id, String item_no)
   {

       string sql = "delete from base_RT_sales_des where  sales_id='" + sales_id + "' and sales_item_no='" + item_no + "'";
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand command = new OracleCommand(sql, connection);
       command.CommandType = CommandType.Text;


       command.ExecuteNonQuery();

   }
   public static void Delete_RT_sales_des2()
   {

       string sql = "delete from base_RT_sales_des";
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand command = new OracleCommand(sql, connection);
       command.CommandType = CommandType.Text;


       command.ExecuteNonQuery();

   }
   public static DataSet Del_RT_sales(String sales_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "delete FROM Base_RT_Sales where sales_id='" + sales_id + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_DeleteRT_sale");
       }
       return dataSet;
   }

   public static DataSet Del_RT_sales_des(String sales_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "delete FROM Base_RT_Sales_des where sales_id='" + sales_id + "'";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_SalesTotValueRT");
       }
       return dataSet;
   }

    //--------------------------------
   //------------Take Away Sales.............//
   public static void AddTAO_Sale(string t1, string t2, float t3, string t4, string t5, String t6, string t7, string t8, String t9, DateTime D)
   {

       OracleConnection connection = ConnectionManager.OraConnection();
       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.AddTAO_Sale";
       cmd.CommandType = CommandType.StoredProcedure;


       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.BinaryFloat, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);
       cmd.Parameters.Add("t6", OracleDbType.Varchar2, t6, ParameterDirection.Input);
       cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);
       cmd.Parameters.Add("t8", OracleDbType.Varchar2, t8, ParameterDirection.Input);
       cmd.Parameters.Add("t9", OracleDbType.Varchar2, t9, ParameterDirection.Input);
       cmd.Parameters.Add("t10", OracleDbType.Date, D, ParameterDirection.Input);

       OracleDataReader rdr = cmd.ExecuteReader();

   }


   public static void UpdateTAO_Sale(string t1, string t2, float t3, string t4, string t5, String t6, string t7)
   {

       OracleConnection connection = ConnectionManager.OraConnection();
       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.UpdateTAO_Sale";
       cmd.CommandType = CommandType.StoredProcedure;


       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.BinaryFloat, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);
       cmd.Parameters.Add("t6", OracleDbType.Varchar2, t6, ParameterDirection.Input);
       cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);


       OracleDataReader rdr = cmd.ExecuteReader();

   }
   public static void AddTAOSale_Des(String sales_id, String sales_item_no, int qnty, float amount)
   {
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.AddTAOSale_Des";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, sales_id, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, sales_item_no, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Int16, qnty, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.BinaryFloat, amount, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }
   public static DataSet ShowCurrentSalesIDTAO()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_TAO_Sales order by sales_id desc";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_sales_idTAO");
       }

       return dataSet;
   }

   public static DataSet ShowBase_TAO_itemNameJoin()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t1.item_name from base_item_des t1 inner join base_TAO_items t2 on t1.item_no =t2.item_no ";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_TAO_itemNameJoin");
       }
       return dataSet;
   }


   public static DataSet ShowBase_TAO_NameitemJoin(String item_name)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t2.item_no from base_item_des t1 inner join base_TAO_items t2 on t1.item_no =t2.item_no where t1.item_name='" + item_name + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_TAO_NameItemJoin");
       }
       return dataSet;
   }






   public static DataSet ShowBase_ItemnoisCorrectTAO(String item_no, String UnitPrice)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_TAO_items where item_no='" + item_no + "' and Unit_Price ='" + UnitPrice + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_itemnoisCorrectTAO");
       }
       return dataSet;
   }

   public static DataSet ShowBase_SalesTotValueTAO(String sales_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_TAO_Sales_des where sales_id='" + sales_id + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_SalesTotValueTAO");
       }
       return dataSet;
   }



   public static DataSet ShowBase_TAOSales_des(String sales_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select t3.sales_id,t3.sales_item_no,t3.item_name,t4.unit_price, t3.qnty,t3.amount from base_TAO_items t4 inner join (SELECt t1.sales_id,t1.sales_item_no,t2.item_name,t1.qnty,t1.amount FROM Base_TAO_Sales_des t1 inner join Base_item_des t2 on t1.sales_item_no =t2.item_no where t1.sales_id='" + sales_id + "') t3 on t3.sales_item_no =t4.item_no";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_TAO_Sales_des");
       }
       return dataSet;
   }
   public static DataSet ShowBase_TAO_items(String item_no)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt unit_price FROM Base_TAO_items where item_no='" + item_no + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_TAO_items");
       }
       return dataSet;
   }


   public static void Delete_TAO_sales_des(String sales_id, String item_no)
   {

       string sql = "delete from base_TAO_sales_des where  sales_id='" + sales_id + "' and sales_item_no='" + item_no + "'";
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand command = new OracleCommand(sql, connection);
       command.CommandType = CommandType.Text;


       command.ExecuteNonQuery();

   }
   public static void Delete_TAO_sales_des2()
   {

       string sql = "delete from base_TAO_sales_des";
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand command = new OracleCommand(sql, connection);
       command.CommandType = CommandType.Text;


       command.ExecuteNonQuery();

   }
   public static DataSet Del_TAO_sales(String sales_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "delete FROM Base_TAO_Sales where sales_id='" + sales_id + "'";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_DeleteTAO_sale");
       }
       return dataSet;
   }

   public static DataSet Del_TAO_sales_des(String sales_id)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "delete FROM Base_TAO_Sales_des where sales_id='" + sales_id + "'";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_SalesTotValueTAO");
       }
       return dataSet;
   }
    ////////////////////////////////
    //------------News
   public static DataSet base_news()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "select * FROM Base_news order by added desc";
           OracleCommand command = new OracleCommand(sql, connection);
       
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_news");
       }
       return dataSet;
   }


   public static void AddNews(String news_id,String content, String added,String added_by)
   {
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.AddNews";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, news_id, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, content, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, added, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, added_by, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }
   public static void UpdateNews(String news_id, String content, String added, String added_by)
   {
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.UpdateNews";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, news_id, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, content, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, added, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, added_by, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }
   public static void Delete_News(string textBox1)
   {
       string sql = "delete Base_news where news_id='" + textBox1 + "'";



       using (OracleConnection connection = ConnectionManager.OraConnection())
       {

           OracleCommand command = new OracleCommand(sql, connection);
           command.CommandType = CommandType.Text;


           command.ExecuteNonQuery();
       }
   }

   //----------------------------------------//


   public static DataSet Valid_User_details(String username)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           String sql ="select * from Base_user_details where nic =(Select nic from Base_users where username ='"+username+"')";
   
           OracleCommand command = new OracleCommand(sql, connection);
    
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Valid_User_details");
       }
       return dataSet;
   }
   public static DataSet Valid_User_Info(String username)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_users where username='" + username + "'";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Valid_User_Info");
       }
       return dataSet;
   }

   public static DataSet Valid_Customer_Info(String username)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_Customers where customer_username='" + username + "'";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Valid_Customer_Info");
       }
       return dataSet;
   }

   public static DataSet Valid_User_detail_Info(String nic)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_user_details where nic='" + nic + "'";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Valid_User_detail_Info");
       }
       return dataSet;
   }
   public static DataSet Valid_Customer_detail_Info(String nic)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_Customer_details where nic='" + nic+ "'";
           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Valid_Customer_detail_Info");
       }
       return dataSet;
   }
   public static DataSet Valid_Customer_details(String username)
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           String sql = "select * from Base_Customer_details where nic =(Select nic from Base_Customers where customer_username ='" + username + "')";

           OracleCommand command = new OracleCommand(sql, connection);

           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Valid_Customer_details");
       }
       return dataSet;
   }

   public static void failed_pass(String t1, int t2)
   {

       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.failed_pass";
       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Int16, t2, ParameterDirection.Input);

       OracleDataReader rdr = cmd.ExecuteReader();


   }
   public static void user_Status(String username,String password, String status)
   {

       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.user_status";
       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.Add("t1", OracleDbType.Varchar2, username, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, status, ParameterDirection.Input);

       OracleDataReader rdr = cmd.ExecuteReader();


   }

   public static DataSet ShowBase_Users()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_users";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_users");
       }
       return dataSet;
   }

   public static DataSet ShowBase_Customer_Emails()
   {
       DataSet dataSet = new DataSet();

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {
           string sql = "SELECt * FROM Base_Customer_details";
           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_emails");
       }
       return dataSet;
   }




//---------------------------------
   public static void UpdateUser(string textBox1, string textBox2, String textBox3, string textBox4, String textBox5, String textBox6, String textBox7, String textBox8)
   {
       string sql = "update base_user_details set email='" + textBox2 + "',contact_no='" + textBox3 + "',Address1='" + textBox4 + "',dob=to_date( " + textBox5 + ",'dd.mm.yy'),sex='" + textBox6 + "',first_name='" + textBox7 + "',last_name='" + textBox8 + "' where nic ='" + textBox1 + "'";

       // String sql= "update base_user_details set email='qwer' where nic ='123'";                                                                                                        

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {

           OracleCommand command = new OracleCommand(sql, connection);
           command.CommandType = CommandType.Text;


           command.ExecuteNonQuery();
       }
   }
   public static void UpdateUserA(string t1, string t2, String t3)
   {
       // string sql = "update base_users set email='" 

       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.Update_User";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);

       OracleDataReader rdr = cmd.ExecuteReader();
   }
   public static void changeAcc(string t1, string t2, String t3,String t4,String t5)
   {
       // string sql = "update base_users set email='" 

       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.changeAcc";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);


       OracleDataReader rdr = cmd.ExecuteReader();
   }
   public static void UpdateMessageRead(String t1,string t2)
   {
    
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.Update_ReadMessage";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
     
       OracleDataReader rdr = cmd.ExecuteReader();



   }
   public static void UpdateCusOrder(String order_id, String customer_id, float amount, int Ordertotal, String OrderDate, String createdDate, String deliver_add,String payment_type)
   {
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.UpdateCusOrder";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, order_id, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, customer_id, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.BinaryFloat, amount, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Int32, Ordertotal, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, OrderDate, ParameterDirection.Input);
       cmd.Parameters.Add("t6", OracleDbType.Varchar2, createdDate, ParameterDirection.Input);

       cmd.Parameters.Add("t7", OracleDbType.Varchar2, deliver_add, ParameterDirection.Input);
       cmd.Parameters.Add("t8", OracleDbType.Varchar2, payment_type, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }
   public static void UpdateCusOrderDes(String order_id, String order_item_no, int qnty, int amount)
   {
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.UpdateCusOrderDes";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, order_id, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, order_item_no, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Int16, qnty, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Int32, amount, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }


   public static void UpdateRHbill(String t1, String t2, float t3,String t4, String t5, String t6, String t7,String t8,String t9,int t10)
   {
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.UpdateRHbill";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.BinaryFloat, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, t5, ParameterDirection.Input);
       cmd.Parameters.Add("t6", OracleDbType.Varchar2, t6, ParameterDirection.Input);

       cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);
       cmd.Parameters.Add("t8", OracleDbType.Varchar2, t8, ParameterDirection.Input);
       cmd.Parameters.Add("t9", OracleDbType.Varchar2, t9, ParameterDirection.Input);
       cmd.Parameters.Add("t10", OracleDbType.Int16, t10, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }

   public static void UpdateRHBill_Room(String t1, String t2, String t3, String t4, float t5, float t6, String t7, String t8, String t9, String t10, String t11)
   {
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.UpdateRHBill_Room";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, t4, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.BinaryFloat, t5, ParameterDirection.Input);
       cmd.Parameters.Add("t6", OracleDbType.BinaryFloat, t6, ParameterDirection.Input);

       cmd.Parameters.Add("t7", OracleDbType.Varchar2, t7, ParameterDirection.Input);
       cmd.Parameters.Add("t8", OracleDbType.Varchar2, t8, ParameterDirection.Input);
       cmd.Parameters.Add("t9", OracleDbType.Varchar2, t9, ParameterDirection.Input);
       cmd.Parameters.Add("t10", OracleDbType.Varchar2, t10, ParameterDirection.Input);
       cmd.Parameters.Add("t11", OracleDbType.Varchar2, t11, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }

   public static void Delete_User_Detail(string textBox1)
   {
       string sql = "delete Base_user_details where nic='" + textBox1 + "'";



       using (OracleConnection connection = ConnectionManager.OraConnection())
       {

           OracleCommand command = new OracleCommand(sql, connection);
           command.CommandType = CommandType.Text;


           command.ExecuteNonQuery();
       }
   }


   public static void Delete_ZeroOrders()
   {
       string sql = "delete Base_Cus_order_des where order_id in(Select order_id from Base_Customer_Orders where amount =0)";



          using (OracleConnection connection = ConnectionManager.OraConnection())
           {

               OracleCommand command = new OracleCommand(sql, connection);
               command.CommandType = CommandType.Text;


               command.ExecuteNonQuery();
           }
       string sql2 = "delete Base_Customer_Orders where amount =0";



       using (OracleConnection connection = ConnectionManager.OraConnection())
       {

           OracleCommand command2 = new OracleCommand(sql2, connection);
           command2.CommandType = CommandType.Text;


           command2.ExecuteNonQuery();
       }
   }



   public static void Delete_User(string textBox1)
   {
       string sql = "delete Base_users where username='" + textBox1 + "'";



       using (OracleConnection connection = ConnectionManager.OraConnection())
       {

           OracleCommand command = new OracleCommand(sql, connection);
           command.CommandType = CommandType.Text;


           command.ExecuteNonQuery();
       }
   }
   public static void DeleteImageFromGallery(int t1)
   {
     //  int i;
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.DeleteImageFromGallery";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Int16, t1, ParameterDirection.Input);

    //   cmd.Parameters.Add("ename", OracleDbType.Int16,16,ParameterDirection.ReturnValue);
       //test functions in oracle returns!
       OracleDataReader rdr = cmd.ExecuteReader();
    
       
   }
   public static void DeleteRHImageFromGallery(int t1)
   {

       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.DeleteRHImageFromGallery";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Int16, t1, ParameterDirection.Input);

       OracleDataReader rdr = cmd.ExecuteReader();


   }
   public static void DeleteTempOrder(String order_id)
   {
       //  int i;
       OracleConnection connection = ConnectionManager.OraConnection();


       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.DeleteTempOrder";
       cmd.CommandType = CommandType.StoredProcedure;

       cmd.Parameters.Add("t1", OracleDbType.Varchar2, order_id, ParameterDirection.Input);

       OracleDataReader rdr = cmd.ExecuteReader();


   }



   public static void pkgTester()
   {

       OracleConnection connection = ConnectionManager.OraConnection();
      // DataSet dataSet = new DataSet();
       //   String val1=null;

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.BK_sales";
       cmd.CommandType = CommandType.StoredProcedure;
       // cmd.Parameters.Add("username", OracleDbType.Varchar2, "Helloo", ParameterDirection.Input);
      // cmd.Parameters.Add("ename", OracleDbType.Varchar2, 20, val1, ParameterDirection.ReturnValue);
     //   cmd.Parameters.Add("return", OracleType.DateTime).Direction = ParameterDirection.Input;
       // cmd.Parameters["end_date"].Value = "01-Mar-12";
       //5connection.Open();
      OracleDataReader rdr = cmd.ExecuteReader();
    

     //   OracleDataAdapter dataAdapter = new OracleDataAdapter(cmd);
      // dataAdapter.Fill(dataSet, "pkg_tester");

       //Show(rdr);  
     //  return dataSet;

   }

   public static String ConvertToM(String month)
   {
       if (month == "1")
            return "Jan";
       else if(month =="2")
            return "Feb";
       else if(month =="3")
            return "Mar";
       else if(month =="4")
            return "Apr";
       else if(month =="5")
            return "May";
       else if(month =="6")
            return "Jun";
       else if(month =="7")
            return "Jul";
       else if(month =="8")
            return "Aug";
       else if(month =="9")
            return "Sep";
       else if(month =="10")
            return "Oct";
       else if(month =="11")
            return "Nov";
       else if(month =="12")
            return "Dec";
       else
            return "Wrong";
                 
   }

    // edit Stocks---------------------------------------------------------

   public static DataSet Edit_Stocks(String loc)
   {
       DataSet dataSet = new DataSet();


       string sql = "";
       if (loc.Equals("BK"))
       {
           sql = "Select t2.item_no ,t1.item_name,t2.q_av,t2.unit_price,t2.buffer_q from base_bk_items t2 inner join base_item_des t1 on t1.item_no=t2.item_no";
       }
       else if (loc.Equals("RT"))
       {
           sql = "Select t2.item_no ,t1.item_name,t2.q_av,t2.unit_price,t2.buffer_q from base_RT_items t2 inner join base_item_des t1 on t1.item_no=t2.item_no";
       }
       else if (loc.Equals("RH"))
       {
           sql = "Select t2.item_no ,t1.item_name,t2.q_av,t2.unit_price,t2.buffer_q from base_RH_items t2 inner join base_item_des t1 on t1.item_no=t2.item_no";
       }
       else if (loc.Equals("TAO"))
       {
           sql = "Select t2.item_no ,t1.item_name,t2.q_av,t2.unit_price,t2.buffer_q from base_TAO_items t2 inner join base_item_des t1 on t1.item_no=t2.item_no";
       }
       using (OracleConnection connection = ConnectionManager.OraConnection())
       {

           OracleCommand command = new OracleCommand(sql, connection);
           //   command.Parameters.Add("NIC", OracleDbType.Varchar2).Value =nic ;
           command.CommandType = CommandType.Text;

           OracleDataAdapter dataAdapter = new OracleDataAdapter(command);
           dataAdapter.Fill(dataSet, "Base_Edit_Stocks");
       }

       return dataSet;
   }

   public static void update_Shenali_Stocks(String item_no, int q_av, String unit_price, String buffer_q,String item_name)
   {
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       String loc = "BK";


       cmd.CommandText = "Base_pkg.update_Shenali_Stocks";

       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.Add("t1", OracleDbType.Varchar2, item_no, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Int16, q_av, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, unit_price, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, buffer_q, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, loc, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }

   public static void update_Shenali_StocksRT(String item_no, int q_av, String unit_price, String buffer_q, String item_name)
   {
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       String loc = "RT";


       cmd.CommandText = "Base_pkg.update_Shenali_Stocks";

       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.Add("t1", OracleDbType.Varchar2, item_no, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Int16, q_av, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, unit_price, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, buffer_q, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, loc, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }

   public static void update_Shenali_StocksRH(String item_no, int q_av, String unit_price, String buffer_q, String item_name)
   {
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       String loc = "RH";


       cmd.CommandText = "Base_pkg.update_Shenali_Stocks";

       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.Add("t1", OracleDbType.Varchar2, item_no, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Int16, q_av, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, unit_price, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, buffer_q, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, loc, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }

   public static void update_Shenali_StocksTAO(String item_no, int q_av, String unit_price, String buffer_q, String item_name)
   {
       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       String loc = "TAO";


       cmd.CommandText = "Base_pkg.update_Shenali_Stocks";

       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.Add("t1", OracleDbType.Varchar2, item_no, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Int16, q_av, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, unit_price, ParameterDirection.Input);
       cmd.Parameters.Add("t4", OracleDbType.Varchar2, buffer_q, ParameterDirection.Input);
       cmd.Parameters.Add("t5", OracleDbType.Varchar2, loc, ParameterDirection.Input);
       OracleDataReader rdr = cmd.ExecuteReader();
   }

    //MenuItem----------------------

   public static void AddMenuItem(String t1, String t2, String t3)
   {

       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.AddMenuItem";
       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);
    
       OracleDataReader rdr = cmd.ExecuteReader();


   }

   public static void updateMenuItem(String t1, String t2, String t3)
   {

       OracleConnection connection = ConnectionManager.OraConnection();

       OracleCommand cmd = new OracleCommand();
       cmd.Connection = connection;
       cmd.CommandText = "Base_pkg.UpdateMenuItem";
       cmd.CommandType = CommandType.StoredProcedure;
       cmd.Parameters.Add("t1", OracleDbType.Varchar2, t1, ParameterDirection.Input);
       cmd.Parameters.Add("t2", OracleDbType.Varchar2, t2, ParameterDirection.Input);
       cmd.Parameters.Add("t3", OracleDbType.Varchar2, t3, ParameterDirection.Input);

       OracleDataReader rdr = cmd.ExecuteReader();


   }
   public static void deleteMenuItem(String item_no)
   {
       string sql = "delete from Base_menu_items where item_no='" + item_no + "'";
       using (OracleConnection connection = ConnectionManager.OraConnection())
       {

           OracleCommand command = new OracleCommand(sql, connection);
           command.CommandType = CommandType.Text;


           command.ExecuteNonQuery();
       }
   }
   public static void deleteItem(String item_no,String loc)
   {
       string sql ="";
       if(loc.Equals("BK"))
       {
              sql = "delete from Base_BK_items where item_no='" + item_no + "'";
       }
       if (loc.Equals("RT"))
       {
           sql = "delete from Base_RT_items where item_no='" + item_no + "'";
       }   
        if(loc.Equals("TAO"))
       {
              sql = "delete from Base_TAO_items where item_no='" + item_no + "'";
       }
       

       using (OracleConnection connection = ConnectionManager.OraConnection())
       {

           OracleCommand command = new OracleCommand(sql, connection);
           command.CommandType = CommandType.Text;


           command.ExecuteNonQuery();
       }
   }




}
