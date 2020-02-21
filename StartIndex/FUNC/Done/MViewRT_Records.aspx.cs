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

public partial class RTRecords : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {


        String usertype = (String)Session["usertype"];
        if (Session["username"] == null || usertype == "Customer" || usertype == "Staff")
        {
            Response.Redirect("../../ShenaliHome.aspx");
            return;
        }
     Master.HeadingMessage = "Viewing Restaurant Records";
     output.Text = "";

    }
   
    protected void Genarate(object sender, EventArgs e)
    {

        if (RTypeDropDownList.SelectedItem.ToString() == "Total Number of Sales Done")
        {
            try{
            if (DateDropDownList.SelectedValue == "Last 7 days")
            {
                int i = 0;
                int count = 0;
                Chart1.MaxValue = 80;

                Chart1.Values.Clear();

                while (i < 7)
                {
                    //  D1 = Convert.ToDateTime(ds.Tables["Base_salespaid"].Rows[i]["modified"].ToString());

                    DataSet ds = ProductManager.ShowBase_BillsPaid("RT", DateTime.Now.AddDays(-i).ToShortDateString());
                    count = ds.Tables["Base_salespaid"].Rows.Count;


                    Chart1.Values.Add(DateTime.Now.AddDays(-i).ToShortDateString(), count);

                    i++;
                }


                div1.Visible = true;


                //   Chart1.MaxValue = 60;

                //     Chart1.Values.Clear();

                //  Chart1.Values.Add("Jan", 10);
                //  Chart1.Values.Add("Feb", 20);
                //  Chart1.Values.Add("Mar", 30);
                //  Chart1.Values.Add("Apr", 50);
                //   Chart1.Values.Add("May", 5);  
                Chart1.YAxisLabels.Add("0");
                Chart1.YAxisLabels.Add("25");
                Chart1.YAxisLabels.Add("50");

                //  Chart1.CssClass = "lc";
                Chart1.CssClass = GraphDropDownList.SelectedValue;
                GenaratedInfoLabel.Text = "Information Provided";
                output.Text = "Generation Successful";

            }

            else if (DateDropDownList.SelectedValue == "Weekly")
            {
                int i = 0;
                int j = 0;
                int count = 0;
                Chart1.MaxValue = 200;

                Chart1.Values.Clear();

                while (i < 5)
                {
                    //  D1 = Convert.ToDateTime(ds.Tables["Base_salespaid"].Rows[i]["modified"].ToString());
                    j = 0;
                    count = 0;
                    while (j < 7)
                    {

                        DataSet ds = ProductManager.ShowBase_BillsPaid("RT", DateTime.Now.AddDays(-(j + (i * 7))).ToShortDateString());
                        count = count + ds.Tables["Base_salespaid"].Rows.Count;
                        j++;
                    }
                    Chart1.Values.Add("W " + (i + 1), count);

                    i++;
                }


                div1.Visible = true;


                Chart1.YAxisLabels.Add("0");
                Chart1.YAxisLabels.Add("100");
                Chart1.YAxisLabels.Add("200");

                Chart1.CssClass = GraphDropDownList.SelectedValue;
                GenaratedInfoLabel.Text = "Information Provided";
                output.Text = "Generation Successful";

            }
            else if (DateDropDownList.SelectedValue == "Monthly")
            {
                int i = 0;
                int j = 0;
                int count = 0;
                Chart1.MaxValue = 500;

                Chart1.Values.Clear();

                while (i < 5)
                {
                    //  D1 = Convert.ToDateTime(ds.Tables["Base_salespaid"].Rows[i]["modified"].ToString());
                    j = 0;
                    count = 0;
                    while (j < 30)
                    {

                        DataSet ds = ProductManager.ShowBase_BillsPaid("RT", DateTime.Now.AddDays(-(j + (i * 30))).ToShortDateString());
                        count = count + ds.Tables["Base_salespaid"].Rows.Count;
                        j++;
                    }
                    Chart1.Values.Add("M " + (i + 1), count);

                    i++;
                }


                div1.Visible = true;


                Chart1.YAxisLabels.Add("0");
                Chart1.YAxisLabels.Add("100");
                Chart1.YAxisLabels.Add("200");
                Chart1.YAxisLabels.Add("300");
                Chart1.YAxisLabels.Add("400");

                Chart1.CssClass = GraphDropDownList.SelectedValue;
                GenaratedInfoLabel.Text = "Information Provided";
                output.Text = "Generation Successful";

            }
            else
            {
                div1.Visible = true;
                GenaratedInfoLabel.Text = "Not enough Information Provided";
                output.Text = "Generation Unsuccessful";
            }
        }
        catch
        {
            output.Text = "Failed";
        }
            return;
        }
        
        else
        {
            output.Text = "Generation Unsuccessful";
            return;
        }
    }
}