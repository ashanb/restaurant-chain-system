<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 80px;
     
        }
        .style4
        {
            width: 144px;

        }
    </style>
</head>
<body>
   <form id="Log" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" >
        </asp:ScriptManager>

        <asp:Panel ID="Panel1" runat="server" style="border-style: groove; " 
            Height="146px" Width="435px">
        
        <table style="height: 152px; width: 413px" >
            <tr>
                <td class="style3">
               <asp:Label ID="Label1" runat="server" Text="Username" Width="100px" 
                        Height="20px" ToolTip="username required"></asp:Label>
                    </td>
                <td  >
                  
                    <asp:TextBox ID="UserNameTextBox" runat="server" Height="20px" Width="155px"></asp:TextBox>
                </td>
                <td class="style4">
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="PasswordTextBox" 
                        ErrorMessage="RequiredFieldValidator" Font-Size="Small">Username Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" >
                    <asp:Label ID="Label2" runat="server" Text="Password" Width="100px" 
                         Height="20px"></asp:Label>
                </td>
                <td  >
                    <asp:TextBox ID="PasswordTextBox" runat="server" Height="20px" Width="155px" 
                        TextMode="Password" ></asp:TextBox>
                </td>
                <td class="style4">
                  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="PasswordTextBox" ErrorMessage="RequiredFieldValidator" 
                        Font-Size="Small">Password Required</asp:RequiredFieldValidator>
                        <br />
                    <asp:Label ID="output0" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;
                </td>
                <td >
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" /> &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Clear" onclick="Button2_Click" 
                        ValidationGroup="abc" />
                </td>
                <td class="style4">
                    <asp:Label ID="output" runat="server" Font-Bold="True" ForeColor="Red" 
                        Font-Size="Small"></asp:Label>
                    &nbsp;
                </td>
            </tr>
        </table>
    
    </asp:Panel>
        <asp:DropShadowExtender ID="dse" runat="server"  TargetControlID="Panel1"  Opacity=".8"   Rounded="true" TrackPosition="true" />
     
    
    </div>
    </form>

</body>
</html>
