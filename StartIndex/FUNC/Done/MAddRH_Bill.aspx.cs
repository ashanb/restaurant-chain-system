using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class MRHBill : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
            TodayReser();
            Master.HeadingMessage = "Adding New Reservation";
    
    }




   
    protected void TodayReser()
    {
        String Today = "" + DateTime.Now.Day + "-" + ProductManager.ConvertToM(DateTime.Now.Month.ToString()) + "-" + DateTime.Now.Year;
        Session["check_in"] = Today;
        Session["check_out"] = Today;

        DateLabel.Text = Today;  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // String check_in = CIddDropDownList.SelectedValue + "-" + CImmDropDownList.SelectedValue + "-" + CIyyDropDownList.SelectedValue;
     //   String check_out = CKddDropDownList.SelectedValue + "-" + CKmmDropDownList.SelectedValue + "-" + CKyyDropDownList.SelectedValue;
    
        String check_in = TextBox1.Text;
        String check_out = TextBox2.Text;
        try
        {
            if (Convert.ToDateTime(check_in) < Convert.ToDateTime(check_out))
            {
                //  CTLabel.Text = "Your Correct";
                if (Convert.ToDateTime(check_in) < DateTime.Now.Date)
                {
                    CTLabel.Text = "Please Select Correct Check_in Date";
                    return;


                }
                else
                {
                    CTLabel.Text = "";
                    Session["check_in"] = check_in;
                    Session["check_out"] = check_out;
                    Response.Redirect("MAddRH_BillF.aspx");
                    return;

                }

            }
            else if (Convert.ToDateTime(check_in) == Convert.ToDateTime(check_out))
            {
                //  CTLabel.Text = "Both are Same";
                if (Convert.ToDateTime(check_in) < DateTime.Now.Date)
                {
                    CTLabel.Text = "Please Select Correct Check_in Date";
                    return;
                }
                else
                {
                    CTLabel.Text = "";
                    Session["check_in"] = check_in;
                    Session["check_out"] = check_out;
                    Response.Redirect("MAddRH_BillF.aspx");
                    return;
                }
            }
            else
            {
                CTLabel.Text = "Please Choose Correct Check_in Check out combination";
                return;
            }
        

         
        }
        catch
        {
            CTLabel.Text = "Invalid the input Dates";
        }
       
    }
    protected void BookButton_Click(object sender, EventArgs e)
    {
        int i = 0;
        int j =0;
  
        int Amount = 0;

        String Bill_id ="CR" + DateTime.Now.Year + DateTime.Now.Month+DateTime.Now.Day+DateTime.Now.Hour+DateTime.Now.Minute+DateTime.Now.Second ;
        ProductManager.AddRHBill(Bill_id, "123", 0, "no", "no", DateTime.Now.ToString(), (String)Session["username"]);
        
        
        foreach (GridViewRow row in GridView1.Rows)
   
        {
            
           if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox checkBox = row.FindControl("Reserve1CheckBox") as CheckBox;
                if (checkBox.Checked)
                {    
                        DataSet dataset =ProductManager.ShowBase_Room_Type(GridView1.Rows[i].Cells[0].Text );
                        Amount = int.Parse(dataset.Tables["Base_Room_Type"].Rows[0]["Per_night_c"].ToString());
                        String Room_id = GridView1.Rows[i].Cells[1].Text;
                        ProductManager.AddRHBillRoom_des(Bill_id, Room_id, (String)Session["check_in"], (String)Session["check_out"], Amount, 0, "no", DateTime.Now.ToString(), (String)Session["username"]);

                

                    
                }
                   
            }
           i++;
           
        }
        i = 0;
        foreach (GridViewRow row in GridView2.Rows)
        {

            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox checkBox = row.FindControl("Reserve2CheckBox") as CheckBox;
                if (checkBox.Checked)
                {
                    DataSet dataset = ProductManager.ShowBase_Room_Type(GridView2.Rows[i].Cells[0].Text);
                    Amount = int.Parse(dataset.Tables["Base_Room_Type"].Rows[0]["Per_night_c"].ToString());
                    String Room_id = GridView2.Rows[i].Cells[1].Text;
                    ProductManager.AddRHBillRoom_des(Bill_id, Room_id, (String)Session["check_in"], (String)Session["check_out"], Amount, 0, "no", DateTime.Now.ToString(), (String)Session["username"]);




                }

            }
            i++;

        }
        i = 0;
        foreach (GridViewRow row in GridView3.Rows)
        {

            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox checkBox = row.FindControl("Reserve3CheckBox") as CheckBox;
                if (checkBox.Checked)
                {
                    DataSet dataset = ProductManager.ShowBase_Room_Type(GridView3.Rows[i].Cells[0].Text);
                    Amount = int.Parse(dataset.Tables["Base_Room_Type"].Rows[0]["Per_night_c"].ToString());
                    String Room_id = GridView3.Rows[i].Cells[1].Text;
                    ProductManager.AddRHBillRoom_des(Bill_id, Room_id, (String)Session["check_in"], (String)Session["check_out"], Amount, 0, "no", DateTime.Now.ToString(), "Ashan");


                }

            }
            i++;

        }


        CTLabel.Text = "Successful";





        Response.Redirect("MAddRH_BillFSelected.aspx?bill_id=" + Bill_id);
     
    }

    
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1_PopupControlExtender.Commit(""+Calendar1.SelectedDate.Day+"-"+ ProductManager.ConvertToM(Calendar1.SelectedDate.Month.ToString())+"-" + Calendar1.SelectedDate.Year);

    
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2_PopupControlExtender.Commit("" + Calendar2.SelectedDate.Day + "-" + ProductManager.ConvertToM(Calendar2.SelectedDate.Month.ToString()) + "-" + Calendar2.SelectedDate.Year);
    }



}
