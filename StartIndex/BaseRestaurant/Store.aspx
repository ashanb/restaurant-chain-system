<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Store.aspx.cs" Inherits="BaseRestaurant_reviews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Connoisseur</title>
<link href="styles/style.css" rel="stylesheet" type="text/css" media="screen" />

<script type="text/javascript" src="../Scripts/jquery.js"></script>
<script type="text/javascript" src="../Scripts/menu.js"></script>
<link href="../css/StyleSheet.css" rel="Stylesheet" type="text/css" />
</head>
<body>
<div id="container">
  <header>
    <nav>
      <div id="menu">
                <ul class="menu">
                         <li><a href="#" class="parent"><span>Home</span></a>
            <div><ul>
                <li><a href="#" class="parent"><span>Sub Item 1</span></a>
                    <div><ul>
                        <li><a href="#" class="parent"><span>Sub Item 1.1</span></a>
                            <div><ul>
                                <li><a href="#"><span>Sub Item 1.1.1</span></a></li>
                                <li><a href="#"><span>Sub Item 1.1.2</span></a></li>
                            </ul></div>
                        </li>
                        <li><a href="#"><span>Sub Item 1.2</span></a></li>
                        <li><a href="#"><span>Sub Item 1.3</span></a></li>
                        <li><a href="#"><span>Sub Item 1.4</span></a></li>
                        <li><a href="#"><span>Sub Item 1.5</span></a></li>
                        <li><a href="#"><span>Sub Item 1.6</span></a></li>
                        <li><a href="#" class="parent"><span>Sub Item 1.7</span></a>
                            <div><ul>
                                <li><a href="#"><span>Sub Item 1.7.1</span></a></li>
                                <li><a href="#"><span>Sub Item 1.7.2</span></a></li>
                            </ul></div>
                        </li>
                    </ul></div>
                </li>
                <li><a href="#"><span>Sub Item 2</span></a></li>
                <li><a href="#"><span>Sub Item 3</span></a></li>
            </ul></div>
        </li>

         <!--  ------------------------------------------->

        <li><a href="#" class="parent"><span>Edit</span></a>
            <div><ul>
                <li><a href="#" class="parent"><span>Add new</span></a>
                    <div><ul>
                        <li><a href="#" class="parent"><span>Add User</span></a>
                            <div><ul>
                                <li><a href="MAddUser.aspx"><span>Add User</span></a></li>
                                <li><a href="MAdd_User_Detail.aspx"><span>Add User Details</span></a></li>
                                <li><a href="#"><span> Add User Directly</span></a></li>
                            </ul></div>
                        </li>
                     
                        <li><a href="#" class="parent"><span>Add Customer</span></a>
                          <div><ul>
                                <li><a href="#"><span>Customer</span></a></li>
                                <li><a href="#"><span>Customer Detail</span></a></li>
                                <li><a href="#"><span>Customer Order</span></a></li>
                            </ul></div>
                        </li>
                         <li><a href="#" class="parent"><span>Add Bakery</span></a>
                         <div><ul>
                                <li><a href="#"><span>Item</span></a></li>
                                <li><a href="#"><span>Sale</span></a></li>
                            </ul></div>
                        </li>


                        <li><a href="#" class="parent"><span>Add Restaurant</span></a>
                         <div><ul>
                                <li><a href="#"><span>Item</span></a></li>
                                <li><a href="#"><span>Sale</span></a></li>
                                     <li><a href="#"class="parent"><span>Image</span></a>
                                                 <div><ul>
                                                 <li><a href="MAddGalleryImage.aspx"><span>Add Images To Gallery</span></a></li>   
                                                 <li><a href="../../ImageGallery.html"><span>Stuff ImageGallery</span></a></li>                                      
                                                 </ul></div>
                                    </li>
                            </ul></div>
                        </li>
                        <li><a href="#" class="parent"><span>Add Rest house</span></a>
                         <div><ul>
                                <li><a href="#"><span>Item</span></a></li>
                                <li><a href="#"><span>Sale</span></a></li>
                            </ul></div>
                         </li>
                        <li><a href="#" class="parent"><span>Add Take Away Outlet</span></a>
                            <div><ul>
                               <li><a href="#"><span>Item</span></a></li>
                                <li><a href="#"><span>Sale</span></a></li>
                            </ul></div>
                        </li>
                          <li><a href="MAddItem_details.aspx"><span>Add Item Description</span></a></li>
                        <li><a href="#"><span>Add Category</span></a></li>
                        <li><a href="#"><span>Add Company</span></a></li>
                        <li><a href="#"><span>Add Location</span></a></li>


                        
                    </ul></div>
                </li>

                <li><a href="#" class="parent"><span>Update</span></a>
                <div><ul>
                        <li><a href="#" class="parent"><span>Update User</span></a>
                            <div><ul>
                                <li><a href="#"><span> Update User</span></a></li>
                                <li><a href="#"><span> Update User Detail</span></a></li>
                            </ul></div>
                        </li>
                     
                        <li><a href="#" class="parent"><span>Update Customer</span></a>
                          <div><ul>
                                <li><a href="#"><span>Customer</span></a></li>
                                <li><a href="#"><span>Customer Detail</span></a></li>
                                <li><a href="#"><span>Customer Order</span></a></li>
                            </ul></div>
                        </li>
                         <li><a href="#" class="parent"><span>Update Bakery</span></a>
                         <div><ul>
                                <li><a href="#"><span>Item</span></a></li>
                                <li><a href="#"><span>Sale</span></a></li>
                            </ul></div>
                        </li>


                        <li><a href="#" class="parent"><span>Update Restaurant</span></a>
                         <div><ul>
                                <li><a href="#"><span>Item</span></a></li>
                                <li><a href="#"><span>Sale</span></a></li>
                            </ul></div>
                        </li>
                        <li><a href="#" class="parent"><span>Update Rest house</span></a>
                         <div><ul>
                                <li><a href="#"><span>Item</span></a></li>
                                <li><a href="#"><span>Sale</span></a></li>
                            </ul></div>
                         </li>
                        <li><a href="#" class="parent"><span>Update Take Away Outlet</span></a>
                            <div><ul>
                               <li><a href="#"><span>Item</span></a></li>
                                <li><a href="#"><span>Sale</span></a></li>
                            </ul></div>
                        </li>
                         <li><a href="#"><span>Update Item Description</span></a></li>
                        <li><a href="#"><span>Update Category</span></a></li>
                        <li><a href="#"><span>Update Company</span></a></li>
                        <li><a href="#"><span>Update Location</span></a></li>



                    </ul></div>
                </li>

                <li><a href="#" class="parent"><span>Delete</span></a>
                <div><ul>
                        <li><a href="#" class="parent"><span>Delete User</span></a>
                            <div><ul>
                                <li><a href="#"><span> Delete User</span></a></li>
                                <li><a href="#"><span> Delete User Detail</span></a></li>
                            </ul></div>
                        </li>
                     
                        <li><a href="#" class="parent"><span>Delete Customer</span></a>
                          <div><ul>
                                <li><a href="#"><span>Customer</span></a></li>
                                <li><a href="#"><span>Customer Detail</span></a></li>
                                <li><a href="#"><span>Customer Order</span></a></li>
                            </ul></div>
                        </li>
                         <li><a href="#" class="parent"><span>Delete Bakery</span></a>
                         <div><ul>
                                <li><a href="#"><span>Item</span></a></li>
                                <li><a href="#"><span>Sale</span></a></li>
                            </ul></div>
                        </li>


                        <li><a href="#" class="parent"><span>Delete Restaurant</span></a>
                         <div><ul>
                                <li><a href="#"><span>Item</span></a></li>
                                <li><a href="#"><span>Sale</span></a></li>
                                    <li><a href="#"class="parent"><span>Image</span></a>
                                                 <div><ul>                               
                                                 <li><a href="MDeleteImage.aspx"><span>Del from gallery</span></a></li>
                                                 </ul></div>
                                    </li>

                            </ul></div>
                        </li>
                        <li><a href="#" class="parent"><span>Delete Rest house</span></a>
                         <div><ul>
                                <li><a href="#"><span>Item</span></a></li>
                                <li><a href="#"><span>Sale</span></a></li>
                            </ul></div>
                         </li>
                        <li><a href="#" class="parent"><span>Delete Take Away Outlet</span></a>
                            <div><ul>
                               <li><a href="#"><span>Item</span></a></li>
                                <li><a href="#"><span>Sale</span></a></li>
                            </ul></div>
                        </li>
                         <li><a href="#"><span>Delete Item Description</span></a></li>
                        <li><a href="#"><span>Delete Category</span></a></li>
                        <li><a href="#"><span>Delete Company</span></a></li>
                        <li><a href="#"><span>Delete Location</span></a></li>



                    </ul></div>
                </li>

            </ul></div>
        </li>
     <!--  ------------------------------------------->
                  <li><a href="#" class="parent"><span>Viewing Options</span></a>
            <div><ul>
                <li><a href="#" class="parent"><span>Show</span></a>
                    <div><ul>
                        <li><a href="#" class="parent"><span>Testing </span></a>
                            <div><ul>
                               <li><a href="MGridview.aspx"><span>Viewing Part1</span></a></li>
                                <li><a href="#"><span>Sub Item 1.1.2</span></a></li>
                            </ul></div>
                        </li>
                        <li><a href="#"><span>Sub Item 1.2</span></a></li>
                        <li><a href="#"><span>Sub Item 1.3</span></a></li>
                        <li><a href="#"><span>Sub Item 1.4</span></a></li>
                        <li><a href="#"><span>Sub Item 1.5</span></a></li>
                        <li><a href="#"><span>Sub Item 1.6</span></a></li>
                        <li><a href="#" class="parent"><span>Sub Item 1.7</span></a>
                            <div><ul>
                                <li><a href="#"><span>Sub Item 1.7.1</span></a></li>
                                <li><a href="#"><span>Sub Item 1.7.2</span></a></li>
                            </ul></div>
                        </li>
                    </ul></div>
                </li>
                <li><a href="#"><span>Sub Item 2</span></a></li>
                <li><a href="#"><span>Sub Item 3</span></a></li>
            </ul></div>
        </li>

    

         <!--  ------------------------------------------->
                      <li><a href="#" class="parent"><span>Quick Links</span></a>
            <div><ul>
                <li><a href="#" class="parent"><span>Show</span></a>
                    <div><ul>
                        <li><a href="#" class="parent"><span>Testing </span></a>
                            <div><ul>
                               <li><a href="MGridview.aspx"><span>Viewing Part1</span></a></li>
                                <li><a href="#"><span>Sub Item 1.1.2</span></a></li>
                            </ul></div>
                        </li>
                        <li><a href="#"><span>Sub Item 1.2</span></a></li>
                        <li><a href="#"><span>Sub Item 1.3</span></a></li>
                        <li><a href="#"><span>Sub Item 1.4</span></a></li>
                        <li><a href="#"><span>Sub Item 1.5</span></a></li>
                        <li><a href="#"><span>Sub Item 1.6</span></a></li>
                        <li><a href="#" class="parent"><span>Sub Item 1.7</span></a>
                            <div><ul>
                                <li><a href="#"><span>Sub Item 1.7.1</span></a></li>
                                <li><a href="#"><span>Sub Item 1.7.2</span></a></li>
                            </ul></div>
                        </li>
                    </ul></div>
                </li>
                <li><a href="#"><span>Sub Item 2</span></a></li>
                <li><a href="#"><span>Sub Item 3</span></a></li>
            </ul></div>
        </li>
         
 <!--  ------------------------------------------->
 
        <li><a href="#"><span>Help</span></a></li>
        <li class="last"><a href="#"><span>Contacts</span></a></li>
    </ul>
