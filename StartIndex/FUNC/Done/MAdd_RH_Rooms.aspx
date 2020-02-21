<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAdd_RH_Rooms.aspx.cs" Inherits="AddRooms" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <div style="width: 784px; height: 461px; color: #000000; font-size: large;">
    
      

    
      
         <table>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Room ID"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="190px" 
                    ontextchanged="UserNTextBox_TextChanged"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Rooom ID Requierd</asp:RequiredFieldValidator>
            </tr>
        <tr>
            <td >
                <asp:Label ID="Label2" runat="server" Text=" Room Type ID"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="TYPE_ID" DataValueField="TYPE_ID" 
                    Height="32px" Width="116px">
                </asp:DropDownList>
            </td>
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT &quot;TYPE_ID&quot; FROM &quot;BASE_RH_ROOM_TYPE&quot;">
                </asp:SqlDataSource>
                <br />
            </td>
            <td >
                &nbsp;</td>
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Step 1<br />
            </td>
            <td >
                <asp:Button ID="Button2" runat="server" OnClick="ADD" Text="Submit" 
                    Width="190px" />
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
    </div>



</asp:Content>

