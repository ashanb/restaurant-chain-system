<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAddItemCategory.aspx.cs" Inherits="Add_item_Category" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<div style="width: 784px; height: 461px; color: #000000; font-size: large;">
    
      

    
      
         <table>
        <tr>
            <td>
                Item_Category</td>
            <td >
                <asp:TextBox ID="ItemCTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="ItemCRequiredFieldValidator" runat="server" 
                    ControlToValidate="ItemCTextBox" ErrorMessage="RequiredFieldValidator">Item_Category Required</asp:RequiredFieldValidator>
            </tr>
        <tr>
            <td >
                Name</td>
            <td >
                <asp:TextBox ID="NameTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" 
                    ControlToValidate="NameTextBox" ErrorMessage="RequiredFieldValidator">Name Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <br />
            </td>
            <td >
                &nbsp;</td>
            <td class="style6" style="width: 302px" >
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
                <br />
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


