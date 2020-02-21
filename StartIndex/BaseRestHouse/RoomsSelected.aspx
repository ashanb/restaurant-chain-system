<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RoomsSelected.aspx.cs" Inherits="BaseRestHouse_RoomSelected" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 46px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 46px;
            width: 174px;
        }
        .style4
        {
            width: 174px;
        }
        .style5
        {
            height: 23px;
            width: 174px;
        }
        .style6
        {
            height: 46px;
            width: 361px;
        }
        .style7
        {
            width: 361px;
        }
        .style8
        {
            height: 23px;
            width: 361px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 620px; height: 850px;">
    
        <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;
                    &nbsp; 
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" 
                        
                        Text="Following Rooms are Selected for the reservation Please Confirm and Proceed...."></asp:Label>
                    &nbsp; &nbsp; 
                    <br />
                    <asp:GridView 
                        ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" 
                        DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" 
                        Width="604px" BorderStyle="None" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Room_id" HeaderText="Room Number" />
                            <asp:BoundField DataField="check_in" HeaderText="Check In" />
                            <asp:BoundField DataField="Check_out" HeaderText="Check Out" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" 
                            HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
            </table>


    
        <table style="width: 98%; height: 140px;">
            <tr>
                <td class="style3">
                </td>
                <td class="style6">
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label1" runat="server" Text="Bill Number :"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="BillNoLabel" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label2" runat="server" Text="Total Number of Rooms :"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="TotalNoILabel" runat="server"></asp:Label>
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" Text="Total Value in Rs :"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="TotalLabel" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label5" runat="server" Text="Customer Username :"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="CustomerIdLabel" runat="server"></asp:Label>
                </td>
                <td rowspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label11" runat="server" Text="Customer NIC:"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="CustomerNICLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label6" runat="server" Text="Customer First Name :"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="CustomerFirstNameLabel" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label10" runat="server" Text="Customer Last Name :"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="CustomerLastNameLabel" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label8" runat="server" Text="Reservation Date :"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="RLabel" runat="server" Font-Bold="True" ForeColor="#996633"></asp:Label>
                 &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label9" runat="server" Text="Payment Method"></asp:Label>
                </td>
                <td class="style7">
                    <asp:RadioButton ID="OnlineRadioButton" runat="server" Text="Online" 
                        GroupName="PaymentM" />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="CashRadioButton" runat="server" Text="On Check in(Cash)" 
                        Checked="True" GroupName="PaymentM" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Button ID="Button1" runat="server" Text="Confirm Reservation" 
                        onclick="Button1_Click" Width="125px" />
&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Cancel Reservation" 
                        Width="118px" onclick="Button2_Click" />
&nbsp;&nbsp;
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>


    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="ShowBase_RoomsSelected" TypeName="ProductManager">
            <SelectParameters>
                <asp:ControlParameter ControlID="BillNoLabel" Name="Bill_id" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
