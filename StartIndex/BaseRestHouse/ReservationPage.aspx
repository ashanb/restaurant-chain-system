<%@ Page Title="" Language="C#" MasterPageFile="~/BaseRestHouse/RestHouseMasterPage.master" AutoEventWireup="true" CodeFile="ReservationPage.aspx.cs" Inherits="OrderPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
<div id="container">
  <header>
    <nav>
      <ul id="nav">
        <li><a href="Rest HouseStart.aspx">Home</a></li>
        <li><a href="about.aspx">About</a></li>
        <li><a href="FindRooms.aspx" class="current">Find Rooms</a></li>
        <li><a href="gallery.aspx">Gallery</a></li>
        <li><a href="contact.aspx">Contact</a></li>
            <asp:Literal ID="store" runat="server"></asp:Literal>
      </ul>
    </nav>
  </header>
  <div class="wrapper">
    <div class="border"></div>
    <article class="menu">
      
     <iframe id="Iframe" src="ReservationGridLocator.aspx" width="630" height="1150" runat= "server"></iframe>
    
    </article>
    <aside class="sidebar">
          <h3>Contact Info</h3>
        <ul class="blog">
        <li><a href="#">Address</a><br/>
          Shenali Rest House,<br />Kegalle, Sri Lanka </li>
        <li><a href="#">Hotline</a><br/>
          -0718188165- </li>
        <li><a href="#">Communication</a><br/>
          With respect to all communications made to Shenali Group(pvt) including, without limitation, feedback, questions, comments and suggestions, Shenali Group is free to use </li>

          </ul>
      <div class="border3"></div>
    <h3>Our Rooms</h3>
      <img src="images/home/1.jpg" width="280" alt="" />
      <p><strong>Well equipped rooms with all modern facilities, </strong> for the business as well as leisure travelers.Well furnished rooms with the color television, and satellite channels, 24 hrs running hot and cold water, speaker phone with the zero dialing 2 bottles of mineral water with compliments, to meet the expectations. We have recently renovated the club rooms having all the facilities. Well spacious ,wi –fi connectivity , writing desk, round the clock hot and cold water, , 21 inches flat television with the satellite channels , mini fridge, direct phone line with the speaker phone, tea coffee maker in the rooms,2bottels of mineral water with compliments, well designed bathrooms with all the amenities.	Welcome drinks on the arrival, express check in and check out, fruit basket placed in the rooms.<br>
        <a href="" class="right" style="padding-top:7px"><strong>Continue Reading &raquo;</strong></a></p>
    </aside>
    <div class="border2"></div>
    <br>
  </div>


</asp:Content>

