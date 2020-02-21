<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MAdd_Menu_Items.aspx.cs" Inherits="AddMenu_Items" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

<div style="width: 784px; height: 715px; color: #000000; font-size: large;">
    
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">


    <asp:Panel ID="Panel2" runat="server" BorderStyle="Groove" 
            GroupingText="Add Menu Item" Font-Size="Medium" ForeColor="Black">


      
         <table border="strong">
        <tr>
            <td style="width: 139px">
                <asp:Label ID="Label12" runat="server" Text="Item No"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="DropDownList0" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="ITEM_NO" DataValueField="ITEM_NO" 
                    Width="173px">
                </asp:DropDownList>
            </td>
            <td class="style6" >
                &nbsp;</tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="AddALabel" runat="server" Text="Availability" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" Text="Yes" 
                    GroupName="1" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="No" GroupName="1" />
            </td>
            <td class="style6" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="UPLabel" runat="server" Text="Unit_Price" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="UPTextBox" runat="server" Height="32px" Width="318px" 
                    ></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="UPRequiredFieldValidator1" 
                    runat="server" ControlToValidate="UPTextBox" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" 
                    ValidationGroup="1">Unit_Price Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <br />
            </td>
            <td >
                &nbsp;</td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td style="width: 139px">
                <br />
            </td>
            <td >
                <asp:Button ID="Button2" runat="server" OnClick="Add" Text="Add" 
                    Width="157px" ValidationGroup="1" />
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label11" runat="server" Text="OutPut" ForeColor="Black"></asp:Label>
&nbsp;</td>
            <td>
                <asp:Label ID="output" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        

    </table>
            </asp:Panel>


                <asp:Panel ID="Panel3" runat="server" BorderStyle="Groove" 
            GroupingText="Delete Menu Item" Font-Size="Medium">


      
         <table border="strong">
        <tr>
            <td style="width: 139px">
                <asp:Label ID="Label1" runat="server" Text="Item No"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="DropDownList1" runat="server" Width="173px" 
                    DataSourceID="SqlDataSource1" DataTextField="ITEM_NO" DataValueField="ITEM_NO">
                </asp:DropDownList>
            </td>
            <td class="style6" >
                &nbsp;</tr>
        <tr>
            <td style="width: 139px" >
                <br />
            </td>
            <td >
                &nbsp;</td>
            <td class="style6" >
                </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <br />
            </td>
            <td >
                <asp:Button ID="Button1" runat="server" OnClick="Delete" Text="Delete" 
                    Width="154px" ValidationGroup="2" />
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label4" runat="server" Text="OutPut" ForeColor="Black"></asp:Label>
&nbsp;</td>
            <td>
                <asp:Label ID="output2" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        

    </table>
            </asp:Panel>



              <asp:Panel ID="Panel4" runat="server" BorderStyle="Groove" 
            GroupingText="Update Menu Item" Font-Size="Medium">


      
         <table border="strong">
        <tr>
            <td style="width: 139px">
                <asp:Label ID="Label2" runat="server" Text="Item No"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="DropDownList2" runat="server" Width="173px" 
                    DataSourceID="SqlDataSource1" DataTextField="ITEM_NO" DataValueField="ITEM_NO">
                </asp:DropDownList>
            </td>
            <td class="style6" >
                &nbsp;</tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label3" runat="server" Text="Availability" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:RadioButton ID="RadioButton3" runat="server" Checked="True" Text="Yes" 
                    GroupName="2" />
                <asp:RadioButton ID="RadioButton4" runat="server" Text="No" GroupName="2" />
            </td>
            <td class="style6" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label5" runat="server" Text="New_Unit_Price" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="318px" 
                    ></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="UPRequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" 
                    ValidationGroup="1">Unit_Price Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <br />
            </td>
            <td >
                &nbsp;</td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td style="width: 139px">
                <br />
            </td>
            <td >
                <asp:Button ID="Button3" runat="server" Text="Update" 
                    Width="161px" onclick="Update" ValidationGroup="3" />
            </td>
        </tr>
        <tr>
            <td style="width: 139px" >
                <asp:Label ID="Label6" runat="server" Text="OutPut" ForeColor="Black"></asp:Label>
&nbsp;</td>
            <td>
                <asp:Label ID="output3" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        

    </table>
            </asp:Panel>

        <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                        SelectCommand="SELECT &quot;ITEM_NO&quot; FROM &quot;BASE_MENU_ITEMS&quot;">
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                        SelectCommand="SELECT &quot;ITEM_NO&quot; FROM &quot;BASE_ITEM_DES&quot;">
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>


      </asp:Panel>
    </div>
        
</asp:Content>

