<%-- 
    Document   : do-reply
    Created on : Jul 22, 2013, 8:24:42 PM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="savereply" class="connection.Reply" ></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    
    <body>
        <%
           String comment = request.getParameter("comment");
           String id = request.getParameter("id");
           String by = request.getParameter("by");
           String to = request.getParameter("to");
           String by2 = null;
           
//           out.print(comment+"\n");
//           out.print(id+"\n");
//           
//           out.print(by+"\n");
//           out.print(to+"\n");
//           
        if(by.equals("electrical"))
        {
          by2 ="e";
        }
        else
        {
          if(by.equals("carpentry"))
          {
          by2 ="c";
          }
          else
          {
           if(by.equals("plumbing"))
          {
          by2 ="p";
          }
          }
        }
           
          savereply.addReply(comment, id, by2, to);
      
        
  %>
    </body>
</html>
