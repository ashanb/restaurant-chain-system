<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MUser_Status.aspx.cs" Inherits="ViewUsers" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <div style="width: auto; height: auto; color: #000000; font-size: large;">
    
      

    
    <asp:Panel ID="Panel1" runat="server" Wrap="True" BorderStyle="Groove">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
      
         <table>
        <tr>
            <td class="style4" colspan="3">
                           
                       
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
                            AllowSorting="True" AutoGenerateColumns="False" AllowPaging="True">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="username" 
                                    HeaderText="Username" />
                                <asp:BoundField DataField="password" HeaderText="Password" />
                                <asp:BoundField DataField="status" HeaderText="Status" />
                            </Columns>
                        </asp:GridView>
                        <br />
                        <br />
            </td>
            <tr>
            <td class="style3" colspan="3" >
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="ShowBase_Users" TypeName="ProductManager" 
                    UpdateMethod="user_Status">
                    <UpdateParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="status" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                </td>
        </tr>
        <tr>
            <td class="style3" colspan="3" >
                <br />
                <br />
            </td>
        </tr>
     
    </table> 
       </ContentTemplate>
        </asp:UpdatePanel>
     </asp:Panel>

    </div>
  


</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style3
        {
        }
        .style4
        {
            height: 81px;
        }
        </style>
</asp:Content>


