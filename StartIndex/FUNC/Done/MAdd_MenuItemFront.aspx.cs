using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MenuItemFront : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
     Master.HeadingMessage = "Edit Menu Item Front Page";
     output.Text = "";
     output0.Text = "";

     String message1 = Request.QueryString["message1"];
     if (message1 != null)
     {
         output0.Text = message1;
     }
     String message = Request.QueryString["message"];
     if (message != null)
     {
         output.Text = message;
     }
    

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        String name = TextBox0.Text;
        int price = 0;
        int stars = 0;
        String message1 = "";
        try
        {
            price = int.Parse(TextBox1.Text);
            stars = int.Parse(TextBox2.Text);
        }
        catch
        {
            output0.Text = "Invalid Inputs";
            return;
        }
        if (stars > 10)
        {
            StarserrorLabel.Text = "Star Value Can not exceed 10(1-10)";
            return;
        }
        String content = TextArea1.InnerHtml.ToString();





        if (FileUpload1.PostedFile.ContentType == "image/jpeg")
        {
            String filename = "Test1.jpg";
            int val =0;
            try
            {
                DataSet dataSet = ProductManager.ShowBase_MenuItem_FrontVal();
                String currentValue = dataSet.Tables["Base_MenuItem_FrontVal"].Rows[0]["MAX(img_no)"].ToString();
                val = int.Parse(currentValue);
            }
            catch
            {
                    val =0;
            }

               
                val = val + 1;
                filename = val + ".jpg";

               

                FileUpload1.PostedFile.SaveAs("D://Uni/300 level/Semester 2/CS304(3)/Resturant chain System/1System/StartIndex/BaseRestaurant/images/menu/" + filename);

               output0.Text = "SuccessFully added";
         
            try
            {
                       
                ProductManager.AddMenuItemFront(name,price,stars,content,val);
                message1 = "SuccessFully added";
                Response.Redirect("MAdd_MenuItemFront.aspx?message1=" + message1);
            }
            catch
            {
                output0.Text = "Error";
            }
        }
        else
        {
            output0.Text = "Please Upload Valid Input (Type ='jpg')";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String message = "";
        try
        {
            ProductManager.Delete_MenuItem_Front(DropDownList1.SelectedItem.ToString());
            message = "Successful Deletion";

        }
        catch
        {
            message = "UnSuccessful Deletion";
        }
        Response.Redirect("MAdd_MenuItemFront.aspx?message=" + message);
    }
}