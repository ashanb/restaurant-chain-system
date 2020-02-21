<%@ Page Title="" Language="C#" MasterPageFile="~/BaseRestaurant/RestaMasterPage.master" AutoEventWireup="true" CodeFile="RestaurantStart.aspx.cs" Inherits="BaseRestaurant_RestaTester" %>

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
            <li><a href="RestaurantStart.aspx" class="current">Home</a></li>
            <li><a href="about.aspx">About</a></li>
            <li><a href="menu.aspx">Menu</a></li>
            <li><a href="gallery.aspx">Gallery</a></li>
            <li><a href="contact.aspx">Contact</a></li>
    <asp:Literal ID="store" runat="server"></asp:Literal>
   
          </ul>
        </nav>
        <hgroup class="intro">
        
          <h1 class="title">Restaurant's</h1>&nbsp;&nbsp;<a href="../ShenaliHome.aspx">Back to Home</a>
          <h3 class="tagline">Welcome to the Shenali Online Restaurant!</h3>
           <h3 class="tagline">Ordering is now easy and fast..</h3>
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
          <h3>Our Menu</h3>
          <img src="images/home/4.jpg" width="300" alt="" />
          <p>opened nearly 20 years ago, smoothie mania was taking over the country. One of the smoothie's selling points was the health benefits of its fruits and other ingredients. But as anyone who's ever contemplated the similarities between smoothie and milkshake can tell you, smoothies aren't inherently healthy.</p>
        </div>
        <div class="home-widget">
          <h3>Our Desserts</h3>
         <img src="images/home/3.jpg" width="300" alt="" />
          <p>creates almost everything on the menu by recombining the same group of ingredients. Though the Mexican fast-food chain stops short of openly saying they'll make anything you ask for, it's certainly worth a shot. But the real over-the-border secret is their unadvertised "green sauce.</p>
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
            <h3>Breakfast<span>Rs180/=</span></h3>
            <a class="button" href="">Order Now</a>
            <ul>
              <li><strong style="text-transform:uppercase">Fried Rice  </strong> Available</li>
              <li><strong style="text-transform:uppercase">String Hoppers </strong> Available</li>
              <li><strong style="text-transform:uppercase">Fried Noodles </strong> Available</li>
              <li><strong style="text-transform:uppercase">Chicken Soup  </strong>Available</li>
              <li><strong style="text-transform:uppercase">Vegitable Rice  </strong> Available</li>
                <li><strong style="text-transform:uppercase">Garlic Cheese Bread  </strong> Available</li>
                <li><strong style="text-transform:uppercase">& More  </strong> Available</li>
            </ul>
          </div>
          <div class="plan">
            <h3>Lunch<span>Rs240/=</span></h3>
            <a class="button" href="">Order Now</a>
            <ul>
              <li><strong style="text-transform:uppercase">Fried Rice  </strong> Available</li>
              <li><strong style="text-transform:uppercase">Fried Rice Kottu  </strong> Available</li>
              <li><strong style="text-transform:uppercase">Fried Chicken Kottu  </strong> Available</li>
              <li><strong style="text-transform:uppercase">Vegitable Rice  </strong> Available</li>
              <li><strong style="text-transform:uppercase">Chicken Submarine  </strong> Available</li>
              <li><strong style="text-transform:uppercase">Plane Rice  </strong> Available</li>
              <li><strong style="text-transform:uppercase">& More  </strong> Available</li>
            </ul>
          </div>
          <div class="plan">
            <h3>Dinner<span>Rs240/=</span></h3>
            <a class="button" href="">Order Now</a>
            <ul>
              <li><strong style="text-transform:uppercase">Fried Rice  </strong> Available</li>
              <li><strong style="text-transform:uppercase">Chicken Roti  </strong> Available</li>
              <li><strong style="text-transform:uppercase">Fried Cheese Noodles </strong> Available</li>
              <li><strong style="text-transform:uppercase">Kottu  </strong> Available</li>
                <li><strong style="text-transform:uppercase">Garlic Cheese Bread  </strong> Available</li>
                <li><strong style="text-transform:uppercase">Vegitable Rice  </strong> Available</li>
                <li><strong style="text-transform:uppercase">& More  </strong> Available</li>
            </ul>
          </div>
        </aside>
      </div>
    
</asp:Content>


  



