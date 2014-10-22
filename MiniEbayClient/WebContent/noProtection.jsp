<%@ page contentType="text/html; charset=ISO-8859-1" language="java" import="java.sql.*" errorPage="error.jsp" %>
<%


/**
  * The following  area will help me to set uo the correct nav bar. In case the viewer is register
  * should appear a greeting message and the (loging/register)changes to (log out).
  */
   String error = (String) request.getAttribute("Error");
   //String success = (String) request.getAttribute("sucess");
   String validUser = (String)session.getAttribute("validUser");
   String firstName = (String)session.getAttribute("firstname");
   String lastName  = (String)session.getAttribute("lastname");
   String menuItem4;
   String menuItem5;
   String menuItem6;
   String menuItem7;
   String menuItemSeparator;
   String menuItemSeparator1;
   String href1;
   String href2;
   String href3;
   String href4;
   String greeting;

   
     if (validUser == null) {
	  firstName="";
	  lastName="";
	  href1="login.jsp";
	  menuItem4="login";
	  menuItemSeparator="/";
	  menuItem5="register";
	  href2="register.jsp"; 
	  menuItemSeparator1="";
	  menuItem6="";
	  href3="";
      greeting= "Hello there!";
      menuItem7="";
	  href4="";    
   }
     else {
	 
	  href1="insert.jsp";
      menuItem4="add item";
	  menuItemSeparator="/";
	  menuItem5="add auction";
	  href2="CreateAuctionServlet";
	  menuItemSeparator1="/";
	  menuItem6="history";
	  href3="MyHistoryServlet";
	  greeting="Hello!  "+ firstName + " " +lastName;
	  menuItem7="log out";
	  href4="logout.jsp";
	 }
 
   RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
   rd = request.getRequestDispatcher("index.jsp");
   

%>