<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAdd_RT_Sales_Report.aspx.cs" Inherits="BKSalesReport" %>
<%@ MasterType VirtualPath="~/FUNC/Done/MasterPageProp.master" %>



<asp:Content ID="head1" ContentPlaceHolderID="head" Runat="Server">

<script type="text/javascript">
    function Mymethod() {

        // document.getElementById("TextBox1").focus();
        //  SaleINTextBox_TextChanged;
   
       

    };
</script>


    <style type="text/css">
        .style4
        {
            width: 211px;
        }
        .style5
        {
        }
        .style7
        {
            width: 129px;
        }
        .style8
        {
            width: 132px;
        }
    </style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LoginInfo" Runat="Server">




</asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

<div style="width: 784px; height: auto; color: #000000; font-size: large;">
    
    <asp:Panel ID="Panel2" runat="server" BorderStyle="Groove">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="ObjectDataSource1">
          
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="sales_id,sales_item_no" 
                            DataNavigateUrlFormatString="MAdd_RT_Sales_Report.aspx?sales_id={0}&amp;sales_item_no={1}" 
                            Text="Delete" />
                        <asp:BoundField DataField="sales_id" HeaderText="Sales Id" />
                        <asp:BoundField DataField="sales_item_no" HeaderText="Sales Item No" />
                        <asp:BoundField DataField="item_name" HeaderText="Item Name" />
                        <asp:BoundField DataField="unit_price" HeaderText="Unit Price" />
                        <asp:BoundField DataField="qnty" HeaderText="Quantity" />
                        <asp:BoundField DataField="amount" HeaderText="Amount" />
                    </Columns>
       
        </asp:GridView>
    </asp:Panel>
    
    
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">
        

 
    

     
         <table border="strong" frame="box" 
             style="border: medium groove #000000" bgcolor="Gray">
        <tr>
            <td class="style8">
                <asp:Label ID="SalesLabel" runat="server" Text="Sales ID"></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="SILabel" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
             </tr>
             <tr>
                 <td class="style8">
                     <asp:Label ID="Label13" runat="server" Text="Total Items"></asp:Label>
                 </td>
                 <td class="style5">
                     <asp:Label ID="TILabel" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
                 </td>
                 <td class="style4">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="style8">
                     <asp:Label ID="Label14" runat="server" Text="Total Amount"></asp:Label>
                 </td>
                 <td class="style5">
                     <asp:Label ID="TALabel" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
                 </td>
                 <td class="style4">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="style8">
                     &nbsp;</td>
                 <td class="style5" colspan="2">
                     <asp:Label ID="NotAddedLabel" runat="server" ForeColor="#663300"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="style8">
                     <br />
                 </td>
                 <td class="style5">
                     <asp:Button ID="PaidButton" runat="server" Height="40px" OnClick="Paid" 
                         Text="Paid" Width="96px" />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="AddMoreButton" runat="server" Height="40px" 
                         onclick="AddMoreButton_Click" Text="Add More" Width="115px" />
                 </td>
                 <td class="style4">
                     <asp:Button ID="CancelButton" runat="server" CausesValidation="False" 
                         Height="40px" onclick="Button3_Click" Text="Cancel" Width="96px" />
                 </td>
             </tr>
             <tr>
                 <td class="style8">
                     <asp:Label ID="Label11" runat="server" ForeColor="Black" Text="Output"></asp:Label>
                     &nbsp;</td>
                 <td class="style5">
                     <asp:Label ID="output" runat="server" ForeColor="Black"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="style8">
                     &nbsp;</td>
                 <td class="style5">
                     <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                         SelectMethod="ShowBase_RTSales_des" TypeName="ProductManager">
                         <SelectParameters>
                             <asp:QueryStringParameter Name="sales_id" QueryStringField="sales_id" 
                                 Type="String" />
                         </SelectParameters>
                     </asp:ObjectDataSource>
                 </td>
             </tr>
             </tr>
    </table>
    </asp:Panel>
    </div>

</asp:Content>

