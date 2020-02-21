using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BaseRestaurant_GalleryTester : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        LoadGallery();
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
    protected void LoadGallery()
    {
        int i = 0;
        //  int p = 1;

        // try
        // {
        DataSet dataSet = ProductManager.ShowBase_imageGal();
        int f = 0;
        string tester = "";
        int length = dataSet.Tables["Base_image_gallery"].Rows.Count;

        int[] img_idi = new int[length];


        while (f < length)
        {

            tester = dataSet.Tables["Base_image_gallery"].Rows[f]["img_id"].ToString();

            img_idi[f] = int.Parse(tester);
            f++;
        }
        // p = 3;
        /* }
         catch
         {
             p = 1;
         }
         */

        String k = "";
        while (i < length)
        {
            k = k + "<a class='fancyimage' href='images/gallery/" + img_idi[i] + ".jpg'><img src='images/gallery/" + img_idi[i] + ".jpg' width='200' height=200' alt='' /></a>";
            i++;

        }
        mytext.Text = k;
    }
}