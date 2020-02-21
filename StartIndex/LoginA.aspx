<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginA.aspx.cs" Inherits="LoginA" %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Login Page</title>
        
        <!-- Our CSS stylesheet file -->
        <link rel="stylesheet" href="assets/css/styles.css" />
        
        <!--[if lt IE 9]>
          <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    
    <body runat="server">

		<div id="formContainer">
			<form id="login" method="post" action="./">
				<a href="#" id="flipToRecover" class="flipLink">Forgot?</a>
            

				<input type="text" name="loginEmail" id="loginEmail" value="Username" />
				<input type="password" name="loginPass" id="loginPass" value="password" />
				<input type="submit" name="submit" value="Login" />


			</form>
			<form id="recover" method="post" action="./">
				<a href="#" id="flipToLogin" class="flipLink">Forgot?</a>
				<input type="text" name="recoverEmail" id="recoverEmail" value="Email" />
				<input type="submit" name="submit" value="Recover" />
			</form>
		</div>

        <
        
        <!-- JavaScript includes -->
		<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
		<script src="assets/js/script.js"></script>

    </body>
</html>
