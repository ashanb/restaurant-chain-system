<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MUpdate_BK_Items.aspx.cs" Inherits="UpdateBK_Items" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

<div style="width: 784px; height: 715px; color: #000000; font-size: large;">
    
      
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">

    
      
         <table border="strong">
        <tr>
            <td style="width: 139px">
                <asp:Label ID="Label12" runat="server" Text="Item No"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="ITEM_NO" DataValueField="ITEM_NO" 
                    Height="32px" Width="169px">
                </asp:DropDownList>
            </td>
            <td class="style6" >
                &nbsp;</tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="AddALabel" runat="server" Text="Adding Amount" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="AddATextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="AddARequiredFieldValidator0" runat="server" 
                    ControlToValidate="AddATextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Initial Adding Amount Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT &quot;ITEM_NO&quot; FROM &quot;BASE_BK_ITEMS&quot;">
                </asp:SqlDataSource>
                <br />
            </td>
            <td >
                &nbsp;</td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td style="width: 139px">
                <br />
            </td>
            <td >
                <asp:Button ID="Button2" runat="server" OnClick="Add" Text="ADD" 
                    Width="196px" style="margin-left: 0px" />
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label11" runat="server" Text="OutPut" ForeColor="Black"></asp:Label>
&nbsp;</td>
            <td>
                <asp:Label ID="output" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
        </asp:Panel>
    </div>

</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
</asp:Content>


