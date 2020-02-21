<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowTabel.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style6
        {
            width: 218px;
        }
        </style>
      
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 784px; height: 461px">
    
      

    
      
         <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="TabelName"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="UserNTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td class="style6" >
                &nbsp;</tr>
        <tr>
            <td >
                <asp:Label ID="Label3" runat="server" Text="ColumnName"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="AppNTextBox" runat="server" Height="32px" Width="190px"></asp:TextBox>
            </td>
            <td class="style6" >
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Save"></asp:Label>
                <br />
            </td>
            <td >
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" Width="190px" />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label11" runat="server" Text="OutPut"></asp:Label>
&nbsp;</td>
            <td>
                <asp:Label ID="output" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />

         <div id="OutputData" style="height: 341px">
             <asp:GridView ID="GridView1" runat="server">
             </asp:GridView>
            
             <asp:BulletedList ID="TabelItems" runat="server">
             </asp:BulletedList>
         </div>
    </div>
    </form>
</body>
</html>
