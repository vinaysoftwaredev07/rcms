<%-- 
    Document   : do-login
    Created on : Jul 20, 2013, 9:37:57 PM
    Author     : sachin
--%>

<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="log" class="model.LogIn" scope="session" >
    <jsp:setProperty name="log" property="*"></jsp:setProperty>
</jsp:useBean>
<jsp:useBean id="chklog" class="connection.LogIn"></jsp:useBean>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>
        <%
            String user = log.getUsert();
            String userid = log.getUserid();
            String pass = log.getPass();
        try
       {
         String name = chklog.findUser(user, userid, pass);           
           
        if(name.equals("YES"))
        {
            // session is on when user login
            if(log.getUsert().equals("resident_data"))
           {    
                session.setAttribute("residentsession","ON");
               response.sendRedirect("../Resident/resident_home.jsp");
           }
            else
                {
                  if(log.getUsert().equals("maintainer_data"))
                  {
                        session.setAttribute("mainsession","ON");
                        response.sendRedirect("../Maintainer/maintainer.jsp");
                  }
                  else
                     {
                       if(log.getUsert().equals("admin_data"))
                        {
                               session.setAttribute("adminsession","ON");
                                response.sendRedirect("../Admin/admin_home.jsp");
                 
                       }
                   }
                }
        }
        else
        {
             session.invalidate();
         response.sendRedirect("../error_page/login-error.jsp");
   
        }
     }
     catch(NullPointerException ex)
         {
         response.sendRedirect("../error_page/illegal-registration-access.jsp");
         }     
         catch(SQLException ex)
              {
                  session.invalidate();
                  response.sendRedirect("../error_page/illegal-registration-access.jsp");
         
              }
%>
       
    </body>
</html>
