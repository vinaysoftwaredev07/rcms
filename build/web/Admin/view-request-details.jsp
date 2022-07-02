<%-- 
    Document   : view-request-details
    Created on : Jul 22, 2013, 7:42:27 PM
    Author     : sachin
--%>

<%@page import="connection.View_Reply"%>
<%@page import="connection.Show_Request"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="log" class="model.LogIn" scope="session" ></jsp:useBean>
<jsp:useBean id="show" class="connection.Show_Request" scope="session" ></jsp:useBean>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
 
    <body>
        <h1>
       <% 

       Show_Request.showRequestDetails(request.getParameter("rqst"), request.getParameter("id"));
                       
             
       %>
       
          <div class="col_w281">
           <h3>Requests</h3>
               <ul class="service_list">
               <li>
                   Request :  <%= Show_Request.problem.get(0) %> <br />
                </li>
                 <li>
                   By :  <%= Show_Request.name.get(0) %> <br />
                </li>
                <li>
                   email :  <%= Show_Request.userid.get(0) %> <br />
                </li>
                <li>
                   mobile number :  <%= Show_Request.mob.get(0) %> <br />
                </li>
               <li>
                   on :  <%= Show_Request.date.get(0) %> <br />
                </li>
            
                
                 </ul>
	                <div class="cleaner"></div>
        </div>  
                <% 
            String id = request.getParameter("id");
            String user = log.getUserid();
            String rqst = request.getParameter("rqst");
             Show_Request.showRequest(rqst,user);
         connection.View_Reply.showReply(id, user, rqst);
          %>
        
      <div class="col_w281">
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
     View_Reply.by.clear();         
            View_Reply.id.clear();
            View_Reply.reply.clear();         
            View_Reply.to.clear();         
            
            %>

        
        <% 
            Show_Request.ap_num.clear();
            Show_Request.date.clear();
            Show_Request.id.clear();
            Show_Request.mob.clear();
            Show_Request.name.clear();
            Show_Request.problem.clear();
            Show_Request.userid.clear();
       
        %>
     
        </h1>
    </body>
</html>
