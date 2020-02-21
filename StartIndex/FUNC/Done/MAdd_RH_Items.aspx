<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAdd_RH_Items.aspx.cs" Inherits="FUNC_OK_Default" %>
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
                <asp:Label ID="AddALabel" runat="server" Text="Adding Amount" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="AddATextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="AddARequiredFieldValidator0" runat="server" 
                    ControlToValidate="AddATextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Initial Adding Amount Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="UPLabel" runat="server" Text="Unit_Price" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="UPTextBox" runat="server" Height="32px" Width="318px" ontextchanged="UPTextBox_TextChanged" 
                    ></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="UPRequiredFieldValidator1" 
                    runat="server" ControlToValidate="UPTextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Unit_Price Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Buffer_QLabel" runat="server" Text="Bufffer_Quantity" 
                    ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="Buffer_QTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="Buffer_QRequiredFieldValidator2" runat="server" 
                    ControlToValidate="Buffer_QTextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Buffer_Quantity Required</asp:RequiredFieldValidator>
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

