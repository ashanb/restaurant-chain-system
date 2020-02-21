<%@ Page Title="" Language="C#" MasterPageFile="~/BaseRestaurant/RestaMasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="AboutTester" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
<div id="container">
  <header>
    <nav>
      <ul id="nav">
        <li><a href="RestaurantStart.aspx">Home</a></li>
        <li><a href="about.aspx" class="current">About</a></li>
         <li><a href="menu.aspx">Menu</a></li>
         <li><a href="gallery.aspx">Gallery</a></li>
         <li><a href="contact.aspx">Contact</a></li>
          <asp:Literal ID="store" runat="server"></asp:Literal>
      </ul>
    </nav>
  </header>
  <div class="wrapper">
    <div class="border"></div>
    <article>
      <h3>Shenali Restaurants (pvt) LTD</h3>
      <div class="date"><span class="day">24</span> <span class="month">May</span> <span class="year">2006</span> </div>
      <img src="images/home/slogo.png"  width="100" class="right" alt="" style="background-image: none; background-color: #FFFFFF;" />
      <p>Since Our Service is available for with high customer satisfactory. With an unfaltering commitment to perfect hospitality, Shenali Restaurant is known for its professional, yet personal service culture. This valued principle is firmly ingrained in our people, and reflects on who we are, what we believe and how we behave as a corporate entity.  </p>
      <p><strong>Our Restaurant,</strong> We're constantly on the lookout for ways to improve our customer service -that means fine tuning this website, our sales center (0718188165) and keeping our incredibly motivated team members up to date with the latest customer service trends. We have a team of over 50 people dedicated to making your food the best you'll have, ever!</p>
   
      <pre><code>
 Address
 Shenali Restaurant,
 Kegalle, Sri Lanka
 Hotline
 0718188165
 </code></pre>
 
    </article>
    <aside class="sidebar">
        <h3>Our Food</h3>
      <img src="images/home/1.jpg" width="280" alt="" />
      <p><strong>Here at Shenali,</strong> we strive to maintain the high levels of quality that we have been, and still are, famous for. While state of the art production equipment and our own ultra modern facilities have enabled us to maintain a competitive edge and high standards of quality, they have also enabled us to give customers the best value for their money. Most of all, this technology has helped us manufacture optimum quality food that carries 100 years of consumer trust and bakery experience within them.<br>
        <a href="" class="right" style="padding-top:7px"><strong>Continue Reading &raquo;</strong></a></p>
    </aside>
    <div class="border2"></div>
    <br>
  </div>







</asp:Content>

