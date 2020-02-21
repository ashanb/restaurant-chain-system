<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAddRH_BillF.aspx.cs" Inherits="MRHBillF" %>

<%@ MasterType VirtualPath="MasterPageProp.master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div style="width: 784px; height: auto">
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">
     
       <p style="color: #000000; font-size: large; font-weight: bold">Available Rooms on 
            <asp:Label ID="DateLabel" runat="server" ForeColor="Red"></asp:Label>
        </p> 

        <table style="width:100%;">
            <tr>
                                <td class="style5" align="right">
   
        <asp:Button ID="OrderButton" runat="server" Text="Book Selected" 
            onclick="BookButton_Click" style="margin-left: 0px" />
       
            </tr>
        </table>
        <br />
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" 
            GridLines="Vertical" Width="615px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Standard" />
                <asp:BoundField DataField="Room_id" HeaderText="Room Number" />
                <asp:BoundField DataField="per_night_c" FooterText="ABC" 
                    HeaderText="Per Night(Rs/=)" />
                <asp:TemplateField HeaderText="Reserve">
                <ItemTemplate>
                    <asp:CheckBox ID="Reserve1CheckBox" runat="server" />
                </ItemTemplate>
                
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
       <br />
    
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="ObjectDataSource2" ForeColor="Black" 
            GridLines="Vertical" Width="615px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Deluxe" />
                <asp:BoundField DataField="Room_id" HeaderText="Room Number" />
                <asp:BoundField DataField="per_night_c" HeaderText="Per Night(Rs/=)" 
                    FooterText="ABC" />
                <asp:TemplateField HeaderText="Reserve">
                <ItemTemplate>
                    <asp:CheckBox ID="Reserve2CheckBox" runat="server" />
                </ItemTemplate>
                
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="ObjectDataSource3" ForeColor="Black" 
            GridLines="Vertical" Width="615px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Suite" />
                <asp:BoundField DataField="Room_id" HeaderText="Room Number" />
                <asp:BoundField DataField="per_night_c" FooterText="ABC" 
                    HeaderText="Per Night(Rs/=)" />
                <asp:TemplateField HeaderText="Reserve">
                <ItemTemplate>
                    <asp:CheckBox ID="Reserve3CheckBox" runat="server" />
                </ItemTemplate>
                
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
        <asp:Label ID="TotalLabel" runat="server"></asp:Label>
   
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        SelectMethod="ShowBase_ReservationRoomsGridAStandardDate" 
                        TypeName="ProductManager">
                        <SelectParameters>
                            <asp:SessionParameter Name="Booking_date" SessionField="check_in" 
                                Type="String" />
                            <asp:SessionParameter Name="End_date" SessionField="check_out" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td class="style2">
                    &nbsp;&nbsp;</td>
                <td>
   
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td>
   
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        SelectMethod="ShowBase_ReservationRoomsGridADeluxeDate" 
                        TypeName="ProductManager">
                        <SelectParameters>
                            <asp:SessionParameter Name="Booking_date" SessionField="check_in" 
                                Type="String" />
                            <asp:SessionParameter DefaultValue="" Name="End_date" SessionField="check_out" 
                                Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                        SelectMethod="ShowBase_ReservationRoomsGridSuiteDate" TypeName="ProductManager">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="check_out" Name="Booking_date" 
                                SessionField="check_in" Type="String" />
                            <asp:SessionParameter DefaultValue="" Name="End_date" SessionField="check_out" 
                                Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
        </table>
           </asp:Panel>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">

<style type="text/css">
        .style1
        {
            width: 340px;
        }
        .style2
        {
            width: 70px;
        }
    </style>
</asp:Content>
