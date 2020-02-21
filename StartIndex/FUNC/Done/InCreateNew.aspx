<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="InCreateNew.aspx.cs" Inherits="CreateNew" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        #TextArea1
        {
            width: 319px;
            height: 68px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginInfo" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <div id="menu22">
          <ul>
               <li><a href="InMessagebox.aspx">MessageBox</a></li>
               <li><a  class="active"  href="InCreateNew.aspx">Create New</a></li>
               <li><a href="InViewMessages.aspx">View Messages</a></li>
               <li><a href="InDeleteMessages.aspx">Delete Messages</a></li>
          </ul>
     </div>
     <br /> <br /><br /> <br />
    
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">
           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate> 
     <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text=" Message ID   :" Font-Bold="False" 
                    ForeColor="Black" Font-Size="Large" Width="150px"></asp:Label>
            </td>
            <td >
                &nbsp; &nbsp; &nbsp;<asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#990000"></asp:Label>
            </td>
            <td class="style6" style="width: 302px" >
                &nbsp;</tr>
        <tr>
            <td >
              <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Sender ID :" Font-Bold="False" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td >
                &nbsp; &nbsp;&nbsp;    
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#990000"></asp:Label>
            </td>
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Message Heading" Font-Bold="False" 
                    ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="HeadingTextBox" runat="server" Height="32px" Width="318px" 
                    ></asp:TextBox>
            </td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="HeadingTextBox" ErrorMessage="RequiredFieldValidator">Heading Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label12" runat="server" Font-Size="Large" Text="Message Content" Font-Bold="False" 
                    ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <textarea ID="TextArea1" style="width: 318px" cols="40" rows="5" runat="server"></textarea></td>
            <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextArea1" ErrorMessage="RequiredFieldValidator">Message Body Required</asp:RequiredFieldValidator>
            </td>
        </tr>
         
        
        <tr>
            <td >
                <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Receiver Type" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="TypeDropDownList" runat="server" Width="150px" 
                    AutoPostBack="True">
                <asp:ListItem Text="All Users" />
                <asp:ListItem Text="All Admins" />
                <asp:ListItem Text="All Managers" />            
                <asp:ListItem Text="All Staff" />
                <asp:ListItem Text="Admin" />
                <asp:ListItem Text="Manager" />            
                <asp:ListItem Text="Staff" />


                </asp:DropDownList>
            </td> 
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label16" runat="server" Font-Size="Large" ForeColor="Black" 
                    Text="Receiver ID"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="IDDropDownList" runat="server" Width="150px" 
                    DataSourceID="ObjectDataSource1" DataTextField="username">
                </asp:DropDownList>
            </td>
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
        
        <tr>
            <td >
                &nbsp;</td>
            <td >
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="ShowBase_UserByUserType" TypeName="ProductManager">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TypeDropDownList" Name="user_type" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
            <td >
                <asp:Button ID="Button2" runat="server" Text="Send" 
                    Width="190px" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="StatusLabel" runat="server" Text="Status"
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:Label ID="output" runat="server" ForeColor="#990033"></asp:Label>
            </td>
        </tr>
    </table>
  
   </ContentTemplate>
            </asp:UpdatePanel>
    </asp:Panel>
    

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
</asp:Content>

