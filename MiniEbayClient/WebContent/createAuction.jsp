<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1" import="java.util.*" %>
    <%@ include file ="registerUserProtection.jsp" %>
<% String error1 = (String) request.getAttribute("Error1");
	String success = (String) request.getAttribute("success");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title> Create AuctionCr </title>
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
	<h1>Insert Auction into Database</h1><br><br>
	
	This page of the web is only for use of registered users with registered item.<br><br><br>

	</article>
	

	<form id="createAuction" action="CreateAuctionServlet" method="post"> 
	
		
		<label for="item_id">Item id:</label> 
		<select  style=" margin-right:15%;margin-bottom:2%; width:30%" name="item_id" required  >
				<%
				ArrayList<String> items = (ArrayList<String>)request.getAttribute("items");
        for(int i=0;i<items.size();i++) {
           String item_id=items.get(i).toString();
        %>
        <option value="<%=item_id %>"><%=item_id %></option>
        <%} %>
			</select>
			<br>
		<label for="start_price">Start Price:</label>	
		<input type="text" name="start_price" maxlength=100 required placeholder="£ 0.00" /><br>	
		
		<label style="color:black; margin-right:45%;" for="start_date">Duration:</label>	
		<br>
		<label  for="days">Days:</label>
			  <select style=" margin-right:15%;margin-bottom:2%; width:30%"  name="days" required >
				<%
				
			        for(int i=0;i<32;i++) {
           			
           			String day = Integer.toString(i);
        		%>
        			<option value="<%=day %>"><%=day %></option>
        		<%} %>				
			</select>
		
		<br>
		<label  for="hours">Hours:</label>
			   <select style=" margin-right:15%;margin-bottom:2%; width:30%"  name="hours" required >
				<%
				
			        for(int i=0;i<24;i++) {
           			
           			String hour = Integer.toString(i);
        		%>
        			<option value="<%=hour %>"><%=hour %></option>
        		<%} %>				
			</select>
		<br>
		<label  for="Minutes">Minutes:</label>
			   <select style=" margin-right:15%;margin-bottom:2%; width:30%"  name="minutes" required >
				<%
				
			        for(int i=0;i<60;i++) {
           			
           			String minute = Integer.toString(i);
        		%>
        			<option value="<%=minute %>"><%=minute %></option>
        		<%} %>				
			</select>		
		
				
		<input style="width:20%; margin-right:20%; margin-top:3%; border:2px  solid black;"type="submit" value="INSERT" />
		
	</form>
	
	
		<hr id="hrBikes">
		<ul id="hrList"> <li style="margin-left:13%">1bikemore@gmail.com</li>
						<li style="margin-left:90%; margin-top:-2.5%;"><a href="siteMap.jsp"><h6>sitemap</h6></a></li>
		</ul>
	</div>
		<h2 style="margin-left:65%; margin-top:-33%;"><font color="red"><% if (error1 != null){%><%= error1 %><%}%></font></h2>	
		<h2 style="margin-left:65%; margin-top:-33%;"><font color="blue"><% if (success != null){%><%= success %><%}%></font></h2>	
			
	</body>
</html>