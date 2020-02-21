<%@ Page Title="" Language="C#" MasterPageFile="~/BaseRestHouse/RestHouseMasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="BaseRestHouse_GalleryTester" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="styles/jquery.fancybox-1.3.4.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="scripts/jquery.fancybox-1.3.4.pack.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("a.fancyimage").fancybox({
                'overlayShow': false,
                'transitionIn': 'elastic',
                'transitionOut': 'elastic'
            });
        });
	</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
 <div id="container">
      <header>
        <nav>
          <ul id="nav">
            <li><a href="Rest HouseStart.aspx">Home</a></li>
            <li><a href="about.aspx">About</a></li>
            <li><a href="FindRooms.aspx" >Find Rooms</a></li>
            <li><a href="gallery.aspx" class="current">Gallery</a></li>
            <li><a href="contact.aspx">Contact</a></li>
                <asp:Literal ID="store" runat="server"></asp:Literal>
          </ul>
        </nav>
      </header>
      <div class="wrapper">
        <div class="border"></div>
        <article class="fullwidth gallery">
          <h3>Gallery</h3>
        
            <asp:Literal ID="mytext" runat="server"></asp:Literal>
          </article>
        <div class="border2"></div>
        <br>
      </div>




</asp:Content>

