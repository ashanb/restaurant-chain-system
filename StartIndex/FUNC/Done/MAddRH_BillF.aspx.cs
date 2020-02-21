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
public partial class MRHBillF : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }

        String check_in = (String)Session["check_in"];
        String check_out = (String)Session["check_out"];


        if (check_in == check_out)
        {
            DateLabel.Text = check_in;
        }
        else
        {
            DateLabel.Text = check_in + " To " + check_out;
        }


    }

    protected void BookButton_Click(object sender, EventArgs e)
    {

        int i = 0;
        int j = 0;

        int Amount = 0;

        String Bill_id = "CR" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + DateTime.Now.Hour + DateTime.Now.Minute + DateTime.Now.Second;
        ProductManager.AddRHBill(Bill_id, "123", 0, "no", "no", DateTime.Now.ToString(), (String)Session["username"]);


        foreach (GridViewRow row in GridView1.Rows)
        {

            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox checkBox = row.FindControl("Reserve1CheckBox") as CheckBox;
                if (checkBox.Checked)
                {
                    DataSet dataset = ProductManager.ShowBase_Room_Type(GridView1.Rows[i].Cells[0].Text);
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
                    ProductManager.AddRHBillRoom_des(Bill_id, Room_id, (String)Session["check_in"], (String)Session["check_out"], Amount, 0, "no", DateTime.Now.ToString(), (String)Session["username"]);


                }

            }
            i++;

        }


        DateLabel.Text = "Successful";





        Response.Redirect("MAddRH_BillFSelected.aspx?bill_id=" + Bill_id);
    }

}