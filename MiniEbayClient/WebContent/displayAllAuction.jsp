 <%@ page contentType="text/html; charset=ISO-8859-1" language="java"  import="java.text.*,java.util.*,java.sql.*"  %> 

<%-- <%@ include file ="registerUserProtection.jsp" %>--%>
<%@ include file ="noProtection.jsp" %>

 <html> 
 	<head> 
 		<title>Display All Bikes </title> 
 		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"> 
 		<link rel="stylesheet" type="text/css" href="style.css" /> 
 		<link rel="icon" href="img/favicon.ico" alt="Mini logo" type="image/x-icon" /> 
 	</head> 
 	<body> 
 		<div id="container"> 
 			<header> 
 				<a name="Top" style="color:green; text-decoration:none;" href="index.jsp"> 
 					<h1>1 bike more || 1 bike less
 				</a><span> 
 					Healthier, greener, smarter 
 				</span>  
 				</h1> 
		
 			<div id="hello">	
				<h2><%= greeting%><a style="color:blue;font-size:70%; " href=<%=href4%>><%= menuItem7 %> </a></h2>
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

 		</div>
 		<!-- end nav -->
	
		<form name="searchByCategory" id="searchForm"  method="post" action="DisplayAllAuctionsServlet">
				<label id="labelSearch" for="category">Search by category</label>
			<select  style=" margin-right:15%;margin-bottom:2%; width:30%" name="category" required  >
				  <%
				ArrayList<String> categories = (ArrayList<String>)request.getAttribute("categories");
      			  for(int i=0;i<categories.size();i++) {
          				 String category=categories.get(i).toString();
      			  %>
       		 <option value="<%=category %>"><%=category %></option>
       			 <%} %>
			</select>			
				<input id="buttomSearch" type="submit" value="Search"/>
		</form>
		
     <br><br> 
 	<div id="displaySearch"> 
 		<h1 style="text-align:center;">These are all Active Auctions</h1><br> 
 	</div> 
 	<table> 
     <tr>
     	   <th><h4>Auction Id</h4></th>  
 	       <th><h4>Brand</h4></th> 
 		   <th><h4>Model</h4></th> 
 		   <th><h4>Year</h4></th>	 
 		   <th><h4>Category</h4></th> 
 		   <th><h4>Start Price</h4></th> 
 		   <th><h4>Time</h4></th> 
	   
 	    </tr>
 	    <%
 	   ArrayList<Map<String, String>> auctions= (ArrayList<Map<String, String>>)request.getAttribute("auctions");
        for(int i=0;i<auctions.size();i++) {
        %>
        <tr>
        	<td><a href=BidServlet?auctionId=<%= auctions.get(i).get("auctionId")%>><%= auctions.get(i).get("auctionId")%></a> </td>
        	<td><%= auctions.get(i).get("brand")%> </td>
        	<td><%= auctions.get(i).get("model")%> </td>
        	<td><%= auctions.get(i).get("bikeYear")%> </td>
        	<td><%= auctions.get(i).get("category")%> </td>
        	<td><%= auctions.get(i).get("startPrice")%> </td>
        	<td><%= auctions.get(i).get("daysTo")+" Days "+auctions.get(i).get("hoursTo")+" hours "+ auctions.get(i).get("minutesTo")+"minutes "+ auctions.get(i).get("secondsTo")+ "Seconds"  %> </td>
        </tr>
        <%} %>

 	</table> 
 
 		
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