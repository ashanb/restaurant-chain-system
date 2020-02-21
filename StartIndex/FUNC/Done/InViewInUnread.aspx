<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="InViewInUnread.aspx.cs" Inherits="InUnread" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style2
        {
            width: 173px;
        }
        .style3
        {
            width: 173px;
            height: 31px;
        }
        .style4
        {
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginInfo" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <div id="menu22">
          <ul>
               <li><a href="InMessagebox.aspx">MessageBox</a></li>
               <li><a href="InCreateNew.aspx">Create New</a></li>
               <li><a class="active" href="InViewMessages.aspx">View Messages</a></li>
               <li><a href="InDeleteMessages.aspx">Delete Messages</a></li>
          </ul>
        
     </div>
        <div id="menu23">
      
             <ul>
               <li><a class="active" href="InViewInUnread.aspx">View Unread</a></li>
               <li><a href="InViewInRead.aspx">View Read</a></li>
               <li><a  href="InViewIninbox.aspx">Inbox</a></li>
               <li><a href="InViewInSent.aspx">View Sent</a></li>
          </ul>


     </div>
     <asp:Panel ID="Panel2" runat="server" BorderStyle="Groove">
    
     <table style="width: 100%;">
            <tr>
                <td class="style2">
                    <asp:Label ID="Message_IDNameLabel" runat="server" Font-Bold="True" 
                        Font-Size="Large" ForeColor="Black" Text="Message ID :" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="MessageIDLabel" runat="server" Font-Bold="True" 
                        Font-Size="Large" ForeColor="#999999"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Send Date :" Visible="False"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#999999"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Message Heading :" Visible="False"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Message Content :" Visible="False"></asp:Label>
                </td>
                <td class="style4" rowspan="2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#990000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                </td>
            </tr>
        </table>
        </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">
        <table style="width: 100%;">
            <tr>
                <td colspan="3">
                  <p style="font-weight: bolder; color: #000000; font-size: large; font-family: 'Courier New', Courier, monospace">Welcome to the New Unread Message box </p>
          
            </tr>
         
        </table>
    
        
        
        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
            GridLines="Vertical" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="message_id" HeaderText="Message ID" />
                <asp:BoundField DataField="sender_id" HeaderText="Sender ID" />
                <asp:BoundField DataField="send_date" HeaderText="Send Date" />
                <asp:BoundField DataField="M_heading" HeaderText="Message Heading" />
              

                <asp:BoundField DataField="receiver_type" HeaderText="Receiver Type" />
                <asp:BoundField DataField="receiver_id" HeaderText="Receiver ID" />
                <asp:BoundField DataField="status" HeaderText="Status" />
                <asp:HyperLinkField DataNavigateUrlFields="Message_id" 
                    DataNavigateUrlFormatString="InViewInUnread.aspx?Message_id={0}" 
                    Text="Read" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>

        <br /><br />

        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="ShowBase_User_MessageUnread" TypeName="ProductManager">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                <asp:SessionParameter Name="user_type" SessionField="usertype" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
   
    </asp:Panel>
 

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
</asp:Content>

