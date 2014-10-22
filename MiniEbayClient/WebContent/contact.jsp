<%@ page contentType="text/html; charset=ISO-8859-1" language="java" import="java.sql.*" errorPage="error.jsp" %>
<%@ include file ="noProtection.jsp" %>
<%@ include file ="backButton.jsp" %>



 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
 
<html>
	<head>
		<title> Contact </title>
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
				<h2><%= greeting%><a style="color:blue;font-size:70%; " href=<%=href4%>><%= menuItem7 %> </a>
				</h2>
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

		<div id="index_center">

		<div id="index_text" style="margin-top:9.5%; padding-left:0%; margin-left:-6%;">
			<article > <h1>Contact us <br><span>You feedback is important for us. </span></h1></article>
				<br>
				<div><h2 class="contact">e-mail </h2> <br><h3 class="contact">1bikemore1bikeless@gmail.com</h3></li></div>
				<br><br>
				<div><h2 class="contact">facebook </h2> <br><h3 class="contact">1 bike more || 1 bike less</h3></li></div>
				<br><br>
				<div><h2 class="contact">twitter </h2> <br><h3 class="contact">@1bikemore1bikeless</h3></li></div>

		</div>
		<div id="index_image">
			<img id="index_pic" style="margin-right:10%;margin-top:-35%;"src="img/contact.png" align="right" alt="Reduce Re-use Re-cycle"/>
		</div>

		</div>
				<hr id="hrContact">
		<ul id="hrList"><li>1bikemore@gmail.com</li>
									<li style="margin-left:60%"><a href="siteMap.jsp"><h6>sitemap</h6></a></li>
		</ul>
	</div><!--end container-->
</body>
<html>