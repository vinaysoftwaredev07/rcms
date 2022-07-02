<%-- 
    Document   : view-request
    Created on : Jul 21, 2013, 4:38:37 PM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        
        <div id="content">
    	
        <div id="menu">
			<ul>
                <li><a href="electrical.jsp?rqst=electrical" class="current">Electrical</a></li>
                <li><a href="plumbing.jsp?rqst=plumbing">Plumbing</a></li>
                <li><a href="carpentry.jsp?rqst=carpentry">Carpentry</a></li>
               </ul>    	
	        <div class="cleaner"></div>
        </div> <!-- end of menu -->
        
 <div id="footer_wrapper" >
	<div id="footer">

        <p>Copyright © 2048 <a href="#">Residential Community Management System</a> </p>
       <p> Designed by <a href="home.jsp" target="_parent">NIEC (JCP) Java-Developers Group</a></p>
    
    </div> <!-- end of_footer -->
</div>  
    </body>
</html>
