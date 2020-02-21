<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAdd_TAO_Sales_Des.aspx.cs" Inherits="RTSalesDes" %>


<%@ MasterType VirtualPath="~/FUNC/Done/MasterPageProp.master" %>



<asp:Content ID="head1" ContentPlaceHolderID="head" Runat="Server">

<script type="text/javascript">
    function Mymethod() {

        // document.getElementById("TextBox1").focus();
        //  SaleINTextBox_TextChanged;
   
       

    };
</script>


    <style type="text/css">
        .style3
        {
        }
    </style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LoginInfo" Runat="Server">




</asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

<div style="width: 784px; height: auto; color: #000000; font-size: large;">
    
    
    
    
    
    <asp:UpdatePanel  ID="UpdatePanel1" runat="server" ><ContentTemplate>
     <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">
         <table border="strong" frame="box" 
             style="border: medium groove #000000" bgcolor="Gray">
        <tr>
            <td style="width: 139px">
                <asp:Label ID="Label12" runat="server" Text="Sales ID:"></asp:Label>
            </td>
            <td class="style3" >
                <asp:Label ID="SalesIDLabel" runat="server" Height="32px"></asp:Label>
            </td>
            <td class="style6" >
                &nbsp;</tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="SaleNameLabel" runat="server" Text="Sale Item Name" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td class="style3" >
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="ObjectDataSource2" DataTextField="item_name" DataValueField="item_name" 
                    Height="32px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="200px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="SalesINRequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#990000">Sales Item no Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label14" runat="server" Text="Sale Item No:"></asp:Label>
                <br />
            </td>
            <td class="style3" >
               
                <asp:Label ID="ItemNoLabel" runat="server" Height="32px" Width="231px" 
                    ForeColor="#333333"></asp:Label>
                
                
            </td>
            <td class="style6" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="QuantityLabel" runat="server" Text="Quantity:" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td class="style3" >
                <asp:TextBox ID="QuantityTextBox" runat="server" Height="32px" Width="115px" 
                    BorderStyle="Groove" MaxLength="10" Font-Italic="False" Font-Size="Large" 
                    ></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="QuantityTextBox" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#990000">Quantity Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label13" runat="server" Text="Unit Price(Rs/=):"></asp:Label>
            </td>
            <td class="style3" >
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Height="32px" Width="115px" 
                    BorderStyle="Groove" MaxLength="15" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="UnitPriceTextBox" 
                    ForeColor="#990000">Amount Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                &nbsp;</td>
            <td class="style3" colspan="2" >
                <asp:Label ID="ItemNoMatchLabel" runat="server" ForeColor="#990000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                &nbsp;</td>
            <td class="style3" >
                &nbsp;</td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td style="width: 139px">
                <br />
            </td>
            <td class="style3" >
                <asp:Button ID="Button2" runat="server" OnClick="Add" Text="Add" 
                    Width="115px" Height="40px" />
                    &nbsp; 
                
                <asp:Button ID="CancelButton" runat="server" Height="40px" 
                    onclick="CancelButton_Click" Text="Cancel" Width="115px" />
                
                </td>
            <td>
            
                <asp:Button ID="Button3" runat="server" CausesValidation="False" Height="40px" 
                    onclick="Button3_Click" Text="Bill" Width="115px" />
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
&nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 139px" >
                &nbsp;</td>
            <td class="style3">
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    SelectMethod="ShowBase_TAO_itemNameJoin" TypeName="ProductManager">
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>

    </asp:Panel>
     </ContentTemplate>
    </asp:UpdatePanel>
   
    <asp:Panel ID="Panel2" runat="server" BorderStyle="Groove">

        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
            AutoGenerateColumns="False">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="sales_id,sales_item_no" 
                    DataNavigateUrlFormatString="MAdd_TAO_Sales_Des.aspx?sales_id={0}&amp;sales_item_no={1}" 
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
    
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete_BK_sales_des" SelectMethod="ShowBase_TAOSales_des" 
        TypeName="ProductManager">
        <DeleteParameters>
            <asp:Parameter Name="sales_id" Type="String" />
            <asp:Parameter Name="item_no" Type="String" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="SalesIDLabel" Name="sales_id" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    </div>

</asp:Content>


