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
                <jsp:useBean id="log" class="model.LogIn" scope="session" ></jsp:useBean>

        <jsp:include page="header.jsp"></jsp:include>
        
        <div id="content">
    	
        <div id="menu">
			<ul>
                <li><a href="electrical.jsp?rqst=electrical&user=<%= log.getUserid() %>" class="current">Electrical</a></li>
                <li><a href="plumbing.jsp?rqst=plumbing&user=<%= log.getUserid() %>">Plumbing</a></li>
                <li><a href="carpentry.jsp?rqst=carpentry&user=<%= log.getUserid() %>">Carpentry</a></li>
               </ul>    	
	        <div class="cleaner"></div>
        </div> <!-- end of menu -->
        
     <jsp:include page="footer.jsp"></jsp:include>
    
    </body>
</html>
