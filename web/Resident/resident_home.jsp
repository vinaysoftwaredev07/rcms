<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="images/logo.png"  />
<title>eXpert Protection Service</title>
<meta name="keywords" content="Residential Management for maintenance of residential society." />
<meta name="description" content="Resident, maintenence of resident for better service" />
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
	if (field.defaultValue == field.value) field.value = '';
	else if (field.value == '') field.value = field.defaultValue;
}

<jsp:useBean id="log" class="model.LogIn" scope="session" ></jsp:useBean>
</script>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <div class="content_box">
     
            <h2>Welcome to <em>R</em> <em>C</em> <em>M</em> <em>S</em></h2>
            <div class="content_box_inner">
                <table id="disp_user"> <tr><td> <h3>Hello, <input type="text" readonly="readonly" value="<%= log.getUserid() %>" /></h3></td></tr></table>
                
                <div class="cleaner"></div>
            </div>
            
        </div>
        
                <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
