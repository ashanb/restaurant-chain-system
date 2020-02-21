using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BaseRestaurant_MenuTester : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadMenuItemFront();
        String username = (String)Session["username"];
        String usertype = (string)Session["usertype"];


        if (username != null && usertype != "Customer")
        {


            if (usertype == "Admin" || usertype == "Manager" || usertype == "Staff" || usertype == "Customer")
            {


                store.Text = "<li><a href='../FUNC/Done/MHome.aspx'> New Store </a></li>";
            }
        }

    }
    protected void LoadMenuItemFront()
    {
        int i = 0;
     
        DataSet dataSet = ProductManager.ShowBase_MenuItem_Front();
        int f = 0;
        string tester = "";
        int length = dataSet.Tables["Base_MenuItem_Front"].Rows.Count;

        int[] img_idi = new int[length];


        while (f < length)
        {

            tester = dataSet.Tables["Base_MenuItem_Front"].Rows[f]["img_no"].ToString();

            img_idi[f] = int.Parse(tester);
            f++;
        }

        String allV = "";
       
        while (i < length)
        {
            String add = "";
            DataSet dataSet2 = ProductManager.ShowBase_MenuItem_Front_All(img_idi[i]);
            String name = dataSet2.Tables["Base_MenuItem_FrontAll"].Rows[0]["name"].ToString();
            String price = dataSet2.Tables["Base_MenuItem_FrontAll"].Rows[0]["price"].ToString();
            int stars = int.Parse(dataSet2.Tables["Base_MenuItem_FrontAll"].Rows[0]["stars"].ToString());
            String content = dataSet2.Tables["Base_MenuItem_FrontAll"].Rows[0]["content"].ToString();

            add = "<div class='border3'></div>";
            add = add + "<div class='left'>";
            add = add + "<h3>" + name + ": RS " + price + "/=</h3> </div> <div class='left star'>";

            if (stars > 10)
            {
                stars = 10;
            }
            else if (stars < 0||stars==0)
            {
                stars = 0;
            }
            int ful = 0;
            int half = 0;
            int empty = 5;

            ful = stars / 2;
            half = stars % 2;


            while (ful > 0)
            {
                add=add + "<img src='images/star_full.png' class='noeffects' alt=''>";
                empty--;
                ful--;
            }
            if(half ==1)
            {
                add = add + "<img src='images/star_half_full.png' class='noeffects' alt=''>";
                empty--;
           
            }
            while (empty > 0)
            {
                add = add + "<img src='images/star_empty.png' class='noeffects' alt=''>";
                ful--;
                empty--;
            }



       

            add = add + " </div>  <div class='right menu-order'><a class='button' href='OrderPage.aspx'>Order Now</a></div>";
            add = add + "   <img src='images/menu/" + img_idi[i] + ".jpg' class='left clear item' width='150' alt=''> ";
            add = add + "   <p class='left'>"+content+"</p>";

            allV = allV + add;
            i++;
        }


        //---------------------
       

    
        menuItem.Text = allV;
   
    }

}