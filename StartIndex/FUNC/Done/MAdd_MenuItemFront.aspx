<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAdd_MenuItemFront.aspx.cs" Inherits="MenuItemFront" %>
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
        GroupingText="Add Menu Front" Font-Bold="True" ForeColor="Black">

     <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Name  :" Font-Bold="False" 
                    ForeColor="Black" Font-Size="Large"></asp:Label>
            </td>
            <td >
            <asp:TextBox ID="TextBox0" runat="server" 
                    Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox0" ErrorMessage="RequiredFieldValidator">Name Required</asp:RequiredFieldValidator>
         </tr>
        <tr>
            <td >
              <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Value :" Font-Bold="False" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td >
    
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Value Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="No of Stars" Font-Bold="False" 
                    ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="60px" MaxLength="2" 
                    ></asp:TextBox>
                <asp:Label ID="StarserrorLabel" runat="server" Font-Bold="True" 
                    ForeColor="#990000"></asp:Label>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">No of Required</asp:RequiredFieldValidator>
            </td>
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
                <asp:Label ID="Label" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="Black" Text="Image File "></asp:Label>
            </td>
            <td >
                <asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="309px" />
            </td> 
            <td class="style6" style="width: 302px" >
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="RequiredFieldValidator">Image File Required</asp:RequiredFieldValidator>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="ADD" 
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
    <asp:Panel ID="Panel2" runat="server" BorderStyle="Groove" 
        GroupingText="Delete Menu Front Item" Font-Bold="True" ForeColor="Black">
        <table>
        <tr>
            <td width="auto">
                <asp:Label ID="Label1" runat="server" Text="Name  :" Font-Bold="False" 
                    ForeColor="Black" Font-Size="Large"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="150px" 
                    DataSourceID="ObjectDataSource1" DataTextField="name" 
                    DataValueField="name" ValidationGroup="a1">
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
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Delete" 
                    Width="100px" Height="31px" ValidationGroup="a1" />
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

