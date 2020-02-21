<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateNew.aspx.cs" Inherits="CreateNew" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Shenali Create New Customer Account </title>
	<link href="BaseRestaurant/styles/style.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="BaseRestaurant/styles/base.css" rel="stylesheet" type="text/css" media="screen" />
	<script type="text/javascript" src=" https://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.js"></script>
	<script type="text/javascript" src="BaseRestaurant/Scripts/jquery.pikachoose.js"></script>>
	</head>
	<body>
    <div id="container">
  <header>
    <nav>
      <ul id="nav">
        <li><a href="ShenaliHome.aspx">Home Page</a></li>
        <li><a href="CreateNew.aspx" class="current">New Account</a></li>
         <li><a href="BaseRestaurant/RestaurantStart.aspx">Restaurant Home</a></li>
        <li><a href="BaseRestHouse/Rest HouseStart.aspx">RestHouse Home</a></li>
        <li><a href="BaseRestaurant/OrderPage.aspx">Quick Order</a></li>
        <li><a href="BaseRestHouse/ReservationPage.aspx">Quick Reservation</a></li>
    
      </ul>
    </nav>
  </header>
  <div class="wrapper">
    <div class="border"></div>
    <article class="menu">
 <h4>Creating New Customer Login</h4>
 <li>Thank you for creating new Account.After creating a login only you can make orders and reservations in over website.</li>
  <iframe id="Iframe" src="CreateNewForm.aspx" width="630" height="650" runat= "server" scrolling="no"></iframe>
  
      
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
      <img src="images/large/1.jpg" width="280" alt="" />
        <p><strong>Here at Shenali,</strong> we strive to maintain the high levels of quality that we have been, and still are, famous for. While state of the art production equipment and our own ultra modern facilities have enabled us to maintain a competitive edge and high standards of quality, they have also enabled us to give customers the best value for their money. Most of all, this technology has helped us manufacture optimum quality food that carries 100 years of consumer trust and bakery experience within them.<br>
        <a href="" class="right" style="padding-top:7px"><strong>Continue Reading &raquo;</strong></a></p>
    </aside>
    <div class="border2"></div>
    <br>
  </div>

     


         <footer>
 <div class="border"></div>
        <div class="footer-widget">
              <h4>Our Service</h4>
     
   <p>Step-in to be lost in unearthly cuisines, cosy hideouts, heavenly surrounding and the best of services,Our vision & beliefs are firmly grounded in extending a true personalized service to all our guests.Our Work force is fully trained for give full customer satisfactory.Our customer delivery service is very fast.No late delivery.late deliveries will be fully refunded.We are trying to give best service to you. </p>
       </div>
        <div class="footer-widget">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <div class="reservations" style="margin: 50px; float: none"><br />
           
       
          <span class="reservations-title">Call Us:</span>
          <hr class="hr-solid" />
          <span style="font-family: 'Lobster13Regular', cursive;">+0718-188165</span>
          <hr class="hr-dashed" />
          <div style="margin-top:15px"> <a class="button" href="#" title="Email Us">Or Email Us</a> </div>
        </div>
        </div>
      <div class="footer-widget">
          <h4>We Are Social!</h4>
          <div id="social"> <a href="" class="s3d twitter" target="_blank"> Twitter <span class="icons twitter"></span> </a> <a href="" class="s3d facebook" target="_blank"> Facebook <span class="icons facebook"></span> </a> <a href="" class="s3d forrst" target="_blank"> Forrst <span class="icons forrst"></span> </a> <a href="" class="s3d flickr" target="_blank"> Flickr <span class="icons flickr"></span> </a> <a href="#" class="s3d designmoo" target="_blank"> Designmoo <span class="icons designmoo"></span> </a> </div>
        </div>
        <div class="border2"></div>
        <br />
        <span class="copyright"><span class="left"><br />
        &copy; Copyright 2012 - All Rights Reserved - <a href="#">ShenaliFoods(pvt).com</a></span><span class="right"><br />
        Design by <a href="http://www.gmail.com">ashanb58@gmail.com</a><br />
        <br>
        <br />
        </span></span> </footer>
  
</body>
</html>
