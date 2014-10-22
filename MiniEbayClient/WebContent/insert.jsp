<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
<%@ include file ="registerUserProtection.jsp" %>
<%  String error1 = (String) request.getAttribute("error1");
	String success = (String) request.getAttribute("success");
%>  
  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title> Store Items </title>
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
			<h2>
				<%= greeting%> <a style="color:blue;font-size:70%; " href=<%=href4%>><%= menuItem7 %> </a>
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
				</li>			</ul>
		</nav>

		</div><!--end nav -->
	
	<div id ="formContainer">
	<article>
	<h1>Insert a Bike into Database</h1><br><br>
	
	Insert a bike into the database and create an auction.<br><br><br>

	</article>
	

	<form id="insertItemForm" action="InsertItemServlet" method="post"> 
		
		
		<label for="brand">Brand:</label> 
		<input type="text" name="brand" maxlength=50 required placeholder="Brand" /> <br>
		
		<label for="model">Model:</label>	
		<input type="text" name="model" maxlength=100 required placeholder="Model" /><br>
		
		
		<label for="bikeYear">Bike Year:</label>
		<input type="text" name="bikeYear"  maxlength=4 required placeholder="yyyy" /><br>
		
		<label class="dropdown1" for="category">Category:</label>
			  <select style=" margin-right:15%;margin-bottom:2%; width:30%"  name="category" required >
				<option value=""></option>
				<option value="City">City</option>
				<option value="Folding">Folding</option>
				<option value="Road">Road</option>
				<option value="Mountain">Mountain</option>
			</select>	
		<br>
		<label class="dropdown1" for="condition">  Condition:</label> 
		 <select style=" margin-right:15%;margin-bottom:2%; width:30%" name="condition" required >
				<option value="Very Good">Very Good</option>
				<option value="Good">Good</option>
				<option value="Regular">Regular</option>
				<option value="Bad">Bad</option>
				<option value="Very Bad">Very Bad</option>
			</select><br>

		
				
		<input style="width:20%; margin-right:20%; margin-top:3%; border:2px  solid black;"type="submit" value="INSERT" />
		
	</form>
	
	
		<hr id="hrBikes">
		<ul id="hrList"> <li style="margin-left:13%">1bikemore@gmail.com</li>
						<li style="margin-left:90%; margin-top:-2.5%;"><a href="siteMap.jsp"><h6>sitemap</h6></a></li>
		</ul>
	</div>
		<h2 style="margin-left:65%; margin-top:-27%;"><font color="red"><% if (error1 != null){%><%= error1 %><%}%></font></h2>	
		<h2 style="margin-left:65%; margin-top:-27%;"><font color="blue"><% if (success != null){%><%= success %><%}%></font></h2>	
				
	</body>
		
	</body>
</html>