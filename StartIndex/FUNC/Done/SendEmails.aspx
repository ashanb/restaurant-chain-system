<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="SendEmails.aspx.cs" Inherits="MenuItemFront" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        #TextArea1
        {
            width: 319px;
            height: 68px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginInfo" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

    
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" 
        GroupingText="Compose Mail" Font-Bold="True" ForeColor="Black">

     <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Email Heading" Font-Bold="False" 
                    ForeColor="Black" Font-Size="Large"></asp:Label>
            </td>
            <td >
            <asp:TextBox ID="TextBox0" runat="server" 
                    Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox0" ErrorMessage="RequiredFieldValidator">Heading Required</asp:RequiredFieldValidator>
         </tr>
   
        <tr>
            <td >
                <br />
            </td>
            <td >
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="ShowBase_Customer_Emails" TypeName="ProductManager">
                </asp:ObjectDataSource>
            </td>
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label12" runat="server" Font-Size="Large" Text="Description" Font-Bold="False" 
                    ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <textarea ID="TextArea1" style="width: 318px" cols="40" rows="5" runat="server"></textarea></td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextArea1" ErrorMessage="RequiredFieldValidator">Content Body Required</asp:RequiredFieldValidator>
            </td>
        </tr>
         
        
        <tr>
            <td >
                <asp:Label ID="Label13" runat="server" Text="Receiver Email"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="ObjectDataSource1" DataTextField="email" DataValueField="email" 
                    Width="168px">
                </asp:DropDownList>
            </td> 
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Send" 
                    Width="190px" />
            </td>
            <td class="style6" style="width: 302px" >
                  
           
                &nbsp;</td>
        </tr>
        
        <tr>
            <td >
                <asp:Label ID="StatusLabel0" runat="server" ForeColor="Black" Text="Status"></asp:Label>
            </td>
            <td >
                <asp:Label ID="output0" runat="server" ForeColor="#990033"></asp:Label>
            </td>
            <td style="width: 302px" >
                &nbsp;</td>
        </tr>
    </table>
  

    </asp:Panel>
    <br />
        

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
</asp:Content>

