<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShenaliHome.aspx.cs" Inherits="ShenaliHome" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Shenali Home</title>
    <link href="Styles/Styles/style.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="Styles/Styles/base.css" rel="stylesheet" type="text/css" media="screen" />
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="css/Slider/slider.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Playfair+Display:400italic'
        rel='stylesheet' type='text/css' />
    <noscript>
        <link rel="stylesheet" type="text/css" href="css/Slider/noscript.css" />
    </noscript>
</head>
<body>
<div>
<div>

</div>
    
    <div id="container">
        <header>
       
        <nav>
      
          <ul id="nav">
          
            <li><a href="ShenaliHome.aspx" class="current">Home</a></li>
            <li><a href="BaseRestaurant/about.aspx">About us</a></li>
            <li><a href="CreateNew.aspx" >New Users</a></li>
            <li><a href="BaseRestaurant/OrderPage.aspx">Quick Order</a></li>
            <li><a href="BaseRestHouse/ReservationPage.aspx">Quick Reservation</a></li>
            <li><a href="BaseRestaurant/contact.aspx">Contact us</a></li>   
        </nav>

        <hgroup class="intro">

        </hgroup>
        
      </header>
        <div id="ei-slider" class="ei-slider">
            <ul class="ei-slider-large">
                <li>
                    <img src="images/large/1.jpg" alt="image01" />
                    <div class="ei-title">
                        <h2>
                            Shenali</h2>
                        <h3>
                            Bakery</h3>
                    </div>
                </li>
                <li>
                    <img src="images/large/2.jpg" alt="image02" />
                    <div class="ei-title">
                        <h2>
                            Shenali</h2>
                        <h3>
                            Restaurant</h3>
                    </div>
                </li>
                <li>
                    <img src="images/large/3.jpg" alt="image03" />
                    <div class="ei-title">
                        <h2>
                            Shenali</h2>
                        <h3>
                            Restaurant</h3>
                    </div>
                </li>
                <li>
                    <img src="images/large/4.jpg" alt="image04" />
                    <div class="ei-title">
                        <h2>
                            Shenali</h2>
                        <h3>
                            Take Away Outlet</h3>
                    </div>
                </li>
                <li>
                    <img src="images/large/5.jpg" alt="image05" />
                    <div class="ei-title">
                        <h2>
                            Shenali</h2>
                        <h3>
                            Rest House</h3>
                    </div>
                </li>
                <li>
                    <img src="images/large/6.jpg" alt="image06" />
                    <div class="ei-title">
                        <h2>
                            Shenali</h2>
                        <h3>
                            Rest House</h3>
                    </div>
                </li>
                <li>
                    <img src="images/large/7.jpg" alt="image07" />
                    <div class="ei-title">
                        <h2>
                            Shenali</h2>
                        <h3>
                            Bakery Breads</h3>
                    </div>
                </li>
            </ul>
            <!-- ei-slider-large -->
            <ul class="ei-slider-thumbs">
                <li class="ei-slider-element">Current</li>
                <li><a href="#">Slide 1</a><img src="images/thumbs/1.jpg" alt="thumb01" /></li>
                <li><a href="#">Slide 2</a><img src="images/thumbs/2.jpg" alt="thumb02" /></li>
                <li><a href="#">Slide 3</a><img src="images/thumbs/3.jpg" alt="thumb03" /></li>
                <li><a href="#">Slide 4</a><img src="images/thumbs/4.jpg" alt="thumb04" /></li>
                <li><a href="#">Slide 5</a><img src="images/thumbs/5.jpg" alt="thumb02" /></li>
                <li><a href="#">Slide 6</a><img src="images/thumbs/6.jpg" alt="thumb03" /></li>
                <li><a href="#">Slide 7</a><img src="images/thumbs/7.jpg" alt="thumb04" /></li>
            </ul>
            <!-- ei-slider-thumbs -->
        </div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function () {
                $('#ei-slider').eislideshow({
                    animation: 'center',
                    autoplay: true,
                    slideshow_interval: 3000,
                    titlesFactor: 0
                });
            });
        </script>
        <div class="clear">
        </div>
        <div class="border" style="margin: 15px">
      <h3 >User Login &nbsp;&nbsp;&nbsp; </h3>
           
            <iframe src="FirstLoad.aspx" width="465" height="165" runat="server"></iframe>
        
        </div>
        <div class="home-widget">
            <form runat="server">
            </form>
        </div>
        <div class="home-widget">
        </div>
        <div class="home-widget">
            <h3>
                Shenali Restaurant</h3>
            <a href="BaseRestaurant/RestaurantStart.aspx">
                <img src="BaseRestaurant/images/home/1.jpg" width="300" alt="" /></a></div>
        <div class="home-widget">
            <h3>
                Shenali Rest House</h3>
            <a href="BaseRestHouse/Rest HouseStart.aspx">
                <img src="BaseRestHouse/images/home/1.jpg" width="300" alt="" /></a></div>
        <div class="border2">
        </div>
        <br />
    </div>
    <footer>
        <div class="border"></div>
        
        <div style="margin-left: 40px;">
        <div class="footer-widget">
          <h4>Our Service</h4>
     
   <p>Step-in to be lost in unearthly cuisines, cosy hideouts, heavenly surrounding and the best of services,Our vision & beliefs are firmly grounded in extending a true personalized service to all our guests.Our Work force is fully trained for give full customer satisfactory.Our customer delivery service is very fast.No late delivery.late deliveries will be fully refunded.We are trying to give best service to you. </p>
          
       </div>
       <div class="footer-widget">
              <h4>Contact Info</h4>
          <ul class="blog">
        <li><a href="#">Address</a><br/>
          Shenali BakeHouse Main center,<br />Kegalle, Sri Lanka </li>
        <li><a href="#">Hotline</a><br/>
          -0718188165- </li>
        <li><a href="#">Communication</a><br/>
          With respect to all communications made to Shenali Group(pvt) including, without limitation, feedback, questions, comments and suggestions, Shenali Group is free to use </li>

          </ul>
       </div>
        <div class="footer-widget">
          <h4>Legal Notices</h4>
          <ul class="blog">
        <li><a href="#">Trademark Notice</a><br/>
          This Web Site contains valuable trademarks and intellectual properties owned by Shenali Group(pvt).</li>
        <li><a href="#">Copyright Notice</a><br/>
          The information, text, graphics, images, logos, links, software and information published or otherwise contained on this site (the "Contents") are owned by, or licensed to,Shenali Group(pvt) . </li>
        <li><a href="#">General Notice</a><br/>
          This Web Site has been compiled in good faith by Shenali Group(pvt) .</li>
          </ul>
        </div>
        <div class="footer-widget">
          <h4>We Are Social!</h4>
          <div id="social"> <a href="" class="s3d twitter" target="_blank"> Twitter <span class="icons twitter"></span> </a> <a href="" class="s3d facebook" target="_blank"> Facebook <span class="icons facebook"></span> </a> <a href="" class="s3d forrst" target="_blank"> Forrst <span class="icons forrst"></span> </a> <a href="" class="s3d flickr" target="_blank"> Flickr <span class="icons flickr"></span> </a> <a href="#" class="s3d designmoo" target="_blank"> Designmoo <span class="icons designmoo"></span> </a> </div>
        </div>
        </div>
        <div class="border2"></div>
        <br />
        <span class="copyright"><span class="left"><br />
        &copy; Copyright 2012 - All Rights Reserved - <a href="#">ashanb58@gmail.com</a></span><span class="right"><br />
        Design by <a href="">Ashanb</a><br />
        <br>
        <br />
        </span></span></footer>
    </div>
</body>
</html>
