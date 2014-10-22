<%@ page contentType="text/html; charset=ISO-8859-1" language="java" import="java.sql.*" errorPage="error.jsp" %>

<%@ include file ="backButton.jsp" %>

<%

/** Jsp membership area - username and password protected .
 */


   String validUser = (String)session.getAttribute("validUser");
   String firstName = (String)session.getAttribute("firstname");
   String lastName  = (String)session.getAttribute("lastname");
   String menuItem4="";
   String menuItem5="";
   String menuItem6="";
   String menuItem7="";
   String menuItemSeparator="";
   String menuItemSeparator1="";
   String href1="";
   String href2="";
   String href3="";
   String href4="";
   String greeting="";
   String error="";
   
   
   if (validUser == null) {
	   request.setAttribute("Error", "Session ended.Please login.");
	   RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	   rd.forward(request,response);
   }
else
{
	  href1="insert.jsp";
      menuItem4="add item";
	  menuItemSeparator="/";
	  menuItem5="add auction";
	  href2="CreateAuctionServlet";
	  menuItemSeparator1="/";
	  menuItem6="history";
	  href3="MyHistoryServlet";
	  greeting="Hello! "+ firstName + " " +lastName;
	menuItem7="log out";
	  href4="logout.jsp";
	 
	 }
   
   
   
%>