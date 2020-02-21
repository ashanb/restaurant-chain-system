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
public partial class FUNC_OK_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Literal1.Visible = false;
        RHManager.Visible = false;
        Worker.Visible = false;
        Admin.Visible = false;
        Receptionist.Visible = false;
        RTManager.Visible = false;
        String fulLoc = (string)Session["location_id"];
        if (fulLoc == "BK")
        {
            fulLoc = "Bakery";
        }
        else if (fulLoc == "RT")
        {
            fulLoc = "Restaurant";
        }
        else if (fulLoc == "RH")
        {
            fulLoc = "Rest House";
        }
        else if (fulLoc == "TAO")
        {
            fulLoc = "Take Away";
        }
        else
        {
            fulLoc = "Hacker";
        }


        if((String)Session["usertype"] =="Admin")
        {
            RHManager.Visible = false;
            RTManager.Visible = false;
            Worker.Visible = false;
            Admin.Visible = true;
            Receptionist.Visible = false;
            typelit.Text = "Administrator";
            userlit.Text =(string)Session["username"] +"";
            userl.Text = "All";
        }
        else if ((String)Session["usertype"] == "Manager" && (String)Session["location_id"] != "RH")
        {
            RHManager.Visible = false;
            RTManager.Visible = true;
            Worker.Visible = false;
            Admin.Visible = false;
            typelit.Text = "Manager";
            Receptionist.Visible = false;
            userlit.Text = (string)Session["username"] + "";
            userl.Text = fulLoc;
        }
        else if ((String)Session["usertype"] == "Manager" && (String)Session["location_id"] == "RH")
        {
            RHManager.Visible = true;
            RTManager.Visible = false;
            Worker.Visible = false;
            Admin.Visible = false;
            typelit.Text = "Manager";
            Receptionist.Visible = false;
            userlit.Text = (string)Session["username"] + "";
            userl.Text = fulLoc;
        }
        else if((String)Session["usertype"] =="Staff" && (String)Session["location_id"] !="RH" )
        {
            RHManager.Visible = false;
            RTManager.Visible = false;
            Worker.Visible = true;
            Admin.Visible = false;
            Receptionist.Visible = false;
            typelit.Text = "Staff";
            userlit.Text = (string)Session["username"] + "";
            userl.Text = fulLoc;
        }

        else if((String)Session["usertype"] =="Staff" && (String)Session["location_id"] =="RH" )
        {
            RHManager.Visible = false;
            RTManager.Visible = false;
            Worker.Visible = false;
            Admin.Visible = false;
            Receptionist.Visible = true;
            typelit.Text = "Staff";
            userlit.Text = (string)Session["username"] + "";
            userl.Text = fulLoc;
        }
        else
        {
            RHManager.Visible = false;
            RTManager.Visible = false;
            Worker.Visible = false;
            Admin.Visible = false;
            typelit.Text = "Unknown";
            userlit.Text = (string)Session["username"] + "";
            userl.Text = fulLoc;
        }
        try
        {
            DataSet ds = ProductManager.base_news();

            int i =ds.Tables["Base_news"].Rows.Count;
            int j =0;
           while (j<i)
            {

                Lit1.Text += "<br/><br/> -" + ds.Tables["Base_news"].Rows[j]["added"].ToString() + "<br/>" + ds.Tables["Base_news"].Rows[j]["content"].ToString();
                j++;
            }
        }
        catch
        {
            Lit1.Text += "<br/lkdjfkdkjfkldjfkl";
        }

  
        
        if (!IsPostBack)
        {
            FooterLabel.DataBind();
        }

    }

    public string HeadingMessage
    {
        set { HeadingLabel.Text = value; }
    }

    public string ErrorMessage
    {
        set
        { 
            StatusLabel.Text = value;
            StatusLabel.CssClass = "Error";
        }
    }

    public string ResultMessage
    {
        set
        {
            StatusLabel.Text = value;
            StatusLabel.CssClass = "Result";
        }
    }

    protected void MenuTreeView_SelectedNodeChanged(object sender, EventArgs e)
    {

    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {

    }
}
