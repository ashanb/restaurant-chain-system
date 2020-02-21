<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MDeleteUser_Details1.aspx.cs" Inherits="FUNC_Done_Default" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <table style="width: 696px; height: 263px; color: #000000;">
        <tr>
            <td style="color: #000000; " colspan="2">
                <asp:Label ID="Label2" runat="server" ForeColor="#663300" 
                    Text="Please Enter the NIC no bellow"></asp:Label>
            </td>
            <td style="width: 291px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td style="width: 166px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    Text="NIC No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="NICTextBox" runat="server" Height="36px" Width="237px"></asp:TextBox>
            </td>
            <td style="width: 291px">
                <asp:RequiredFieldValidator ID="NICRequiredFieldValidator" runat="server" 
                    ControlToValidate="NICTextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 166px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    Width="187px" />
            </td>
            <td style="width: 291px">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

