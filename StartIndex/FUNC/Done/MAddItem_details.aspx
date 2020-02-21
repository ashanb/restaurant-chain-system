<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAddItem_details.aspx.cs" Inherits="FUNC_OK_Default" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

<div style="width: 784px; height: 715px; color: #000000; font-size: large;">
    
      

    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">

      
         <table border="strong">
        <tr>
            <td style="width: 139px">
                <asp:Label ID="Label12" runat="server" Text="Item No"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="ItemNoTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="ItemNRequiredFieldValidator" runat="server" 
                    ControlToValidate="ItemNoTextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Item No Required</asp:RequiredFieldValidator>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label3" runat="server" Text="Item_Name" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="ItemNTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="ItemNRequiredFieldValidator0" runat="server" 
                    ControlToValidate="ItemNTextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Item Name Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label4" runat="server" Text="Categoty ID" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="CategoryITextBox" runat="server" Height="32px" Width="318px" 
                    ></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="CategoryIRequiredFieldValidator1" 
                    runat="server" ControlToValidate="CategoryITextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Category ID Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label5" runat="server" Text="Company ID" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="CompanyITextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="ComapnyIRequiredFieldValidator2" runat="server" 
                    ControlToValidate="CompanyITextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Company ID Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px; height: 13px;" >
                <asp:Label ID="Label6" runat="server" Text="Allergens Type" ForeColor="Black"></asp:Label>
            </td>
            <td style="height: 13px" >
                <asp:TextBox ID="AllTTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td> 
            <td class="style6" style="height: 13px" >
                <asp:RequiredFieldValidator ID="AllTRequiredFieldValidator3" runat="server" 
                    ControlToValidate="AllTTextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Allergens Type Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label7" runat="server" Text="Item Size" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="ItemSTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="ItemSRequiredFieldValidator4" runat="server" 
                    ControlToValidate="ItemSTextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Item Size Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label8" runat="server" Text="Item Type" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="ItmeTTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="ItemTRequiredFieldValidator5" runat="server" 
                    ControlToValidate="ItmeTTextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True"> Item Type Required</asp:RequiredFieldValidator>
            </td>
        </tr>
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
            <td style="width: 139px">
                Step 1<br />
            </td>
            <td >
                <asp:Button ID="Button2" runat="server" OnClick="Add" Text="Submit" 
                    Width="309px" />
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label11" runat="server" Text="OutPut" ForeColor="Black"></asp:Label>
&nbsp;</td>
            <td>
                <asp:Label ID="output" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
        </asp:Panel>
    </div>

</asp:Content>

