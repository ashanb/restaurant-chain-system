<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuGrid.aspx.cs" Inherits="BaseRestaurant_MenuGrid" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 340px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" submitdisabledcontrols="False">
    <div style="width: 620px; height: 850px;">
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="ShowBase_MenuItemsGrid" TypeName="ProductManager">
        </asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" ForeColor="Black" GridLines="None" Height="165px" 
            Width="620px" AutoGenerateColumns="False" CellSpacing="10">
             <AlternatingRowStyle BackColor="PaleGoldenrod" />
          
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
      
              <Columns>
                  <asp:BoundField DataField="Item_Name" HeaderText="Item Name" />
                  <asp:BoundField DataField="Avalibility" HeaderText="Availability" />
                  <asp:BoundField DataField="Unit_Price" HeaderText="Unit Price(Rs/=)" />
                <asp:TemplateField HeaderText="Order Amount" >
                         <ItemTemplate>
                            <asp:TextBox ID="OrderTB" runat="server" Width="50px" MaxLength="5" Text="0"/>
                        </ItemTemplate>
                <ItemStyle Width="50px" HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            
        </asp:GridView>
        <br />
        <asp:Label ID="TotalLabel" runat="server"></asp:Label>
   
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td>
   
        <asp:Button ID="OrderButton" runat="server" Text="Order Selected" 
            onclick="OrderButton_Click" style="margin-left: 0px" />
       
                </td>
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
       
    </div>
    </form>
</body>
</html>
