<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MEdit_BK.aspx.cs" Inherits="ViewUsers" %>
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
                            AllowSorting="True" AutoGenerateColumns="False" AllowPaging="True" 
                            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="3" CellSpacing="2">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="item_no" 
                                    HeaderText="Item No" />
                                <asp:BoundField DataField="item_name" HeaderText="Item Name" />
                                <asp:BoundField DataField="q_av" HeaderText="Q Available" />
                                <asp:BoundField DataField="unit_price" HeaderText="Unit Price" />
                                <asp:BoundField DataField="buffer_q" HeaderText="Buffer Q" />
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
                        <br />
                        <br />
            </td>
            <tr>
            <td class="style3" colspan="3" >
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="Edit_Stocks" TypeName="ProductManager" 
                    UpdateMethod="update_Shenali_Stocks">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="BK" Name="loc" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="item_no" Type="String" />
                        <asp:Parameter Name="q_av" Type="Int32" />
                        <asp:Parameter Name="unit_price" Type="String" />
                        <asp:Parameter Name="buffer_q" Type="String" />
                        <asp:Parameter Name="item_name" Type="String" />
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


