<%@ Page Title="" Language="C#" MasterPageFile="~/BaseRestaurant/RestaMasterPage.master" AutoEventWireup="true" CodeFile="OrderPage.aspx.cs" Inherits="OrderPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
<div id="container">
  <header>
    <nav>
      <ul id="nav">
        <li><a href="RestaurantStart.aspx">Home</a></li>
        <li><a href="about.aspx">About</a></li>
        <li><a href="menu.aspx" class="current">Menu</a></li>
        <li><a href="gallery.aspx">Gallery</a></li>
        <li><a href="contact.aspx">Contact</a></li>
        <asp:Literal ID="store" runat="server"></asp:Literal>
      </ul>
    </nav>
  </header>
  <div class="wrapper">
    <div class="border"></div>
    <article class="menu">
      
     <iframe id="Iframe" src="MenuGrid.aspx" width="630" height="900" runat= "server"></iframe>
    
    </article>
    <aside class="sidebar">
      <h3>Contact Info</h3>
        <ul class="blog">
        <li><a href="#">Address</a><br/>
          Shenali Restaurant,<br />Kegalle, Sri Lanka </li>
        <li><a href="#">Hotline</a><br/>
          -0718188165- </li>
        <li><a href="#">Communication</a><br/>
          With respect to all communications made to Shenali Group(pvt) including, without limitation, feedback, questions, comments and suggestions, Shenali Group is free to use </li>

          </ul>
      <div class="border3"></div>
        <h3>Our Food</h3>
      <img src="images/home/1.jpg" width="280" alt="" />
      <p><strong>Here at Shenali,</strong> we strive to maintain the high levels of quality that we have been, and still are, famous for. While state of the art production equipment and our own ultra modern facilities have enabled us to maintain a competitive edge and high standards of quality, they have also enabled us to give customers the best value for their money. Most of all, this technology has helped us manufacture optimum quality food that carries 100 years of consumer trust and bakery experience within them.<br>
        <a href="" class="right" style="padding-top:7px"><strong>Continue Reading &raquo;</strong></a></p>
    </aside>
    <div class="border2"></div>
    <br>
  </div>


</asp:Content>

