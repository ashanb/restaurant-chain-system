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
public partial class AddMenu_Items : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        Master.HeadingMessage = "Adding new Items to Online Menu";
    }
    protected void Add(object sender, EventArgs e)
    {
        String t1 = DropDownList0.SelectedItem.ToString();
        String t2 = "";

        if (RadioButton1.Checked == true)
        {
            t2 = "Yes";
        }
        else if(RadioButton2.Checked ==true)
        {
            t2 = "No";
        }
        String t3 = UPTextBox.Text;


        try
        {
            ProductManager.AddMenuItem(t1, t2, t3);
            Response.Redirect("MAdd_Menu_Items.aspx");
        }




        catch
        {

            output.Text = "Unsuccessful add detail";

        }

    }





    protected void Delete(object sender, EventArgs e)
    {
        String t1 = DropDownList1.SelectedItem.ToString();
        try
        {
            ProductManager.deleteMenuItem(t1);

            Response.Redirect("MAdd_Menu_Items.aspx");
        
        }
        catch
        {
            output2.Text = "Unsuccessful Delete detail";
        }

    }

    protected void Update(object sender, EventArgs e)
    {

        String t1 = DropDownList2.SelectedItem.ToString();
        String t2 = "";

        if (RadioButton3.Checked == true)
        {
            t2 = "Yes";
        }
        else if (RadioButton4.Checked == true)
        {
            t2 = "No";
        }
        String t3 = TextBox2.Text;

        try
        {

            ProductManager.updateMenuItem(t1, t2, t3);
            Response.Redirect("MAdd_Menu_Items.aspx");
        }
        catch
        {
            output3.Text = "Unsuccessful Update detail";
        }
    }

 
}