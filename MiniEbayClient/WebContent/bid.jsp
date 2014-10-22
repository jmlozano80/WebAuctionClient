<%@ page contentType="text/html; charset=ISO-8859-1" language="java"  import="java.text.*,java.util.*,java.sql.*" errorPage="error.jsp" %>

 <%@ include file ="registerUserProtection.jsp" %> 
<% String error2 = (String) request.getAttribute("error2");
	String success2 = (String) request.getAttribute("success2");
%>

 <html> 
 <head> 
 <title>Bidding Area</title> 
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

- 		</div>
<!--end nav -->
		



     <br><br> 
 	<div id="displaySearch"> 
    <h1 style="text-align:center;">Bidding Area for Auction  <%= request.getAttribute("auctionId")%></h1><br> 
 </div> 
   <table>
      <tr>  
  	       <th><h4>Brand</h4></th>  
  		   <th><h4>Model</h4></th>  
  		   <th><h4>Category</h4></th> 
  		   <th><h4>Year</h4></th>	  
  		   <th><h4>Condition</h4></th>	 
  		   <th><h4>Start_Price</h4></th> 
  		   <th><h4>Current_Bid</h4></th> 
  		   <th><h4>Time</h4></th>  
  	 </tr>  
 	
  		<tr>  
  	        <td> <%= request.getAttribute("brand") %> </td>  
 		    <td><%= request.getAttribute("model") %> </td>  
  			<td><%= request.getAttribute("category")%> </td>  
  			<td><%= request.getAttribute("bikeYear") %> </td>  
  			<td><%= request.getAttribute("condition") %></td>  
  			<td><%= request.getAttribute("startPrice") %></td> 
  			<td><%= request.getAttribute("currentBid")%></td> 
  			<!-- countdown timer using javascript  --> 
  		<B><td style="font-size:120%"><script language="JavaScript">
				TargetDate = <%=request.getAttribute("timeEnd")%> ;
				BackColor = "white";
				ForeColor = "red";
				CountActive = true;
				CountStepper = -1;
				LeadingZero = true;
				DisplayFormat = "%%D%% Ds, %%H%% Hs, %%M%% Ms, %%S%% Ss.";
				FinishMessage = "Auction Expired";
</script>
<script language="JavaScript" src="countdown.js"></script></td> </B>  
  	    </tr>  
 
 	</table> 
<!-- end table  -->
 
 		<form name="bid" id="formBid"  method="post" action="BidServlet">
 		<input type="hidden" name="auctionId" value="<%=request.getAttribute("auctionId")%>" />
 		<input type="hidden" name="startPrice" value="<%=request.getAttribute("startPrice")%>" />
 			<a>Increase current bid in (£):</a>
 			<select name="bid">
				  <%
				  	double bid=0;				
      			  	for(int i=0;i<50;i++) {
          				 bid = 0.5 + bid;
      			  %>
      			  
       		 <option value="<%=bid %>"><%=bid %></option>
       			 <%} %>
			</select>
 			<input id="buttomSearch" type="submit" value="Submit bid"/> 
 		</form> 
 		
 	<h2 style="margin-left:65%; margin-top:-3%;"><font color="red"><% if (error2 != null){%><%= error2 %><%}%></font></h2>	
	<h2 style="margin-left:65%; margin-top:-3%;"><font color="blue"><% if (success2 != null){%><%= success2 %><%}%></font></h2>
 		<hr id="hrBid">
 		<ul id="hrList"><li>1bikemore@gmail.com</li> 
 						<li style="margin-left:60%"><a href="siteMap.jsp"><h6>sitemap</h6></a></li> 
 		</ul> 



  </div> 
 </body> 
 </html>