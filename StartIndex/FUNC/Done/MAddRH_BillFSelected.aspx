<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAddRH_BillFSelected.aspx.cs" Inherits="MRHRSelected" %>

<%@ MasterType VirtualPath="MasterPageProp.master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div style="width: 784px; height: auto">

        <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="ddTextBox" WatermarkText="DD">
        </asp:TextBoxWatermarkExtender>
        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="monTextBox" WatermarkText="MM">
        </asp:TextBoxWatermarkExtender>
        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" TargetControlID="yTextBox" WatermarkText="YY">
        </asp:TextBoxWatermarkExtender>
      <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;
                    &nbsp; 
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" 
                        
                        Text="Following Rooms are Selected for the reservation Please Conform and Proceed...." 
                        ForeColor="Black"></asp:Label>
                    &nbsp; &nbsp; 
                    <br />
                    <asp:GridView 
                        ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" 
                        DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" 
                        Width="604px" BorderStyle="None" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Room_id" HeaderText="Room Number" />
                            <asp:BoundField DataField="check_in" HeaderText="Check In" />
                            <asp:BoundField DataField="Check_out" HeaderText="Check Out" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" 
                            HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
            </table>


    
        <table style="width: 98%; height: 140px;">
            <tr>
                <td class="style3">
                </td>
                <td class="style6">
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label1" runat="server" Text="Bill Number :" Font-Bold="True" 
                        ForeColor="Black"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="BillNoLabel" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label2" runat="server" Text="Total Rooms :" 
                        Font-Bold="True" ForeColor="Black"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="TotalNoILabel" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" Text="Total Value in Rs :" 
                        Font-Bold="True" ForeColor="Black"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="TotalLabel" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label8" runat="server" Text="Reservation Date :" 
                        Font-Bold="True" ForeColor="Black"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="RLabel" runat="server" Font-Bold="True" ForeColor="#996633"></asp:Label>
                 </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label9" runat="server" Text="Payment Method" Font-Bold="True" 
                        ForeColor="Black"></asp:Label>
                </td>
                <td class="style7">
                    <asp:RadioButton ID="CashRadioButton" runat="server" Text="Check in(Cash)" 
                        Checked="True" GroupName="PaymentM" Font-Bold="True" ForeColor="Black" />
                </td>
                <td rowspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
    <tr>
            <td style="width: 163px">
                <asp:Label ID="Label4" runat="server" Text="National ID" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="NIDTextBox" runat="server" Height="32px" Width="318px" 
                    AutoPostBack="True" ontextchanged="NIDTextBox_TextChanged"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="NIDRequiredFieldValidator1" runat="server" 
                    ErrorMessage="This Field should not be null" 
                    ControlToValidate="NIDTextBox" Display="Dynamic" SetFocusOnError="True">NID Required</asp:RequiredFieldValidator>
                <asp:Label ID="AvailabilityLabel" runat="server" ForeColor="#CC0000"></asp:Label>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label5" runat="server" Text="Email" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="EmailTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator6" runat="server" 
                    ErrorMessage="This Field should not be null" 
                    ControlToValidate="EmailTextBox" Display="Dynamic">Email Required</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" 
                    runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">invalid Email </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label6" runat="server" Text="Conatact_No" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="CNTextBox" runat="server" Height="32px" Width="318px" 
                    ></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="CNRequiredFieldValidator3" runat="server" 
                    ErrorMessage="This Field should not be null" ControlToValidate="CNTextBox" 
                    Display="Dynamic">Conatct No Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label7" runat="server" Text="Address" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="AddressTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="AddressRequiredFieldValidator7" runat="server" 
                    ErrorMessage="This Field should not be null" 
                    ControlToValidate="AddressTextBox" Display="Dynamic">Address Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label10" runat="server" Text="Date of Birth" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="ddTextBox" runat="server"  Width="59px" Height="32px"></asp:TextBox>
                <asp:TextBox ID="monTextBox" runat="server" Width="72px" Height="32px" ></asp:TextBox>
                <asp:TextBox ID="yTextBox" runat="server" Width="56px" Height="32px"></asp:TextBox>
            </td> 
            <td class="style6" >
                <asp:RangeValidator ID="ddRangeValidator" runat="server" 
                    ControlToValidate="ddTextBox" Display="Dynamic" ErrorMessage="RangeValidator" 
                    MaximumValue="31" MinimumValue="1" SetFocusOnError="True" Type="Integer">invalid day format</asp:RangeValidator>
                <asp:RangeValidator ID="yyRangeValidator" runat="server" 
                    ControlToValidate="yTextBox" Display="Dynamic" ErrorMessage="RangeValidator" 
                    MaximumValue="99" MinimumValue="00" SetFocusOnError="True" Type="Integer">invalid year format</asp:RangeValidator>
                <asp:RangeValidator ID="mRangeValidator" runat="server" 
                    ControlToValidate="monTextBox" Display="Dynamic" ErrorMessage="RangeValidator" 
                    MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer">invalid month format</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label11" runat="server" Text="Sex" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="Gender" 
                    Text="Male" Checked="True" ForeColor="Black" />
                <asp:RadioButton ID="FemaleRadioButton" runat="server" 
                    GroupName="Gender" Text="Female" ForeColor="Black" />
            </td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label13" runat="server" Text="First Name" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="FNTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="FNRequiredFieldValidator5" runat="server" 
                    ErrorMessage="This Field should not be null" ControlToValidate="FNTextBox" 
                    Display="Dynamic">First Name Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 163px" >
                <asp:Label ID="Label14" runat="server" Text="Last Name" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="LNTextBox" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
            </td>
        </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Button ID="Button1" runat="server" Text="Conferm Reservation" 
                        onclick="Button1_Click" Width="125px" />
&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Cancel Reservation" 
                        Width="118px" />
&nbsp;&nbsp;
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="outputLabel" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="OutPut"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="OutLabel" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </ContentTemplate>
            </asp:UpdatePanel>
                </asp:Panel>

    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="ShowBase_RoomsSelected" TypeName="ProductManager">
            <SelectParameters>
                <asp:ControlParameter ControlID="BillNoLabel" Name="Bill_id" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">

 <style type="text/css">
        .style1
        {
            height: 46px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 46px;
            width: 174px;
        }
        .style4
        {
            width: 174px;
        }
        .style5
        {
            height: 23px;
            width: 174px;
        }
        .style6
        {
            height: 46px;
            width: 361px;
        }
        .style7
        {
            width: 361px;
        }
        .style8
        {
            height: 23px;
            width: 361px;
        }
    </style>
</asp:Content>
