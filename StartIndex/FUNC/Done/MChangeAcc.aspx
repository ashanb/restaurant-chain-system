<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MChangeAcc.aspx.cs" Inherits="ChangeAcc" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
 

<div style="width: 784px; height: 461px; font-size: large; color: #000000;">
    
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       
    <ContentTemplate>
      
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
                Application Name</td>
            <td >
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="316px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">App Name required</asp:RequiredFieldValidator>
            </td>
        </tr>
             <tr>
                 <td style="width: 163px">
                     Password Ques</td>
                 <td>
                     <asp:TextBox ID="pqTextBox" runat="server" Height="32px" Width="316px"></asp:TextBox>
                 </td>
                 <td class="style6">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                         ControlToValidate="pqTextBox" ErrorMessage="RequiredFieldValidator">Password Ques Required</asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td style="width: 163px">
                     Password Ans</td>
                 <td>
                     <asp:TextBox ID="paTextBox" runat="server" Height="32px" Width="316px"></asp:TextBox>
                 </td>
                 <td class="style6">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                         ControlToValidate="paTextBox" ErrorMessage="RequiredFieldValidator">Password Ans Required</asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td style="width: 163px">
                     Currrent Password</td>
                 <td>
                     <asp:TextBox ID="CPassTextBox" runat="server" Height="32px" 
                         Width="316px" TextMode="Password"></asp:TextBox>
                 </td>
                 <td class="style6">
                     <asp:Label ID="Label12" runat="server" Font-Bold="False" ForeColor="Red"></asp:Label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                         ControlToValidate="CPassTextBox" ErrorMessage="C Password Req"></asp:RequiredFieldValidator>
                 </td>
             </tr>
        <tr>
            <td style="width: 163px" >
                New Password</td>
            <td >
                <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="318px" 
                    TextMode="Password"></asp:TextBox>
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
                <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="318px" 
                    TextMode="Password"></asp:TextBox>
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
                <asp:Label ID="output" runat="server" ForeColor="#333333"></asp:Label>
            </td>
        </tr>
    </table>
    </ContentTemplate>
     </asp:UpdatePanel>
        </asp:Panel>
    </div>




</asp:Content>

