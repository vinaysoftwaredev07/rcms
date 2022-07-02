<%-- 
    Document   : carpentry
    Created on : Jul 21, 2013, 4:51:51 PM
    Author     : sachin
--%>

<%@page import="connection.Show_Request"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="show" class="connection.Show_Request" scope="session" ></jsp:useBean>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>carpentry</title>
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
             <%
              
        String user = request.getParameter("rqst");
        Show_Request.showRequest(user);
        %>
        
        <div class="col_w281">
           <h3>Requests</h3>
                <% for(int i = 0 ; i < Show_Request.id.size(); i++) {  %>    	
               <ul class="service_list">
               <li>
               <a href="view-request-details.jsp?rqst=carpentry&id=<%= Show_Request.id.get(i) %>" class="service_three">
                   Request :  <%= Show_Request.problem.get(i) %> <br />
                </a>
                </li>
               
                                <li>on : <%=Show_Request.date.get(i) %></li>

               <li>
                    Delete Request When Resolved  : <button onclick="location.href='do-delete-request.jsp?id=<%=Show_Request.id.get(i)%>&rqst=<%= user %> '"> delete </button> <br />
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
       
        %>
   
        
              <jsp:include page="footer.jsp"></jsp:include>
   
    </body>
</html>
