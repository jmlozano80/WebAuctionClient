<%@ page contentType="text/html; charset=ISO-8859-1" language="java" import="java.sql.*" errorPage="error.jsp" %>

<%@ include file ="backButton.jsp"%>
<%@ include file ="noProtection.jsp"%>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
 
<html>
	<head>
		<title> Home </title>
		<link rel="stylesheet" type="text/css" href="style.css" />
		<link rel="icon" href="img/favicon.ico" alt="Mini logo" type="image/x-icon" />
	<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Expires" content="0" />
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
				<h2><%= greeting%> <a style="color:blue;font-size:70%; " href=<%=href4%>><%= menuItem7 %> </a>
				</h2>
			</div>
		</header>
<!--end	heading -->
<!--navigation bar -->
		<div id="menu1">	
		<nav>
			<ul>
			    <li><a href="index.jsp">home</a></li>
				<li><a href="DisplayAllAuctionsServlet">auctions</a></li>
				<li><a href="contact.jsp">contact</a></li>
	
				<li id="log_reg"><a href=<%=href1%>><%= menuItem4 %> </a>
								 <a><%= menuItemSeparator %></a></a><a href=<%= href2 %>><%= menuItem5 %> </a>
				                 <a><%= menuItemSeparator1 %></a><a href=<%=href3%>><%= menuItem6 %> </a>
				</li>			</ul>
		</nav>

		</div><!--end nav -->
<div id ="formContainer">
		<div id="index_center">

			<div id="index_text" style="margin-top:10.5%; padding-left:0%; margin-left:-6%;">
				<article> <h1>Why Not? </h1><br><br><br><p><h2>Want to sell a bike!!!! Register, Create an auction and wait for the bidders.
			                                        <br><br> Want to buy a bike!!!! Register, Bid for a bike and start enjoy the good weather.</h2></p></article>
			</div>
			<div id="index_image">
				<img id="index_pic" src="img/bicycles.jpg" align="right" title="8 differents bicycles" alt="8 differents bicycles"/>
			</div>
		</div>
		<!--Botoom line -->
		<hr id="hrIndex">
		<ul id="hrList"><li>1bikemore@gmail.com</li>
						<li style="margin-left:60%"><a href="siteMap.jsp"><h6>sitemap</h6></a></li>
		</ul>
</div><!--end container-->
</div>
</body>
<html>