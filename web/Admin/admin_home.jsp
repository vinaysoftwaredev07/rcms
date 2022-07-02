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
        
         <div class="content_box last">
                
           <div class="col_w280">
                	<h3>Resident Apartments</h3>
                    <div class="image_wrapper"><img src="../images/index.jpg" alt="image" /></div>
                	<p><em>Maintenance is our resposibility, Relax and Cool is your opportunity.</em></p>
                    <p align="justify">Our site is maintaining more than 1000 Resident apartment to provide you well established Resident to make you confortable to live in community.</p>
                    <p align="justify">We provide you maintenance online which helps you to get ridoff the service tension. This is fully computerised service that can provide you best Quality Servise at only on one click.</p>
                    
                    <div class="cleaner"></div>
                	<div class="btn_more image_fr"><a href="#">More</a></div>
                </div>
               
                
                <div class="cleaner"></div>
            </div>
            
        </div>
    <div class="cleaner"></div>    
</div>
    
    
    <jsp:include page="footer.jsp" ></jsp:include>


</body>
</html>
