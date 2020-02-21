<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuSelected.aspx.cs" Inherits="BaseRestaurant_MenuSelected" %>

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
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    Following Items are Selected to Order Please Confirm and Proceed....<asp:GridView 
                        ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
                        BorderColor="Tan" BorderWidth="1px" CellPadding="2" CellSpacing="8" 
                        DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="None" 
                        Width="604px" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="Item_name" HeaderText="Item Name" />
                            <asp:BoundField DataField="Unit_Price" HeaderText="Unit Price" />
                            <asp:BoundField DataField="qnty" HeaderText="Quantity" />
                            <asp:BoundField DataField="amount" HeaderText="Amount" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
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
                    <asp:Label ID="Label1" runat="server" Text="Order Number :"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="OrderNoLabel" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label2" runat="server" Text="Total Number of Items :"></asp:Label>
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
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label6" runat="server" Text="Customer Name :"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="CustomerNameLabel" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ShippingAddTextBox" ErrorMessage="RequiredFieldValidator">Shipping Address Required</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label7" runat="server" Text="Delivery Address :"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="ShippingAddTextBox" runat="server" Width="410px" Height="32px" 
                        CausesValidation="True" Wrap="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label8" runat="server" Text="Ordering Date :"></asp:Label>
                </td>
                <td class="style7">
                 &nbsp;<asp:DropDownList 
                        ID="yyDropDownList" runat="server" Width="70px" Height="32px">

                         <asp:ListItem Text="2012" />
                          <asp:ListItem Text="2013" />
                           <asp:ListItem Text="2014" />            
                         <asp:ListItem Text="2015" />
                          <asp:ListItem Text="2016" />
                           <asp:ListItem Text="2017" />                          
                         <asp:ListItem Text="2018" />
                          <asp:ListItem Text="2019" />
                           <asp:ListItem Text="2020" />                     
                         <asp:ListItem Text="2021" />
                          <asp:ListItem Text="2022" />
                           <asp:ListItem Text="2023" />    
                         <asp:ListItem Text="2024" />
                          <asp:ListItem Text="2025" />
                           <asp:ListItem Text="2026" />
                         <asp:ListItem Text="2027" />
                          <asp:ListItem Text="2028" />
                           <asp:ListItem Text="2029" />
                           <asp:ListItem Text="2030" />
                    </asp:DropDownList>
                    <asp:DropDownList ID="mmDropDownList" runat="server" Height="32px" Width="50px">
                    <asp:ListItem Text="01" />
                    <asp:ListItem Text="02" />
                    <asp:ListItem Text="03" />
                    <asp:ListItem Text="04" />
                         <asp:ListItem Text="05" />
                    <asp:ListItem Text="06" />
                    <asp:ListItem Text="07" />
                    <asp:ListItem Text="08" />
                         <asp:ListItem Text="09" />
                    <asp:ListItem Text="10" />
                    <asp:ListItem Text="11" />
                    <asp:ListItem Text="12" Selected="True" />
              
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddDropDownList" runat="server" Height="32px" Width="50px">
                    <asp:ListItem Text="01" />
                    <asp:ListItem Text="02" />
                    <asp:ListItem Text="03" />
                    <asp:ListItem Text="04" />
                         <asp:ListItem Text="05" />
                    <asp:ListItem Text="06" />
                    <asp:ListItem Text="07" />
                    <asp:ListItem Text="08" />
                         <asp:ListItem Text="09" />
                    <asp:ListItem Text="10" />
                    <asp:ListItem Text="11" />
                    <asp:ListItem Text="12" />

                     <asp:ListItem Text="13" />
                    <asp:ListItem Text="14" />
                    <asp:ListItem Text="15" />
                    <asp:ListItem Text="16" />
                         <asp:ListItem Text="17" />
                    <asp:ListItem Text="18" />
                    <asp:ListItem Text="19" />
                    <asp:ListItem Text="20" />
                         <asp:ListItem Text="01" />
                    <asp:ListItem Text="21" />
                    <asp:ListItem Text="22" />
                    <asp:ListItem Text="23" />
                         <asp:ListItem Text="24" />
                    <asp:ListItem Text="25" />
                    <asp:ListItem Text="26" />
                    <asp:ListItem Text="27" />
                         <asp:ListItem Text="28" />
                    <asp:ListItem Text="29" />
                    <asp:ListItem Text="30" />
                    <asp:ListItem Text="31" />

                    </asp:DropDownList>
                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                   <asp:DropDownList ID="TimeDropDownList" runat="server" 
                        Width="50px" Height="32px">
                    <asp:ListItem Text="01" />
                    <asp:ListItem Text="02" />
                    <asp:ListItem Text="03" />
                    <asp:ListItem Text="04" />
                         <asp:ListItem Text="05" />
                    <asp:ListItem Text="06" />
                    <asp:ListItem Text="07" />
                    <asp:ListItem Text="08" />
                         <asp:ListItem Text="09" Selected="True" />
                    <asp:ListItem Text="10" />
                    <asp:ListItem Text="11" />
                    <asp:ListItem Text="12" />

                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="50px">
                        <asp:ListItem Text="am" />
                        <asp:ListItem Text="pm" />

                    
                    </asp:DropDownList>
                </td>
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
                    <asp:RadioButton ID="CashRadioButton" runat="server" Text="On Deliver(Cash)" 
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
                    <asp:Button ID="Button1" runat="server" Text="Confirm Order" 
                        onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Select More" Width="105px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Cancel Order" Width="94px" 
                        onclick="Button2_Click" />
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
            SelectMethod="ShowBase_MenuSelected" TypeName="ProductManager">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="order_id" 
                    QueryStringField="order_id" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
