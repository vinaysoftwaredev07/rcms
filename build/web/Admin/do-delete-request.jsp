<%-- 
    Document   : do-delete-request
    Created on : Jul 21, 2013, 6:34:29 PM
    Author     : sachin
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="connection.Request_Delete"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="delete" class="connection.Request_Delete"></jsp:useBean>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete request</title>
    </head>
    <body>
          
        <% 
            try
            {         
            String id = request.getParameter("id");
            String rqst = request.getParameter("rqst");
            Request_Delete.delRequest(rqst, id);
            response.sendRedirect("deletion-done.jsp");
            }
            catch(SQLException ex)
             {
                session.invalidate();
               response.sendRedirect("../error_page/illegal-deletion-access.jsp");
              }         
            
         %>
       
    </body>
</html>
