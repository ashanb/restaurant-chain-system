<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MDeleteUser_Details2.aspx.cs" Inherits="FUNC_Done_updatec2" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
 

<div style="width: 784px; height: 461px; font-size: large; color: #000000;">
    
      

    
      
         <table border="strong">
        <tr>
            <td style="width: 163px">
                NIC No</td>
            <td style="width: 349px" >
                <asp:Label ID="NICInput" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Black"></asp:Label>
            </td>
            <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label3" runat="server" Text="Email" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 349px" >
                <asp:Label ID="EmailLabel" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label4" runat="server" Text="Conatact_No" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td style="width: 349px" >
                <asp:Label ID="CNLabel" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label5" runat="server" Text="Address" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td style="width: 349px" >
                <asp:Label ID="AddressLabel" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label6" runat="server" Text="Date of Birth" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 349px" >
                <asp:Label ID="DOBLabel" runat="server" Font-Bold="True"></asp:Label>
            </td> 
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label7" runat="server" Text="Sex" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 349px" >
                <asp:Label ID="SexLabel" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label8" runat="server" Text="First Name" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td style="width: 349px" >
                <asp:Label ID="FNLabel" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label9" runat="server" Text="Last Name" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td style="width: 349px" >
                <asp:Label ID="LNLabel" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 163px; height: 41px;">
                <br />
            </td>
            <td style="width: 349px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 163px; height: 52px;">
                &nbsp;</td>
            <td style="width: 349px" >
                <asp:Button ID="Button2" runat="server" OnClick="Delete" Text="Delete" 
                    Width="204px" Height="42px" />
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label11" runat="server" Text="OutPut" ForeColor="Black"></asp:Label>
&nbsp;</td>
            <td style="width: 349px">
                <asp:Label ID="output" runat="server" ForeColor="#00CC00"></asp:Label>
            </td>
        </tr>
    </table>
    </div>




</asp:Content>

