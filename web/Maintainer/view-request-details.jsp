<%-- 
    Document   : view-request-details
    Created on : Jul 22, 2013, 7:42:27 PM
    Author     : sachin
--%>

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
        
        <div>
            <form action="../controller_jsp/do-reply.jsp" method="post">
                <input type="hidden" name="by" value="<%=request.getParameter("rqst")%>" />
                <input type="hidden" name="to" value="<%=Show_Request.userid.get(0)%>" />
                <input type="hidden" name="id" value="<%=Show_Request.id.get(0)%>" />
                <textarea name="comment" wrap="hard" rows="10" cols="30" required="required"></textarea><br />
                <input type="submit" value="Reply" />
            </form>
        </div>
        
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
