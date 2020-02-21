<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAddRoomType.aspx.cs" Inherits="AddRoomType" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<div style="width: 784px; height: 461px; color: #000000; font-size: large;">
    
      

    
      
         <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text=" Room Type ID"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="318px" 
                    ontextchanged="UserNTextBox_TextChanged"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="RequiredValidator" SetFocusOnError="True">RoomType Required</asp:RequiredFieldValidator>
            </tr>
        <tr>
            <td >
                <asp:Label ID="Label3" runat="server" Text="Room Type Name"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">Rooom Name Requierd</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label4" runat="server" Text="Number Of Beds"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="318px" 
                    ></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="RequiredValidator" SetFocusOnError="True">NOB Requierd</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label12" runat="server" Text="No of Persons"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4">Max Allowed Persons Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label6" runat="server" Text="Per Night Charge"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="TextBox5" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td> 
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox5">Per Night Charge Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
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

