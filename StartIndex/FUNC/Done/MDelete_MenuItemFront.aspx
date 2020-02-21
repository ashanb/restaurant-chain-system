<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MDelete_MenuItemFront.aspx.cs" Inherits="DeleteMenuItemFront" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        #TextArea1
        {
            width: 319px;
            height: 68px;
        }
        .style2
        {
            width: 101px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginInfo" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

    
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">

     <table>
        <tr>
            <td width="auto">
                <asp:Label ID="Label2" runat="server" Text="Name  :" Font-Bold="False" 
                    ForeColor="Black" Font-Size="Large"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="150px" 
                    DataSourceID="ObjectDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
            </td>
            <td class="style6" style="width: 302px" >
                &nbsp;</tr>
        <tr>
            <td class="style2" >
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="ShowBase_MenuItem_FrontName" TypeName="ProductManager">
                </asp:ObjectDataSource>
            </td>
            <td >
    
                &nbsp;</td>
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
    
        <tr>
            <td class="style2" >
                &nbsp;</td>
            <td >
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Delete" 
                    Width="100px" Height="40px" />
            </td>
            <td class="style6" style="width: 302px" >
                  
           
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style2" >
                <asp:Label ID="StatusLabel" runat="server" ForeColor="Black" Text="Status"></asp:Label>
            </td>
            <td >
                <asp:Label ID="output" runat="server" ForeColor="#990033"></asp:Label>
            </td>
            <td style="width: 302px" >
                &nbsp;</td>
        </tr>
    </table>
  

    </asp:Panel>
    

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
</asp:Content>

