<%@ page contentType="text/html; charset=ISO-8859-1" language="java"  import="java.text.*,java.util.*,java.sql.*" errorPage="error.jsp" %>

 <%@ include file ="registerUserProtection.jsp" %> 


 <html> 
 	<head> 
 		<title>My History</title> 
 		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"> 
 		<link rel="stylesheet" type="text/css" href="style.css" /> 
 		<link rel="icon" href="img/favicon.ico" alt="Mini logo" type="image/x-icon" /> 
	</head> 
	<body> 
 		<div id="container">
 			<header> 
 				<a style="color:green; text-decoration:none;" href="index.jsp"><h1> 
 					1 bike more || 1 bike less 
 					</a><span> 
 						Healthier, greener, smarter
 				</span> 
 			</h1> 
		
 			<div id="hello">	
 				<h2> 
 					<%= greeting%><a style="color:blue;font-size:70%; " href=<%=href4%>><%= menuItem7 %> </a>
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

- 		</div>
<!--end nav -->
		



     <br><br> 
- 	<div id="displaySearch"> 
 		<h1 style="text-align:center;">Auction History</h1><br> 
 	</div> 
 	<table> 
     <tr>
     	   <th><h4>Auction Id</h4></th>  
 	       <th><h4>Status</h4></th> 
 		   <th><h4>Brand</h4></th>  
 		   <th><h4>MaxBid</h4></th> 
 		   <th><h4>Winner</h4></th>   
 	 </tr>
 	    <%
 	   ArrayList<Map<String, String>> auctions= (ArrayList<Map<String, String>>)request.getAttribute("auctions");
        for(int i=0;i<auctions.size();i++) {
        %>
        <tr>
        	<td><%= auctions.get(i).get("auctionId")%></td>
        	<td><%= auctions.get(i).get("auctionStatus")%> </td>
        	<td><%= auctions.get(i).get("itemBrand")%> </td>
        	<td><%= auctions.get(i).get("bidPrice")%> </td>
        	<td><%= auctions.get(i).get("emailOfWinner")%> </td>
        </tr>
        <%} %>

 	</table> 
 
 		
 	</div> 
 	
 		
 		
 		<!-- <form name="reutnTop" id="returnToBikes"  method="get" action="displayAll.jsp"> 
 			<input id="buttomSearch" type="submit" value="Back to Top"/> 
 		</form>  -->
		<br>
		<a href="#Top" style="margin-left:50%">Go Top</a>
		
		
 		<hr id="hrBikes"> 
 		<ul id="hrList"><li>1bikemore@gmail.com</li> 
 						<li style="margin-left:60%"><a href="siteMap.jsp"><h6>sitemap</h6></a></li> 
 		</ul> 
<%//}%>


  </div>
 </body> 
 </html>