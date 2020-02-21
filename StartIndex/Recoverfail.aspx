<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recoverfail.aspx.cs" Inherits="GreetingMsg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
        }
        .style3
        {
        }
        .style4
        {
        }
    </style>
</head>
<body>
   <form id="Log" runat="server">
    <div>
    
        <table style="border-style: groove; width: 450px; height: 145px;">
            <tr>
                <td class="style2">
                    &nbsp;
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/download.jpg" />
&nbsp; We are unabled to recover your account.&nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp; &nbsp; Your Account has been disabled.Please contact admin.</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp; &nbsp; Login in With Diffrent User (<asp:HyperLink 
                        ID="HyperLink1" runat="server" 
                        NavigateUrl="~/Login.aspx">Log in</asp:HyperLink>
&nbsp;)</td>
            </tr>
        </table>
    

    
    </div>
    </form>

</body>
</html>