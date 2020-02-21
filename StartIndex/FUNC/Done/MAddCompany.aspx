<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAddCompany.aspx.cs" Inherits="FUNC_OK_Default" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

<div style="width: 784px; height: 715px; color: #000000; font-size: large;">
    
      
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" ForeColor="Silver">

    
      
         <table border="strong">
        <tr>
            <td style="width: 163px">
                <asp:Label ID="Label2" runat="server" Text="Company ID" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="CompanyIDTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="CompanyIDRequiredFieldValidator" runat="server" 
                    ControlToValidate="CompanyIDTextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" 
                    ClientIDMode="AutoID" ViewStateMode="Enabled">Company ID Required</asp:RequiredFieldValidator>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label3" runat="server" Text="Name" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="NameTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" 
                    ControlToValidate="NameTextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Name Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label4" runat="server" Text="Address1" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="Address1TextBox" runat="server" Height="32px" Width="318px" 
                    ></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="Address1RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Address1TextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Address1 Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label5" runat="server" Text="Address2" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="Address2TextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 163px; height: 13px;" >
                <asp:Label ID="Label6" runat="server" Text="Province" ForeColor="Black"></asp:Label>
            </td>
            <td style="height: 13px" >
                <asp:TextBox ID="ProvinceTextBox0" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td> 
            <td class="style6" style="height: 13px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label7" runat="server" Text="City" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="CityTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label8" runat="server" Text="Phone No 1" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="Phone1TextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="Phone1RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Phone1TextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" 
                    SetFocusOnError="True" ViewStateMode="Enabled">Phone1 Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label9" runat="server" Text="Phone No2 " ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="Phone2TextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label12" runat="server" Text="Fax" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="FaxTextBox0" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label13" runat="server" Text="Email" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="EmailTextBox1" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator3" runat="server" 
                    ControlToValidate="EmailTextBox1" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Email Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label14" runat="server" Text="Web" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="WebTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label15" runat="server" Text="Contact_Name" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="ContactNameTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="ContactNameRequiredFieldValidator4" 
                    runat="server" ControlToValidate="CompanyIDTextBox" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">Contact_Name Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label16" runat="server" Text="Contact_Tittle" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="ContactTTextBox4" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td style="width: 163px">
                Step 1<br />
            </td>
            <td >
                <asp:Button ID="Button2" runat="server" OnClick="Add" Text="Submit" 
                    Width="309px" />
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label11" runat="server" Text="OutPut" ForeColor="Black"></asp:Label>
&nbsp;</td>
            <td>
                <asp:Label ID="output" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
        </asp:Panel>
    </div>

</asp:Content>

