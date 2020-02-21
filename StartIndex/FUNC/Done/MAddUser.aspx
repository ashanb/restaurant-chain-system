<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAddUser.aspx.cs" Inherits="FUNC_Done_mAddUserAccount" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<div style="width: 784px; height: 461px; color: #000000; font-size: large;">
    
      

    
      
         <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="UserNTextBox" runat="server" Height="32px" Width="318px" 
                    ontextchanged="UserNTextBox_TextChanged"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="UserNRequiredFieldValidator" runat="server" 
                    ControlToValidate="UserNTextBox" Display="Dynamic" 
                    ErrorMessage="UserNRequiredValidator" SetFocusOnError="True">UserName Required!</asp:RequiredFieldValidator>
            </tr>
        <tr>
            <td >
                <asp:Label ID="Label3" runat="server" Text="AppName"></asp:Label>
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
                <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator1" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="PasswordTextBox">Password Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label6" runat="server" Text="PasswordQues"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="PasswordQTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td> 
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="PassQRequiredFieldValidator2" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="PasswordQTextBox">Password Question Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label7" runat="server" Text="PasswordAns"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="PasswordAnsTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="PassAnsRequiredFieldValidator3" runat="server" 
                    ErrorMessage="RequiredFieldValidator" 
                    ControlToValidate="PasswordAnsTextBox">Password Answer Required</asp:RequiredFieldValidator>
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
                <asp:RadioButton ID="WorkerRadioButton" runat="server" Text="Staff" 
                    GroupName="UserType" />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label12" runat="server" Text="Location_ID"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="LocationTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td style="width: 302px" >
                <asp:RequiredFieldValidator ID="LocationRequiredFieldValidator1" runat="server" 
                    ControlToValidate="LocationTextBox" Display="Dynamic" 
                    ErrorMessage="LocationRequiredFieldValidator" SetFocusOnError="True">Location ID Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Step 1<br />
            </td>
            <td >
                <asp:Button ID="Button2" runat="server" OnClick="ADD" Text="Submit" 
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

