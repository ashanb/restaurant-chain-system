using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FUNC_Done_MDeleteImage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        Master.HeadingMessage = "Deleting Image From Restaurant Gallery";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String del_img = DeleteTextBox.Text;
        try
        {
            int i = int.Parse(del_img);
            ProductManager.DeleteImageFromGallery(i);


           // output.Text = "Delete Successful";
            //Row count need to be calculated!!
           
            output.Text = "Delete Successful";
            LoadGallery();
        }
        catch
        {
            output.Text = "Error Deleting";
        }




    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //---------------Viewing Part
        LoadGallery();
    }
    protected void LoadGallery()
    {
        int i = 0;

        DataSet dataSet2 = ProductManager.ShowBase_imageGal();
        int f = 0;
        string tester = "";
        int length = dataSet2.Tables["Base_image_gallery"].Rows.Count;

        int[] img_idi = new int[length];


        while (f < length)
        {

            tester = dataSet2.Tables["Base_image_gallery"].Rows[f]["img_id"].ToString();

            img_idi[f] = int.Parse(tester);
            f++;
        }


        String k = "";
        while (i < length)
        {
            k = k + "<a class='fancyimage' href='../../BaseRestaurant/images/gallery/" + img_idi[i] + ".jpg'><img src='../../BaseRestaurant/images/gallery/" + img_idi[i] + ".jpg' width='200' height=200' alt='' /></a>";
            i++;

        }
        mytext.Text = k;
    }
}