</div>
    </nav>
  </header>
    <div class="wrapper">
        <aside class="sidebar">
        </p>
    </aside>
    <div class="border2"></div>
    <br>
  </div>
  <footer>
    <div class="border"></div>
    <div class="footer-widget">
      <h4>Some Title</h4>
      <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. </p>
    </div>
    <div class="footer-widget">
      <h4>From The Blog</h4>
      <ul class="blog">
        <li><a href="#">Lorem Ipsum Dolor</a><br/>
          Orciint erdum condimen terdum nulla mcorper elit nam curabitur... </li>
        <li><a href="#">Praesent Et Eros</a><br/>
          Orciint erdum condimen terdum nulla mcorper elit nam curabitur... </li>
        <li><a href="#">Suspendisse In Neque</a><br/>
          Orciint erdum condimen terdum nulla mcorper elit nam curabitur... </li>
        <li><a href="#">Suspendisse In Neque</a><br/>
          Orciint erdum condimen terdum nulla mcorper elit nam curabitur... </li>
      </ul>
    </div>
    <div class="footer-widget">
      <h4>We Are Social!</h4>
      <div id="social"> <a href="http://twitter.com/priteshgupta" class="s3d twitter"> Twitter <span class="icons twitter"></span> </a> <a href="http://www.facebook.com/priteshgupta" class="s3d facebook"> Facebook <span class="icons facebook"></span> </a> <a href="http://forrst.com/people/priteshgupta" class="s3d forrst"> Forrst <span class="icons forrst"></span> </a> <a href="http://www.flickr.com/photos/priteshgupta" class="s3d flickr"> Flickr <span class="icons flickr"></span> </a> <a href="#" class="s3d designmoo"> Designmoo <span class="icons designmoo"></span> </a> </div>
    </div>
    <div class="border2"></div>
    <br />
    <span class="copyright"><span class="left"><br />
    &copy; Copyright 2012 - All Rights Reserved - <a href="#">Domain Name</a></span><span class="right"><br />
    Design by <a href="http://www.priteshgupta.com">PriteshGupta.com</a><br />
    <br>
    <br />
    </span></span></footer>
</div>
</body>
</html>