<%@ Page Title="" Language="C#" MasterPageFile="~/BaseRestHouse/RestHouseMasterPage.master" AutoEventWireup="true" CodeFile="Rest HouseStart.aspx.cs" Inherits="Base_Rest_House" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<script type="text/javascript">
	    $(document).ready(function () {
	        $("#pikame").PikaChoose();
	    });
	</script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
<div id="container">
<header>
        <nav>
          <ul id="nav">
            <li><a href="Rest HouseStart.aspx" class="current">Home</a></li>
            <li><a href="about.aspx">About</a></li>
            <li><a href="FindRooms.aspx" >Find Rooms</a></li>
            <li><a href="gallery.aspx">Gallery</a></li>
            <li><a href="contact.aspx">Contact</a></li>
    <asp:Literal ID="store" runat="server"></asp:Literal>
   
          </ul>
        </nav>
        <hgroup class="intro">
        
          <h1 class="title">Rest House</h1>&nbsp;&nbsp;<a href="../ShenaliHome.aspx">Back to Home</a>
          <h3 class="tagline">Welcome to the Shenali Online Rest House!</h3>
           <h3 class="tagline">Booking is now easy and fast..</h3>
        </hgroup>

         
        <div class="reservations"><br />
       
          <span class="reservations-title">Logged in as:</span>
          <hr class="hr-solid" />
          <span style="font-family: 'Lobster13Regular', cursive;"><asp:Literal ID="USER" runat="server"></asp:Literal></span>
          <hr class="hr-dashed" />
            <asp:Literal ID="Userspec" runat="server"></asp:Literal>

           
          
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      </header>
      <div class="wrapper">
        <div class="pikachoose">
    


          <ul id="pikame">
          
              <li><a href=""><img src="images/home/1.jpg" alt="" /></a></li>
            <li><a href=""><img src="images/home/2.jpg" alt="" /></a></li>
            <li><a href=""><img src="images/home/3.jpg" alt="" /></a></li>
            <li><a href=""><img src="images/home/4.jpg" alt="" /></a></li>
            <li><a href=""><img src="images/home/5.jpg" alt="" /></a></li>
          
              <asp:Literal ID="myText" runat="server"></asp:Literal>

            
          </ul>
         


        </div>
        <div class="clear"></div>
        <div class="border"></div>
        <div class="home-widget">
          <h3>Our Rooms</h3>
          <img src="images/home/3.jpg" width="300" alt="" />
          <p>Well equipped rooms with all modern facilities, for the business as well as leisure travelers.Well furnished rooms with the color television, and satellite channels, 24 hrs running hot and cold water, speaker phone with the zero dialing 2 bottles of mineral water with compliments, to meet the expectations. </p>
        </div>
        <div class="home-widget">
          <h3>Our Facilities</h3>
         <img src="images/home/4.jpg" width="300" alt="" />
          <p>Throughout your stay, feel our nurturing embrace as we tend to whims and fancies, bring families together, and for business travellers, preempt the smallest need to ease day-to-day cares. Rediscover those forgotten rhythms of long days and easy nights at any of our luxury rest house in Sri Lanka, imbued with contemporary accents, a tapestry of cultures and a touch of tradition. </p>
        </div>
        <div class="home-widget">
          <h3>Our Service</h3>
          <img src="images/home/1.jpg" width="300" alt="" />
          <p>Step-in to be lost in unearthly cuisines, cosy hideouts, heavenly surrounding and the best of services,Our vision & beliefs are firmly grounded in extending a true personalized service to all our guests.Our Work force is fully trained for give full customer satisfactory.Our customer delivery service is very fast.</p>
        </div>
        <div class="border2"></div>
        <br />
        <aside id="pricing-table" class="clear">
          <div class="plan">
            <h3>Standard</h3>
            <a class="button" href="">Book Now</a>

            <ul>
              <li><strong style="text-transform:uppercase">Single or double beds</strong></li>
              <li><strong style="text-transform:uppercase">Telephone</strong></li>
              <li><strong style="text-transform:uppercase">Rainshower cubicle</strong></li>
              <li><strong style="text-transform:uppercase">& more </strong></li>
            </ul>
          </div>
          <div class="plan">
            <h3>Deluxe</h3>
            <a class="button" href="">Book Now</a>

            <ul>
              <li><strong style="text-transform:uppercase">double or Twin beds</strong></li>
              <li><strong style="text-transform:uppercase">Laundry service</strong></li>
              <li><strong style="text-transform:uppercase">Air conditioning and fan</strong></li>
              <li><strong style="text-transform:uppercase">& more</strong></li>
            </ul>
          </div>
          <div class="plan">
            <h3>Suite</h3>
            <a class="button" href="">Book Now</a>
            <ul>
              <li><strong style="text-transform:uppercase">Single or Twin beds</strong></li>
              <li><strong style="text-transform:uppercase">piped music</strong></li>
              <li><strong style="text-transform:uppercase">Mini fridge on request</strong></li>
              <li><strong style="text-transform:uppercase">& more</strong></li>
            </ul>
          </div>
        </aside>
      </div>

</asp:Content>


  



