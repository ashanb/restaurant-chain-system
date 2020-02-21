<%@ Page Language="C#" AutoEventWireup="true" CodeFile="USER_Account.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style6
        {
            width: 218px;
        }
        .style7
        {
            height: 41px;
        }
    </style>
      
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 784px; height: 461px">
    
      

    
      
         <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="UserNTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="UserNRequiredFieldValidator" runat="server" 
                    ControlToValidate="UserNTextBox" Display="Dynamic" 
                    ErrorMessage="UserNRequiredValidator" SetFocusOnError="True">UserName Required!</asp:RequiredFieldValidator>
            </tr>
        <tr>
            <td >
                <asp:Label ID="Label3" runat="server" Text="AppName"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="AppNTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td class="style6" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label4" runat="server" Text="NIC"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="NICTextBox" runat="server" Height="32px" Width="190px" 
                    ></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="NICRequiredFieldValidator" runat="server" 
                    ControlToValidate="NICTextBox" Display="Dynamic" 
                    ErrorMessage="UserNRequiredValidator" SetFocusOnError="True">NIC Required!</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="PasswordTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td class="style6" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label6" runat="server" Text="PasswordQues"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="PasswordQTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td> 
            <td class="style6" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label7" runat="server" Text="PasswordAns"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="PasswordAnsTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td class="style7" >
                <asp:Label ID="Label8" runat="server" Text="UserType"></asp:Label>
                <br />
            </td>
            <td colspan="2" class="style7" >
                <asp:RadioButton ID="AdminRadioButton" runat="server" GroupName="UserType" 
                    Text="Admin" />
                <asp:RadioButton ID="ManagerRadioButton" runat="server" Text="Manager" 
                    GroupName="UserType" />
                <asp:RadioButton ID="WorkerRadioButton" runat="server" Text="Worker" 
                    GroupName="UserType" />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label12" runat="server" Text="Location_ID"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="LocationTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="LocationRequiredFieldValidator1" runat="server" 
                    ControlToValidate="LocationTextBox" Display="Dynamic" 
                    ErrorMessage="LocationRequiredFieldValidator" SetFocusOnError="True">Location ID Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Save"></asp:Label>
                <br />
            </td>
            <td >
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" Width="190px" />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label11" runat="server" Text="OutPut"></asp:Label>
&nbsp;</td>
            <td>
                <asp:Label ID="output" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
