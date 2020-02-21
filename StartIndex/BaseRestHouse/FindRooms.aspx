<%@ Page Title="" Language="C#" MasterPageFile="~/BaseRestHouse/RestHouseMasterPage.master" AutoEventWireup="true" CodeFile="FindRooms.aspx.cs" Inherits="FindRooms " %>

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

      <div class="left">
        <h3>Standard Rooms</h3>
      </div>
         <form runat="server">
      <div class="right menu-order"><a class="button" href="ReservationPage.aspx">Book Now</a></div>
      <img src="images/Reservation/1.jpg" class="left clear item" width="150" alt="">
      <p class="left">Best for people who hope to stay at night.We have 2 types of Rooms which are Single(10) and Double(6) at the Rest house,available in custom.We have only Standard 16 rooms.Morning meal and tea Supplied.</p>
     
     <asp:Literal ID="Room1" runat="server"></asp:Literal>
      
      <asp:LinkButton ID="LinkButton1" runat="server" class="left" 
             style="padding-top:7px; padding-left: 8px;" onclick="LinkButton1_Click" ><strong>More info &raquo;</strong></asp:LinkButton>
       <asp:LinkButton ID="LinkButton4" runat="server" class="right" 
             style="padding-top:7px; padding-left: 8px;" onclick="LinkButton4_Click" ><strong>less &raquo;</strong></asp:LinkButton>
      
      <div class="border3"></div>
    

      <div class="left">
        <h3>Deluxe Rooms</h3>
      </div>
     
      <div class="right menu-order"><a class="button" href="ReservationPage.aspx">Book Now</a></div>
      <img src="images/Reservation/2.jpg" class="left clear item" width="150" alt="">
      <p class="left">lightly bigger and have a much larger balcony. They are available as doubles or twins.altogether we have 6 deluxe rooms.Our deluxe  feature a sitting area for you to unwind in and a TV to keep you entertained.available in custom.Best for people who are come for vacation.3 meals per day with morning and evenning tea .</p>
    
     <asp:Literal ID="Room2" runat="server"></asp:Literal>
    
      <asp:LinkButton ID="LinkButton2" runat="server" class="left"  onclick="LinkButton2_Click"  style="padding-top:7px; padding-left: 8px;" ><strong>More info &raquo;</strong></asp:LinkButton>
      <asp:LinkButton ID="LinkButton5" runat="server" class="right" 
             style="padding-top:7px; padding-left: 8px;" onclick="LinkButton5_Click" ><strong>less &raquo;</strong></asp:LinkButton>
      
      
      <div class="border3"></div>

        <div class="left">
        <h3>Suite Rooms</h3>
      </div>
     
      <div class="right menu-order"><a class="button" href="ReservationPage.aspx">Book Now</a></div>
    <img src="images/Reservation/3.jpg" class="left clear item" width="150" alt="">
      <p class="left">Our suite rooms are comfortable, cosy and offer great value for money.We have three rooms in this class, individually styled with colourful fabrics. Each one has a double bed and an en suite mini-wetroom with shower, basin and wc.vailable in custom,We have only Suite 5 rooms.Best for people who are come for vacation with Family .3 meals per day including morning and evenning tea.</p>
    
     <asp:Literal ID="Room3" runat="server"></asp:Literal>
    
      <asp:LinkButton ID="LinkButton3" runat="server" class="left" onclick="LinkButton3_Click"  style="padding-top:7px; padding-left: 8px;" ><strong>More info &raquo;</strong></asp:LinkButton>
      <asp:LinkButton ID="LinkButton6" runat="server" class="right" 
             style="padding-top:7px; padding-left: 8px;" onclick="LinkButton6_Click" ><strong>less &raquo;</strong></asp:LinkButton>
      
      
      <div class="border3"></div>
      </form>
      

    
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

