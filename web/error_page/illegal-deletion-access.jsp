<%-- 
    Document   : illegal-deletion-access
    Created on : Jul 21, 2013, 7:14:24 PM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error</title>
    </head>
    <body>
      <script type="text/javascript">
            alert("Access denied !!! ");
            document.write(location.href="../home.jsp");
      </script>
    </body>
</html>
