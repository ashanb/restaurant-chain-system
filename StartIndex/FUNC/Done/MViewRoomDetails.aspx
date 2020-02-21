<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MViewRoomDetails.aspx.cs" Inherits="ViewRooms" ViewStateEncryptionMode="Always" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <div style="width: 784px; height: 461px; color: #000000; font-size: large;">
    
      

    
      
         <table>
        <tr>
            <td class="style4" colspan="3">
             
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                    <ContentTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
    AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ROOM_ID" 
    DataValueField="ROOM_ID" Width="150px">
                        </asp:DropDownList>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource2" DataTextField="TYPE_ID" DataValueField="TYPE_ID" 
                            Width="193px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
                            AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                            BorderWidth="1px" CellPadding="2" CellSpacing="10" ForeColor="Black" 
                            GridLines="None">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                        
                        <br />
                        <br />
                    </ContentTemplate>
               </asp:UpdatePanel>
            </td>
            <tr>
            <td class="style3" colspan="3" >
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                    
                    
                    SelectCommand="SELECT &quot;TYPE_ID&quot; FROM &quot;BASE_RH_ROOM_TYPE&quot;">
                </asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="style3" colspan="3" >
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT &quot;ROOM_ID&quot; FROM &quot;BASE_RH_ROOMS&quot;">
                </asp:SqlDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="ShowBase_Room_Info" TypeName="ProductManager">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="Room_type" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
                <br />
            </td>
        </tr>
      
    </table> 

    </div>



</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style2
        {
            width: 128px;
        }
        .style3
        {
        }
        .style4
        {
            height: 81px;
        }
        .style5
        {
            width: 310px;
        }
    </style>
</asp:Content>


