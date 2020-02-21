<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="InViewMessages.aspx.cs" Inherits=" InViewMessages" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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
               <li><a href="InViewInUnread.aspx">View Unread</a></li>
               <li><a href="InViewInRead.aspx">View Read</a></li>
               <li><a href="InViewIninbox.aspx">Inbox</a></li>
               <li><a href="InViewInSent.aspx">View Sent</a></li>
          </ul>


     </div>


 

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
</asp:Content>

