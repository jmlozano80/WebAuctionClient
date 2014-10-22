<%@ page contentType="text/html; charset=ISO-8859-1" language="java"  import="java.util.*,java.sql.*,java.text.*" errorPage="error.jsp" %>
<%@ include file ="noProtection.jsp"%>

<%@ include file ="backButton.jsp" %>

<html>
	<head>
		<title>No Active Auctions</title>
		<link rel="stylesheet" type="text/css" href="style.css" />
		<link rel="icon" href="img/favicon.ico" alt="Mini logo" type="image/x-icon" />
		<meta http-equiv="refresh" content="5;url=index.jsp">
	</head>

	<body>
		<div id="container"><!--container -->
			<header>
				<a style="color:green; text-decoration:none;" href="index.jsp">
				<h1>1 bike more 1 car less
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

		<div style="text-align:center;padding-bottom:2%;padding-top:1%;">
<!-- inserted positive message when problem -->
	<br>

    <h1>Sorry, there are not any Active Auction at the moment try later</h1>
	<br>
	<h2></h2>
    <br>
	<h2> You will be redirect to the home page.</h2>

</div>
</div>  
</body>
</html>