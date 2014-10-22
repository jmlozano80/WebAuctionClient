<!-- This page support helps to log in -->

<%@ page contentType="text/html; charset=ISO-8859-1" language="java" import="java.sql.*" errorPage="error.jsp" %>
<%@ include file ="noProtection.jsp" %>
<%@ include file ="backButton.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
 
 
 

 
 
 
<html>
	<head>
		<title> login </title>
		<link rel="stylesheet" type="text/css" href="style.css" />
		<link rel="icon" href="img/favicon.ico" alt="Mini logo" type="image/x-icon" />
	</head>

	<body>
		<div id="container"><!--container -->
		
		<header>
			<a style="color:green; text-decoration:none;" href="index.jsp"><h1>
				1 bike more || 1 bike less
				</a><span>
					Healthier, greener, smarter
				</span> 
			</h1>
		
		    <div id="hello">
				<h2><%= greeting%></h2> <a style="color:blue;font-size:70%; " href=<%=href4%>><%= menuItem7 %> </a>
			</div>
		</header>
<!--end	heading -->
		<div id="menu1">	
		<nav>
			<ul>
			    <li><a href="index.jsp">home</a></li>
				<li><a href="DisplayAllAuctionsServlet">auctions</a></li>
				<li><a href="contact.jsp">contact</a></li>	
				<li id="log_reg"><a href=<%=href1%>><%= menuItem4 %> </a><a><%= menuItemSeparator %></a></a><a href=<%= href2 %>><%= menuItem5 %> </a></li>
			</ul>
		</nav>

		</div><!--end nav -->
		
		<div id ="formContainer">
	    <article>
	
		<h1>Login<span>& Rise your Bike</span></h1><br>
	
		Login to your account and get access to the web features<br>
		<br>
		Not a member? Go to register <a href="register.jsp">Register page</a><br><br>

		<br>
		<img style="margin-left:80%; margin-top:-15%;float:left;"src="img/login1_img.jpg" alt="Raider lifting a bike" >
		</article>
	
	
		<form id="loginForm"  action="LoginServlet" method="post"> 
		
		
			<label for="name">Email:</label> 
			<input type="email" name="email" maxlength=50 required placeholder="email@example.com" /> <br>
			
			<label for="name">Password:</label>	
			<input style= "font-size:80%; width:30%;"type="password" name="password" maxlength=16 required placeholder="Password" /><br>
		
			<input style="width:15%; margin-right:22%; margin-top:3%; border:2px  solid black;"type="submit" value="Login" />
	
			</form>
			<h2 style="margin-left:70%; margin-top:-18%;"><font color="red"><% if (error != null){%><%= error %><%}%></font>

		</div>
		<hr id="hrLogin">
		<ul id="hrList"><li>1bikemore@gmail.com</li>
						<li style="margin-left:60%"><a href="siteMap.jsp"><h6>sitemap</h6></a></li>
		</ul>
	</body>

</html>
		
		