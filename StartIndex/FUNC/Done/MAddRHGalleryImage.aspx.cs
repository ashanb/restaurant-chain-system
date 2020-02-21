using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FUNC_Done_MAddRHGalleryImage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
        Master.HeadingMessage = "Adding Image to Rest House Gallery";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.ContentType == "image/jpeg")
        {
            String filename = "Test1.jpg";

            try
            {
                DataSet dataSet = ProductManager.ShowBase_RH_imageGalVal();
                String currentValue = dataSet.Tables["Base_image_galleryVal"].Rows[0]["MAX(img_id)"].ToString();

                int val = int.Parse(currentValue);
                val = val + 1;
                filename = val + ".jpg";

                ProductManager.AddRHImageToGallery(val);

                FileUpload1.PostedFile.SaveAs("D://Uni/300 level/Semester 2/CS304(3)/Resturant chain System/1System/StartIndex/BaseRestHouse/images/gallery/" + filename);

                output.Text = "SuccessFully added";




            }
            catch
            {
                output.Text = "Error";
            }
        }
        else
        {
            output.Text = "Please Upload Valid Input (Type ='jpg')";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        //---------------Viewing Part

        int i = 0;

        DataSet dataSet2 = ProductManager.ShowBase_RH_imageGal();
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
            k = k + "<a class='fancyimage' href='../../BaseRestHouse/images/gallery/" + img_idi[i] + ".jpg'><img src='../../BaseRestHouse/images/gallery/" + img_idi[i] + ".jpg' width='200' height=200' alt='' /></a>";
            i++;

        }
        mytext.Text = k;



        //----------------------
    }
}