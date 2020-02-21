<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MViewUserDetails.aspx.cs" Inherits="ViewUsers" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <div style="width: auto; height: 461px; color: #000000; font-size: large;">
    
      

    
    <asp:Panel ID="Panel1" runat="server" Wrap="True" BorderStyle="Groove">
   
         <table>
        <tr>
            <td class="style4" colspan="3">
              
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                    <ContentTemplate>
                        &nbsp; &nbsp;<table style="width:100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Select User NIC"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                        DataSourceID="SqlDataSource2" DataTextField="NIC" DataValueField="NIC" 
                                        Width="193px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        &nbsp;&nbsp; &nbsp; &nbsp;
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
                            AllowSorting="True" AutoGenerateColumns="False">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="NIC" HeaderText="NIC" />
                                <asp:BoundField DataField="email" HeaderText="email" />
                                <asp:BoundField DataField="contact_no" HeaderText="Contact NO" />
                                <asp:BoundField DataField="address1" HeaderText="Address" />
                                <asp:BoundField DataField="dob" HeaderText="DOB" />
                                <asp:BoundField DataField="sex" HeaderText="Sex" />
                                <asp:BoundField DataField="first_name" HeaderText="First Name" />
                                <asp:BoundField DataField="last_name" HeaderText="Last Name" />
                            </Columns>
                        </asp:GridView>
                        <br />
                        <br />
                    </ContentTemplate>
               </asp:UpdatePanel>
            </td>
            <tr>
            <td class="style3" colspan="3" >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3" >
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                    
                    SelectCommand="SELECT &quot;NIC&quot; FROM &quot;BASE_USER_DETAILS&quot;">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT &quot;USERNAME&quot; FROM &quot;BASE_USERS&quot;">
                </asp:SqlDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="ShowBase_UserDetail" TypeName="ProductManager">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="nic" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
                <br />
            </td>
        </tr>
     
    </table> 
     </asp:Panel>

    </div>



</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style3
        {
        }
        .style4
        {
            height: 81px;
        }
        </style>
</asp:Content>


