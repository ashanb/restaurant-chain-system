<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recoverpass.aspx.cs" Inherits="GreetingMsg" %>

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
                    &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/images/images.jpg" />
&nbsp;&nbsp;You are successfully recover your password.</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp; &nbsp;Your Account details has been send to your mail.</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp; &nbsp; Login in 
                    again (<asp:HyperLink 
                        ID="HyperLink1" runat="server" 
                        NavigateUrl="~/Login.aspx">Log in</asp:HyperLink>
                    )</td>
            </tr>
        </table>
    

    
    </div>
    </form>

</body>
</html>