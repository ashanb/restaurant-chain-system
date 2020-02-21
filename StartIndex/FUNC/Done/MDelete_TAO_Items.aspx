<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MDelete_TAO_Items.aspx.cs" Inherits="Delete_RT_Items" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

<div style="width: 784px; height: 715px; color: #000000; font-size: large;">
    
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">


                <asp:Panel ID="Panel3" runat="server" BorderStyle="Groove" 
            GroupingText="Delete Take Away Outlet  Item" Font-Size="Medium">


      
         <table border="strong">
        <tr>
            <td style="width: 139px">
                <asp:Label ID="Label1" runat="server" Text="Item No"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="DropDownList1" runat="server" Width="173px" 
                    DataSourceID="SqlDataSource1" DataTextField="ITEM_NO" DataValueField="ITEM_NO">
                </asp:DropDownList>
            </td>
            <td class="style6" >
                &nbsp;</tr>
        <tr>
            <td style="width: 139px" >
                <br />
            </td>
            <td >
                &nbsp;</td>
            <td class="style6" >
                </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <br />
            </td>
            <td >
                <asp:Button ID="Button1" runat="server" OnClick="Delete" Text="Delete" 
                    Width="154px" ValidationGroup="2" />
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label4" runat="server" Text="OutPut" ForeColor="Black"></asp:Label>
&nbsp;</td>
            <td>
                <asp:Label ID="output2" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        

    </table>
            </asp:Panel>



        <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                        SelectCommand="SELECT &quot;ITEM_NO&quot; FROM &quot;BASE_TAO_ITEMS&quot;">
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
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
        </table>


      </asp:Panel>
    </div>
        
</asp:Content>

