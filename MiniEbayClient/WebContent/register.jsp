<%@ page contentType="text/html; charset=ISO-8859-1" language="java" import="java.sql.*" errorPage="error.jsp" %>
<%@ include file ="noProtection.jsp"%>
<%@ include file ="backButton.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Registration</title>
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
				<%= greeting%>   <a style="color:blue;font-size:70%; " href=<%=href4%>><%= menuItem7 %> </a>
			</h2>
		</div>
		</header>
		<!--end	heading -->
<h1></h1>

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
	<h1>Registration</h1><br><br>
	
	Create an account and start selling or bidding. <br><br><br>

	</article>
	
	<!--Form -->
	
<form action="Registration" method="post"> 
		<h2 style="margin-right:15%; margin-top:3%;float:top;"><font color="red" size="4%">	<% if (error != null){%><%= error %><%}%></font></h2>	
		

		<label for="name">First Name:</label> 
		<input type="text" name="firstname" maxlength=30 required placeholder="First Name" /> <br>
		
		<label for="name">Last Name:</label>	
		<input type="text" name="lastname" maxlength=30 requir	ed placeholder="Last Name" /><br>
		
			
		<label for="email">Email</label> 
		<input type="email" name="email" maxlength=30 required placeholder="email@example.com" /><br>

		<label for="pwd">Password</label> 
		<input type="password" name="password"   maxlength=15  onchange="form.c_password.pattern = this.value;" required placeholder="Password"/><br>
		
		<label for="c_pwd">Confirm password</label> 
		<input type="password" name="c_password"  maxlength=15 required placeholder="Re-type password"/><br>
		
				
		
		<input style="width:20%; margin-right:20%; margin-top:3%; border:2px  solid black;"type="submit" value="REGISTER" />
	
	
	</form>
	<hr id="hrBikes">
		<ul id="hrList"><li>1bikemore@gmail.com</li>
						<li style="margin-left:60%"><a href="siteMap.jsp"><h6>sitemap</h6></a></li>
		</ul>
	</div>

</body>
</html>