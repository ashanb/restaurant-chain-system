<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAddRHGalleryImage.aspx.cs" Inherits="FUNC_Done_MAddRHGalleryImage" %>
<%@ MasterType VirtualPath="~/FUNC/Done/MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    <style type="text/css">
        .style2
        {
            width: 34px;
        }
    </style>
    <link href="../../BaseRestaurant/Styles/jquery.fancybox-1.3.4.css" rel="stylesheet" type="text/css" media="screen" />



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginInfo" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

    <script type="text/javascript" src="../../BaseRestaurant/Scripts/jquery.fancybox-1.3.4.pack.js"></script>

    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">
   <table border="strong" bgcolor="Silver">
        <tr >
            <td style="width: 139px">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Gallery Image" 
                    Width="122px" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" BackColor= "#CCCCCC" 
                    Height="32px" Width="300px" />
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
                    Text="Upload File" Width="116px" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="margin-left: 108px" Text="Load the Gallery" Height="32px" Width="116px" />
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Output" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:Label ID="output" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
    <div  class="article12" style="float:left;">
      
        <asp:Literal ID="mytext" runat="server"></asp:Literal>
    </div>





</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
</asp:Content>

