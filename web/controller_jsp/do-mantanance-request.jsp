
<%@page import="java.sql.SQLException"%>
<%@page import="connection.Save_Manatanance_Request"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<jsp:useBean id="req" class="model.Maintanance_Request">
    <jsp:setProperty name="req" property="*" ></jsp:setProperty>
</jsp:useBean>
<jsp:useBean id="save_req" class="connection.Save_Manatanance_Request"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <% 
            try
            {        
            String user = req.getRqst();
            String name = req.getName();
            String userid = req.getUserid();
            String mob = req.getMob();
            String ap_num = req.getAp_num();
            String problem = req.getDesc();
            
           Save_Manatanance_Request.saveRequest(user, name, userid, mob, ap_num, problem);
            response.sendRedirect("request-send.jsp");
            }
            catch(SQLException ex)
            {
               
            }
        %>      
    
    </body>
</html>
