<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 430px;
        }
        .style2
        {
            width: 602px;
        }
        .style6
        {
            width: 430px;
            height: 187px;
        }
        .style7
        {
            width: 602px;
            height: 187px;
        }
        .style8
        {
            height: 187px;
        }
        .style9
        {
            width: 430px;
            height: 46px;
        }
        .style10
        {
            width: 602px;
            height: 46px;
        }
        .style11
        {
            height: 46px;
        }
        .style12
        {
            width: 154px;
        }
        .style13
        {
            width: 214px;
        }
    </style>
</head>
<body style="height: 395px">
    <form id="form1" runat="server">
    <div style="background-image: url('../../images/background_maroon_copy.jpg'); background-repeat: inherit;
        background-attachment: fixed; height: 800px; width: 1400px;" runat="server">
        <div style="height: 133px">
           
        </div>
        <div style="height: 241px">
            <table style="width: 100%; height: 333px;">
                <tr>
                    <td class="style9">
                    </td>
                    <td class="style10">
                    </td>
                    <td class="style11">
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;
                    </td>
                    <td class="style7">
                        <table style="width: 100%; height: 142px; margin-left: 0px;">
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                        ForeColor="Black" Text="USER NAME"></asp:Label>
                                </td>
                                <td class="style13">
                                    <asp:TextBox ID="UserNTextBox" runat="server" Height="35px" 
                                        ontextchanged="TextBox1_TextChanged" Width="210px" ForeColor="Black"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                        Font-Strikeout="False" ForeColor="Black" Text="PASSWORD"></asp:Label>
                                </td>
                                <td class="style13">
                                    <asp:TextBox ID="PasswordTextBox" runat="server" Height="35px" 
                                        ontextchanged="TextBox2_TextChanged" Width="210px" ForeColor="Black"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style13">
                                    <asp:Button ID="LoginButton" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Black" Text="LOGIN" Width="151px" onclick="Button2_Click" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="style8">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;
                    </td>
                    <td class="style2">
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
