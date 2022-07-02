<%-- 
    Document   : logout
    Created on : Jul 21, 2013, 9:28:33 AM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% 
    session.invalidate(); 
    response.sendRedirect("../home.jsp");
    %>
    </body>
</html>
