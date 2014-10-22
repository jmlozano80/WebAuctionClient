<%@ page contentType="text/html; charset=ISO-8859-1" language="java" import="java.sql.*" errorPage="error.jsp" %>
<%@ include file ="noProtection.jsp"%> 
<%@ include file ="backButton.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title> Sitemap </title>
		<link rel="stylesheet" type="text/css" href="style.css" />
		<link rel="icon" href="img/favicon.ico" alt="Mini logo" type="image/x-icon" />
	</head>

	<body>
		<div id="container"><!--container -->
			<header>
				<a style="color:green; text-decoration:none;" href="index.jsp">
				<h1>1 bike more || 1 bike less
				</a><span>
					Healthier, greener, smarter
					</span>
				</h1>
		
			<div id="hello">	
				<h2><%= greeting%></h2>
			</div>
			</header>
<!--end	heading -->
		<div id="menu1">	
		<nav>
			<ul>
			    <li><a href="index.jsp">home</a></li>
				<li><a href="DisplayAllAuctionsServlet">auctions</a></li>
				<li><a href="contact.jsp">contact</a></li>
				<li id="log_reg"><a href=<%=href1%>><%= menuItem4 %> </a>
								 <a><%= menuItemSeparator %></a></a><a href=<%= href2 %>><%= menuItem5 %> </a>
				                 <a><%= menuItemSeparator1 %></a><a href=<%=href3%>><%= menuItem6 %> </a>
				</li>
			</ul>
		</nav>

		</div><!--end nav -->

		<div  style="margin-top:10%; padding-left:0%; margin-left:0%;">
			<article> <h1>SiteMap</h1><br>
			<h3>Sitemap organized by page protection for coursework clarification.</h3></article>
		</div>
		
		<ol id="guess">
	    <li><a style="color: white;href="index.jsp">n</a></li>
		   <li style="color: #006400; font-size=120%; text-decoration: underline">Any User</li>
		   <br>
		   <li><a href="index.jsp">index.jsp</a></li>
		   <br>
		   <li><a href="login.jsp">login.jsp</li>
		   <br>
		   <li><a href="registration.jsp">register.jsp</li>
		   <br>
		   <li><a href="contact.jsp">contact.jsp</li>
		   <br>
		   <li><a href="siteMap.jsp">sitemap.jsp</li>
          </h3>		 
		</ol>
		
		<ol id="guess1">
	      	<li><a style="color: white;href="index.jsp">n</a></li>
		   <li style="color: #006400; font-size=120%; text-decoration: underline">Registered User</li>
		   <br>
		   <li><a href="bikes.jsp">bid.jsp</a></li>
		   <br>
		   <li><a href="logout.jsp">logout.jsp</li>
		   <br>
		   <li><a href="displayAllAuctionsServlet">displayAll.jsp</li>
		   <br>
		   <li><a href="insert.jsp">insert.jsp</li>
		   <br>
		   <li><a href="createAuction.jsp">createAuction.jsp</li>
		   <br>
		 </ol>
		
		 <!--bottom Line--> 		
		<br>
		<hr id="hrBikes">
		<ul id="hrList"><li>1bikemore@gmail.com</li>
						<li style="margin-left:60%"><a href="siteMap.jsp"><h6>sitemap</h6></a></li>
		</ul>
	</body>
</html>