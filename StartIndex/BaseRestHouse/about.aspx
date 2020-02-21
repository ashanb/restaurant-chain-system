<%@ Page Title="" Language="C#" MasterPageFile="~/BaseRestHouse/RestHouseMasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="AboutTester" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
<div id="container">
  <header>
    <nav>
      <ul id="nav">
        <li><a href="Rest HouseStart.aspx">Home</a></li>
        <li><a href="about.aspx" class="current">About</a></li>
         <li><a href="FindRooms.aspx" >Find Rooms</a></li>
         <li><a href="gallery.aspx">Gallery</a></li>
         <li><a href="contact.aspx">Contact</a></li>
          <asp:Literal ID="store" runat="server"></asp:Literal>
      </ul>
    </nav>
  </header>
   <div class="wrapper">
    <div class="border"></div>
    <article>
      <h3>Shenali Rest House (pvt) LTD</h3>
      <div class="date"><span class="day">24</span> <span class="month">june</span> <span class="year">2008</span> </div>
      <img src="images/home/slogo.png"  width="100" class="right" alt="" style="background-image: none; background-color: #FFFFFF;" />
      <p>Since Our Service is available for with high customer satisfactory. With an unfaltering commitment to perfect hospitality, Shenali Restaurant is known for its professional, yet personal service culture. This valued principle is firmly ingrained in our people, and reflects on who we are, what we believe and how we behave as a corporate entity.  </p>
      <p><strong>Our Rest House,</strong> We're constantly on the lookout for ways to improve our customer service -that means fine tuning this website, our sales center (0718188165) and keeping our incredibly motivated team members up to date with the latest customer service trends. We have a team of over 50 people dedicated to making your days the best you'll have, ever!</p>
   
      <pre><code>
 Address
 Shenali Rest House,
 Kegalle, Sri Lanka
 Hotline
 0718188165
 </code></pre>
 
    </article>
    <aside class="sidebar">
      <h3>Our Rooms</h3>
      <img src="images/home/1.jpg" width="280" alt="" />
      <p><strong>Well equipped rooms with all modern facilities, </strong> for the business as well as leisure travelers.Well furnished rooms with the color television, and satellite channels, 24 hrs running hot and cold water, speaker phone with the zero dialing 2 bottles of mineral water with compliments, to meet the expectations. We have recently renovated the club rooms having all the facilities. Well spacious ,wi –fi connectivity , writing desk, round the clock hot and cold water, , 21 inches flat television with the satellite channels , mini fridge, direct phone line with the speaker phone, tea coffee maker in the rooms,2bottels of mineral water with compliments, well designed bathrooms with all the amenities.	Welcome drinks on the arrival, express check in and check out, fruit basket placed in the rooms.<br>
        <a href="" class="right" style="padding-top:7px"><strong>Continue Reading &raquo;</strong></a></p>
    </aside>
    <div class="border2"></div>
    <br>
  </div>







</asp:Content>

