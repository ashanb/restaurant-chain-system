<%@ Page Title="" Language="C#" MasterPageFile="~/BaseRestaurant/RestaMasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="BaseRestaurant_ContactTester" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
<div id="container">
  <header>
    <nav>
      <ul id="nav">
        <li><a href="RestaurantStart.aspx">Home</a></li>
        <li><a href="about.aspx">About</a></li>
        <li><a href="menu.aspx">Menu</a></li>
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
      <br>
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

