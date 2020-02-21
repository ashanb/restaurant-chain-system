<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAdd_News.aspx.cs" Inherits="News" %>
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
        GroupingText="Add News" Font-Bold="True" ForeColor="Black">
   
     <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="News ID  :" Font-Bold="False" 
                    ForeColor="Black" Font-Size="Large"></asp:Label>
            </td>
            <td >
            <asp:TextBox ID="TextBox0" runat="server" 
                    Height="32px" Width="318px" Font-Bold="True" ForeColor="Black" 
                    ReadOnly="True" ValidationGroup="a1"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox0" ErrorMessage="RequiredFieldValidator">Name Required</asp:RequiredFieldValidator>
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
                &nbsp;</td>
            <td >
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="ADD" 
                    Width="190px" ValidationGroup="a1" />
            </td>
            <td class="style6" style="width: 302px" >
                  
           
                &nbsp;</td>
        </tr>
        
        <tr>
            <td >
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
    <br />
    <asp:Panel ID="Panel2" runat="server" BorderStyle="Groove" 
        GroupingText="Delete News" Font-Bold="True" ForeColor="Black">

        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
                        AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="news_id" 
                    DataNavigateUrlFormatString="MAdd_News.aspx?news_id={0}" 
                    Text="Delete" />
            </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
                </td>
               
            </tr>
            
            <tr>
                <td>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        SelectMethod="base_news" TypeName="ProductManager">
                    </asp:ObjectDataSource>
                </td></tr>
                <tr>
                   <td>
                
                </td></tr>
                <tr>
                   <td>
                
                </td>
                </tr>
               
            
        </table>

    </asp:Panel>

    

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
</asp:Content>

