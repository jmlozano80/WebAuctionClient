

<%
//The next 4 statements are to prevent the browser from caching and to avoid the back button //problem 
   //Force caches to obtain a new copy of the page from the origin server
   response.setHeader("Cache-Control","no-cache"); 
   //Direct caches not to store the page under any circumstance
   response.setHeader("Cache-Control","no-store"); 
   //Causes the proxy cache to see the page as "stale"
   response.setDateHeader("Expires", 0); 
   //HTTP 1.0 backward compatibility
   response.setHeader("Pragma","no-cache"); 
   
   %>