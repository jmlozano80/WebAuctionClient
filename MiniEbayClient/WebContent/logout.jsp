
<!-- This page support insert.jsp to insert new bikes into the database -->


<%@ include file ="registerUserProtection.jsp" %>
<%



 

//check whether the user is logged in. If not redirect to Login Error
if (validUser == null){
	href1="login.jsp";
	menuItem4="login";
	menuItemSeparator="/";
	menuItem5="register";
	href2="registration.jsp";
	greeting= "Bye and Ride Save!";  
    request.setAttribute("Error", "You are not login in.");
	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request,response);
}
//otherwise invalidate the session i.e. logout the user
    href1="logout.jsp";
    menuItem4="log out";
	menuItemSeparator="";
	menuItem5="";
	href2="";
	greeting="Ride Save!  "+ firstName + " " +lastName;
    session.removeAttribute("validUser");
    session.removeAttribute("firstName");
    session.removeAttribute("lastName");
    session.invalidate();
    request.getRequestDispatcher("index.jsp");


%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
    <head>
	    <title> Loging out </title>
		<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Expires" content="0" />
		<meta http-equiv="refresh" content="3;url=index.jsp">
		<link rel="stylesheet" type="text/css" href="style.css" />
		<link rel="icon" href="img/favicon.ico" alt="Mini logo" type="image/x-icon" />
      </head>
    <body>
        <div id="container"><!--container -->
			<header>
				<a style="color:green; text-decoration:none;" href="index.jsp">
				<h1>
					1 bike more 1 car less
					</a><span>
						Healthier, greener, smarter
					</span> 
				</h1>
		
		<div id="hello">	
			<h2>
				<%= greeting%>  
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
		
					<li id="log_reg"><a href=<%=href1%>><%= menuItem4 %> </a><a><%= menuItemSeparator %></a></a><a href=<%= href2 %>><%= menuItem5 %> </a></li>
				</ul>
			</nav>

		</div><!--end nav -->
		
		<div style="margin-left:10%;">
			<img src="img/logout1.png" alt="Reduce Reuse Recycle" title= "Recycle"/>
		</div>
     </body>
 </html>
 

 