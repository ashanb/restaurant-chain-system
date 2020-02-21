<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MViewOnlineOrders.aspx.cs" Inherits="ViewOnlineOrders" ViewStateEncryptionMode="Always" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <div style="width: auto; height: auto; color: #000000; font-size: large;">
    
      

        <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove"  Wrap="True">

      
         <table>
        <tr>
            <td class="style4" colspan="3" >
             
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                    <ContentTemplate>
                        &nbsp;<table>
                            <tr>
                                <td class="style5" colspan="3">
                                    <asp:Label ID="Label1" runat="server" 
                                        Text="Note : If you want you can delete junk orders by clicking bellow link."></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    <asp:Button ID="Button1" runat="server" Height="32px" Text="Delete Orders" 
                                        Width="169px" onclick="Button1_Click" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                         
                        </table>

                        <div ID="orderinfo" runat="server">
                            <asp:Panel ID="Panel2" runat="server" BorderStyle="Groove" 
                                GroupingText="Order Detail" ForeColor="Black" Font-Bold="True" >
                              <table style="width: 100%;">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="Order ID"></asp:Label>
                                    </td>
                                    <td class="style9">
                                     
                                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                                    </td>
                                   <td rowspan="7"> 
                                       <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                                           DataSourceID="ObjectDataSource2" BackColor="White" BorderColor="#DEDFDE" 
                                           BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Bold="True" 
                                           ForeColor="Black" GridLines="Vertical">
                                           <AlternatingRowStyle BackColor="White" />
                                           <FooterStyle BackColor="#CCCC99" />
                                           <HeaderStyle BackColor="#6B696B" Font-Bold="True" Font-Size="Small" 
                                               ForeColor="White" />
                                           <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                           <RowStyle BackColor="#F7F7DE" />
                                           <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                           <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                           <SortedAscendingHeaderStyle BackColor="#848384" />
                                           <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                           <SortedDescendingHeaderStyle BackColor="#575357" />
                                       </asp:GridView>
                                   </td>
                                 
                                </tr>
                                <tr>
                                    <td>
                                       
                                        <asp:Label ID="Label3" runat="server" Text="Customer ID"></asp:Label>
                                    </td>
                                    <td class="style9">
                             
                                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                     
                                        <asp:Label ID="Label4" runat="server" Text="Customer Name"></asp:Label>
                                    </td>
                                    <td class="style9">
                                    
                                        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
                                    </td>
                                   
                                </tr>
                                   <tr>
                                    <td>
                                     
                                        <asp:Label ID="Label5" runat="server" Text="Contact No"></asp:Label>
                                    </td>
                                     
                                    <td class="style9">
                                       
                                        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                                    </td>
                                </tr>
                                   <tr>
                                    <td>
                                     
                                        <asp:Label ID="Label6" runat="server" Text="Contact Email"></asp:Label>
                                    </td>
                                    <td class="style9">
                                       
                                        <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
                                    </td>
                                </tr>
                                   <tr>
                                    <td>
                                     
                                        <asp:Label ID="Label7" runat="server" Text="Deliver Status"></asp:Label>
                                    </td>
                                   <td class="style9">
                                        <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True"></asp:TextBox>
                                    </td>
                                </tr>
                                  <tr>
                                    <td>
                                     
                                        <asp:Label ID="Label8" runat="server" Text="Order Date"></asp:Label>
                                    </td>
                                   <td class="style9">
                                        <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>

                            </asp:Panel>
                        </div>
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
                            Font-Size="Small" Height="123px" Width="138px" AllowPaging="True" 
                            style="margin-right: 0px" BackColor="#DEBA84" BorderColor="#DEBA84" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:HyperLinkField DataNavigateUrlFields="order_id" 
                                    DataNavigateUrlFormatString="MViewOnlineOrders.aspx?order_id={0}" 
                                    Text="Select" />
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
                        &nbsp; &nbsp; &nbsp;
                        <br />
                        <br />
                    
                        <br />
                        <br />
                    </ContentTemplate>
               </asp:UpdatePanel>
            </td>
            <tr>
            <td class="style6" colspan="3" >
                
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="ShowBase_Online_Orders" TypeName="ProductManager" 
                    UpdateMethod="Update_Online_Orders">
                    <UpdateParameters>
                        <asp:Parameter Name="Order_id" Type="String" />
                        <asp:Parameter Name="customer_Id" Type="String" />
                        <asp:Parameter Name="order_total" Type="Int32" />
                        <asp:Parameter Name="amount" Type="Single" />
                        <asp:Parameter Name="order_date" Type="String" />
                        <asp:Parameter Name="deliver_address" Type="String" />
                        <asp:Parameter Name="deliver_status" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                
                </td>
        </tr>
        <tr>
            <td class="style6" colspan="3" >
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    SelectMethod="ShowBase_OrderDetailsWName" TypeName="ProductManager">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="order_id" QueryStringField="order_id" 
                            Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
                <br />
            </td>
        </tr>
      
    </table> 
            </asp:Panel>
    </div>



</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style4
        {
            height: 81px;
            width: 287px;
        }
        .style5
        {
        }
        .style6
        {
            width: 287px;
        }
        .style8
        {
            width: 312px;
        }
        .style9
        {
            width: 241px;
        }
    </style>
</asp:Content>


