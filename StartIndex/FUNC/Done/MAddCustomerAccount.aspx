<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAddCustomerAccount.aspx.cs" Inherits="FUNC_Done_MAddCustomerAccount" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<div style="width: 784px; height: 461px; color: #000000; font-size: large;">
    
      

    
      
         <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="UserNTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="UserNRequiredFieldValidator" runat="server" 
                    ControlToValidate="UserNTextBox" Display="Dynamic" 
                    ErrorMessage="UserNRequiredValidator" SetFocusOnError="True">UserName Required!</asp:RequiredFieldValidator>
            </tr>
        <tr>
            <td >
                <asp:Label ID="Label3" runat="server" Text="CallingName"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="AppNTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label4" runat="server" Text="NIC"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="NICTextBox" runat="server" Height="32px" Width="318px" 
                    ></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
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
                <asp:TextBox ID="PasswordTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label6" runat="server" Text="PasswordQues"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="PasswordQTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td> 
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label7" runat="server" Text="PasswordAns"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="PasswordAnsTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
            </td>
        </tr>
        <tr>
            <td class="style7" >
                <br />
            </td>
            <td colspan="2" class="style7" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Step 2<br />
            </td>
            <td >
                <asp:Button ID="Button2" runat="server" OnClick="Submit" Text="Submit" 
                    Width="190px" />
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



</asp:Content>


