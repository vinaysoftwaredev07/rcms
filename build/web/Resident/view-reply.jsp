<%-- 
    Document   : view-reply
    Created on : Jul 22, 2013, 9:15:34 PM
    Author     : system233
--%>

<%@page import="connection.Show_Request"%>
<%@page import="connection.View_Reply"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
      
        <% 
            String id = request.getParameter("id");
            String user = request.getParameter("user");
            String rqst = request.getParameter("rqst");
             Show_Request.showRequest(rqst,user);
         connection.View_Reply.showReply(id, user, rqst);
          %>
        
      <div class="col_w281">
           <h3>Requests</h3>
                <% for(int i = 0 ; i < Show_Request.id.size(); i++) {  %>    	
               <ul class="service_list">
               <li>
                   Request :  <%= Show_Request.problem.get(i) %> <br />
                
                </li>
                        <% } %>
                <% for(int i = 0 ; i < View_Reply.id.size(); i++) {  %>    	
                      
                <li>reply : <%= View_Reply.reply.get(i) %></li>
                <li>
                    by :  <%= View_Reply.by.get(i) %>
                </li>
               
                 </ul>
	                <div class="cleaner"></div>
                        <% } %>
        </div>  
        
                        <%
                         Show_Request.ap_num.clear();
            Show_Request.date.clear();
            Show_Request.id.clear();
            Show_Request.mob.clear();
            Show_Request.name.clear();
            Show_Request.problem.clear();
            Show_Request.userid.clear();
                        
            View_Reply.by.clear();         
            View_Reply.id.clear();
            View_Reply.reply.clear();         
            View_Reply.to.clear();         
            
            %>
    </body>
</html>
