<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MUpdateUser2.aspx.cs" Inherits="FUNC_Done_updatec2" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
 

<div style="width: 784px; height: 461px; font-size: large; color: #000000;">
    
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">


    
      
         <table border="strong">
        <tr>
            <td style="width: 163px">
                UserName</td>
            <td >
                <asp:Label ID="InputUserName" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td class="style6" >
                &nbsp;</tr>
        <tr>
            <td style="width: 163px" >
                Application_name</td>
            <td >
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="316px"></asp:TextBox>
            </td>
            <td class="style6" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 163px" >
                New Password</td>
            <td >
                <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td> 
            <td class="style6" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">Required Field</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                Conferm Password</td>
            <td >
                <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td> 
            <td class="style6" >
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="CompareValidator">Wrong Combination</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px">
                <br />
            </td>
            <td >
                <asp:Button ID="Button2" runat="server" OnClick="Save" Text="Save" 
                    Width="309px" />
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label11" runat="server" Text="OutPut" ForeColor="Black"></asp:Label>
&nbsp;</td>
            <td>
                <asp:Label ID="output" runat="server" ForeColor="#00CC00"></asp:Label>
            </td>
        </tr>
    </table>
        </asp:Panel>
    </div>




</asp:Content>

