<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAddRH_Bill.aspx.cs" Inherits="MRHBill" %>

<%@ MasterType VirtualPath="MasterPageProp.master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div style="width: 784px; height: auto">
        <asp:Panel ID="Panel3" runat="server" BorderStyle="Groove">
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
            <ContentTemplate>
         <asp:Panel ID="Panel4" runat="server" BorderStyle="Groove" GroupingText="Search Options">
        <table style="width:100%;">
        
            <tr>
                <td class="style6">
                    <asp:Label ID="Label2" runat="server" Text="Check in Date" ForeColor="Black"></asp:Label>
                    </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="96px"></asp:TextBox>
                    <asp:PopupControlExtender ID="TextBox1_PopupControlExtender" runat="server" 
                        DynamicServicePath="" Enabled="True" ExtenderControlID="" 
                        TargetControlID="TextBox1" PopupControlID="Panel1" Position="Right">
                    </asp:PopupControlExtender>
                    </td>
                <td>
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                                    onselectionchanged="Calendar1_SelectionChanged" Width="200px">
                                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                    <NextPrevStyle VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#808080" />
                                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                    <SelectorStyle BackColor="#CCCCCC" />
                                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <WeekendDayStyle BackColor="#FFFFCC" />
                                </asp:Calendar>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:Panel>
                    </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label3" runat="server" Text="Check Out Date" ForeColor="Black"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="96px"></asp:TextBox>
                    <asp:PopupControlExtender ID="TextBox2_PopupControlExtender" runat="server" 
                        DynamicServicePath="" Enabled="True" ExtenderControlID="" 
                        PopupControlID="Panel2" TargetControlID="TextBox2" Position="Right">
                    </asp:PopupControlExtender>
                    </td>
                <td>
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
                                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                                    Width="200px" onselectionchanged="Calendar2_SelectionChanged">
                                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                    <NextPrevStyle VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#808080" />
                                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                    <SelectorStyle BackColor="#CCCCCC" />
                                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <WeekendDayStyle BackColor="#FFFFCC" />
                                </asp:Calendar>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style8" colspan="2">
                    <asp:Label ID="CTLabel" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style8">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
                </td>
                <td class="style4">
                    </td>
            </tr>
            <tr>
                <td class="style2" colspan="3">
                   <p style="color: #000000; font-size: large; font-weight: bold; width: 302px;">&nbsp;Available Rooms on 
            <asp:Label ID="DateLabel" runat="server" ForeColor="Red"></asp:Label>
                   
                &nbsp;</td>
            </tr>
            <tr>
                <td class="style5" align="right" colspan="3">
     <asp:Button ID="OrderButton" runat="server" Text="Book Selected" 
            onclick="BookButton_Click" style="margin-left: 0px" />
       
                </td>
            </tr>
        </table>
          </asp:Panel>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" 
            GridLines="Vertical" Width="615px" CellSpacing="10">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Standard Rooms" />
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

<SortedAscendingCellStyle BackColor="#FBFBF2"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#848384"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#EAEAD3"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#575357"></SortedDescendingHeaderStyle>
        </asp:GridView>
           <br />       
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="ObjectDataSource2" ForeColor="Black" 
            GridLines="Vertical" Width="615px" CellSpacing="10">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Deluxe   Rooms" />
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
            GridLines="Vertical" Width="615px" CellSpacing="10" 
            style="margin-bottom: 0px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Suite      Rooms" />
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
   
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="ShowBase_ReservationRoomsGridAStandardDate" 
            TypeName="ProductManager">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="Booking_date" SessionField="check_in" 
                    Type="String" />
                <asp:SessionParameter Name="End_date" SessionField="check_out" 
                    Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
   
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
            SelectMethod="ShowBase_ReservationRoomsGridADeluxeDate" 
            TypeName="ProductManager">
            <SelectParameters>
                <asp:SessionParameter Name="Booking_date" SessionField="check_in" 
                    Type="String" />
                <asp:SessionParameter Name="End_date" SessionField="check_out" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
          <br />
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
            SelectMethod="ShowBase_ReservationRoomsGridSuiteDate" 
            TypeName="ProductManager">
            <SelectParameters>
                <asp:SessionParameter Name="Booking_date" SessionField="check_in" 
                    Type="String" />
                <asp:SessionParameter Name="End_date" SessionField="check_out" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
   
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
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
                    &nbsp;</td>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
        </table>
        </ContentTemplate>
            </asp:UpdatePanel>

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
        .style3
        {
            width: 187px;
            height: 23px;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
        }
        .style6
        {
            width: 187px;
        }
        .style7
        {
            width: 129px;
        }
        .style8
        {
            height: 23px;
        }
        </style>
</asp:Content>
