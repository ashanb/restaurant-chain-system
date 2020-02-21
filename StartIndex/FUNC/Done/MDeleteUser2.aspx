<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MDeleteUser2.aspx.cs" Inherits="FUNC_Done_updatec2" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
 

<div style="width: 784px; height: 461px; font-size: large; color: #000000;">
    
      
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">

    
      
         <table border="strong">
        <tr>
            <td style="width: 163px">
                User Name</td>
            <td style="width: 349px" >
                <asp:Label ID="UserNInput" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Black"></asp:Label>
            </td>
            <tr>
            <td style="width: 163px" >
                AppName</td>
            <td style="width: 349px" >
                <asp:Label ID="AppNLabel" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                NIC No<br />
            </td>
            <td style="width: 349px" >
                <asp:Label ID="NICLabel" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                Email<br />
            </td>
            <td style="width: 349px" >
                <asp:Label ID="EmailLabel" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label8" runat="server" Text="First Name" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 349px" >
                <asp:Label ID="FNLabel" runat="server" Font-Bold="True"></asp:Label>
            </td> 
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label9" runat="server" Text="Last Name" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 349px" >
                <asp:Label ID="LNLabel" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 17px;" colspan="2" >
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 163px; height: 41px;">
                <br />
            </td>
            <td style="width: 349px" >
                <asp:Button ID="Button2" runat="server" OnClick="Delete" Text="Delete" 
                    Width="182px" Height="42px" />
            </td>
        </tr>
        <tr>
            <td style="width: 163px; height: 52px;">
                <asp:Label ID="Label11" runat="server" Text="OutPut" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 349px" >
                <asp:Label ID="output" runat="server" ForeColor="#00CC00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
&nbsp;</td>
            <td style="width: 349px">
                &nbsp;</td>
        </tr>
    </table>
        </asp:Panel>
    </div>




</asp:Content>

