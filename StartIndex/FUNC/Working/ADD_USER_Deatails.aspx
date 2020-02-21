<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADD_USER_Deatails.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style6
        {
            width: 218px;
        }
    </style>
      
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 784px; height: 461px">
    
      

    
      
         <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="National ID"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="NIDTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="NIDRequiredFieldValidator1" runat="server" 
                    ErrorMessage="This Field should not be null" 
                    ControlToValidate="NIDTextBox" Display="Dynamic" SetFocusOnError="True">NID Required</asp:RequiredFieldValidator>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="EmailTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator6" runat="server" 
                    ErrorMessage="This Field should not be null" 
                    ControlToValidate="EmailTextBox" Display="Dynamic">Email Required</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" 
                    runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">invalid Email </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label4" runat="server" Text="Conatact_No"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="CNTextBox" runat="server" Height="32px" Width="190px" 
                    ></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="CNRequiredFieldValidator3" runat="server" 
                    ErrorMessage="This Field should not be null" ControlToValidate="CNTextBox" 
                    Display="Dynamic">Conatct No Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="AddressTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="AddressRequiredFieldValidator7" runat="server" 
                    ErrorMessage="This Field should not be null" 
                    ControlToValidate="AddressTextBox" Display="Dynamic">Address Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label6" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="ddTextBox" runat="server"  Width="40px" Height="32px">dd</asp:TextBox>
                <asp:TextBox ID="monTextBox" runat="server" Width="40px" Height="32px" >mon</asp:TextBox>
                <asp:TextBox ID="yTextBox" runat="server" Width="40px" Height="32px">yy</asp:TextBox>
            </td> 
            <td class="style6" >
                <asp:RangeValidator ID="ddRangeValidator" runat="server" 
                    ControlToValidate="ddTextBox" Display="Dynamic" ErrorMessage="RangeValidator" 
                    MaximumValue="31" MinimumValue="1" SetFocusOnError="True" Type="Integer">invalid day format</asp:RangeValidator>
                <asp:RangeValidator ID="yyRangeValidator" runat="server" 
                    ControlToValidate="yTextBox" Display="Dynamic" ErrorMessage="RangeValidator" 
                    MaximumValue="99" MinimumValue="00" SetFocusOnError="True" Type="Integer">invalid year format</asp:RangeValidator>
                <asp:RangeValidator ID="mRangeValidator" runat="server" 
                    ControlToValidate="monTextBox" Display="Dynamic" ErrorMessage="RangeValidator" 
                    MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer">invalid month format</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label7" runat="server" Text="Sex"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="SexTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label8" runat="server" Text="First Name"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="FNTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="FNRequiredFieldValidator5" runat="server" 
                    ErrorMessage="This Field should not be null" ControlToValidate="FNTextBox" 
                    Display="Dynamic">First Name Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label9" runat="server" Text="Last Name"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="LNTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td class="style6" >
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
