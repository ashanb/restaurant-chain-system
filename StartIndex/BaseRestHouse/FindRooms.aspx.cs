using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FindRooms : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LinkButton4.Visible = false;
            LinkButton5.Visible = false;
            LinkButton6.Visible = false;
        }
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
  
    
    
    
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Room1.Text = " <p class='left'>Number of rooms : 16 <br/> Location : First Floor <br/>Size : 313 square feet (29 square metres)</p>";
        Room1.Text = Room1.Text + "<p class='left'>Facilities: <br/><br/>Single or double beds<br/>Digital safe<br/>Telephone<br/>Rainshower cubicle<br/>Hairdryer<br/>Bathrobes<br/>Piped music <br/> Free toiletries</p>";
        LinkButton1.Visible = false;
        LinkButton4.Visible = true;

            
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Room1.Text = "";
        LinkButton4.Visible = false;
        LinkButton1.Visible = true;


    }
    //----------------------------
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Room2.Text = " <p class='left'>Number of rooms : 6 <br/> Location : Floors: Ground, first and second floors <br/>Size : Size: 445 square feet (41.35 square metres)";
        Room2.Text = Room2.Text + "<br/><br/>Facilities: <br/><br/>double or Twin beds<br/>Air conditioning and fan<br/>Digital safe<br/>Telephone<br/>Rainshower cubicle<br/>Laundry service<br/>Hairdryer<br/>Bathrobes<br/>Piped music <br/> Free toiletries </p>";
        LinkButton2.Visible = false;
        LinkButton5.Visible = true;


    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Room2.Text = "";
        LinkButton5.Visible = false;
        LinkButton2.Visible = true;


    }

    //------------------------------------
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Room3.Text = " <p class='left'>Number of rooms : 5 <br/> Location : Second Floor <br/>Size : Size: 657 square feet (61 square metres)";
        Room3.Text = Room3.Text + "<br/><br/>Facilities: <br/><br/>Single or Twin beds<br/>Air conditioning and fan<br/>Digital safe<br/>Telephone<br/>Rainshower cubicle<br/>Laundry service<br/>Hairdryer<br/>Bathrobes<br/>Piped music <br/> Free toiletries<br/>Mini fridge on request<br/>Television</p>";
        LinkButton3.Visible = false;
        LinkButton6.Visible = true;


    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Room3.Text = "";
        LinkButton6.Visible = false;
        LinkButton3.Visible = true;


    }
}