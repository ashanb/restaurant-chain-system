<%@ Page Title="" Language="C#" MasterPageFile="~/BaseRestHouse/RestHouseMasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="BaseRestHouse_ContactTester" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
<div id="container">
  <header>
    <nav>
      <ul id="nav">
        <li><a href="Rest HouseStart.aspx">Home</a></li>
        <li><a href="about.aspx">About</a></li>
        <li><a href="FindRooms.aspx" >Find Rooms</a></li>
        <li><a href="gallery.aspx">Gallery</a></li>
        <li><a href="contact.aspx" class="current">Contact</a></li>
            <asp:Literal ID="store" runat="server"></asp:Literal>
      </ul>
    </nav>
  </header>
  <div class="wrapper">
    <div class="border"></div>
    <article>
      <h3>Contact Us</h3>
     <iframe width="625" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.lk/maps?f=d&amp;source=s_d&amp;saddr=&amp;daddr=7.252453,80.44611&amp;hl=en&amp;geocode=&amp;sll=7.252336,80.447232&amp;sspn=0.003071,0.005284&amp;mra=mift&amp;mrsp=1&amp;sz=18&amp;ie=UTF8&amp;ll=7.252336,80.447232&amp;spn=0.003071,0.005284&amp;t=m&amp;output=embed"></iframe><br /><small><a href="https://maps.google.lk/maps?f=d&amp;source=embed&amp;saddr=&amp;daddr=7.252453,80.44611&amp;hl=en&amp;geocode=&amp;sll=7.252336,80.447232&amp;sspn=0.003071,0.005284&amp;mra=mift&amp;mrsp=1&amp;sz=18&amp;ie=UTF8&amp;ll=7.252336,80.447232&amp;spn=0.003071,0.005284&amp;t=m" style="color:#0000FF;text-align:left">View Larger Map</a></small>
      <br />
      <p>Note: To get direction please follow google map instructions.If you need further information it's free to call us.We are waiting for you.</p>
      <form id="form1" runat="server" >
        <label for="name">Name:</label>
        <br>
        
        <asp:TextBox ID="name" runat="server" tabindex="1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
          ControlToValidate="name" ErrorMessage="RequiredFieldValidator">Name Required</asp:RequiredFieldValidator>
        <br>
        <br>
        <label for="name">Subject:</label>
        <br>
      
         <asp:TextBox ID="subject" runat="server" tabindex="1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
          ControlToValidate="subject" ErrorMessage="RequiredFieldValidator">Subject Required</asp:RequiredFieldValidator>
        <br>
        <br>
        <label for="name">Email:</label>
        <br>
     
         <asp:TextBox ID="email" runat="server" tabindex="1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
          ControlToValidate="email" ErrorMessage="RequiredFieldValidator">Email Required</asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
          ControlToValidate="email" ErrorMessage="RegularExpressionValidator" 
          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email</asp:RegularExpressionValidator>
        <br>
        <br>
        <label for="textarea">Message:</label>
        <br>
        <textarea cols="40" rows="8" name="textarea" id="textarea" runat="server" ></textarea>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
          ControlToValidate="textarea" ErrorMessage="RequiredFieldValidator">Message Required</asp:RequiredFieldValidator>
        <br>
        <br>
                 <label for="name">Human Verification:</label>
        <label for="name"> 
        <asp:Label ID="Label4" runat="server"></asp:Label>
&nbsp;+ 
        <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;</label><br />
        <asp:TextBox ID="HumanV" runat="server" tabindex="1" Width="100px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" ForeColor="Red" 
            Text="Wrong Verification code" Visible="False"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="HumanV" ErrorMessage="RequiredFieldValidator">Verification Required</asp:RequiredFieldValidator>
        <br>
        <br>
        <asp:Button ID="Submit" runat="server" class="button" Text="Submit" 
            onclick="Submit_Click"></asp:Button>
        <asp:Label ID="Label1" runat="server"></asp:Label>
      </form>
    
      <br>
      <br>
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

