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
</script>
</head>
<body>

<div id="wrapper">

    <div id="sidebar">
    
		<div id="site_title">
                                <h1><a href="index.html"><center><img src="../images/main_logo.jpg" alt="logo" /> </center></a></h1>
        </div> <!-- end of site_title --> 
        

        <div class="sidebar_box">
        	<h3>Search</h3>
        	<div class="sidebar_content">
                <div id="search_box">      
                    <form action="#" method="get">
                        <input type="text" value="Search on this site" name="q" size="10" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
                      	<input type="submit" name="Search" value="" id="searchbutton" title="Search" />
                    </form>
                </div>
            </div>
        </div>
        
      <div class="sidebar_box">
        			<h3>Links</h3><hr />
                  <table id="tab">
                    <tr>
                        <td><a href="view-request.jsp">Notice</a></td>
                    <tr>
                    <tr>
                    <td><a href="#">Complaints</a></td>
                    </tr>
                    <tr>
                    <td><a href="#">Complaints</a></td>
                    </tr>
                    <tr>
                    <td><a href="#">Complaints</a></td>
                    </tr>
                    <tr>
                    <td><a href="#">Complaints</a></td>
                    </tr>
                  </table>
      </div>
           
        
        <div class="sidebar_box last">
        	<h3>ADMIN</h3>
            <div class="sidebar_content">
            
                <blockquote>
                    <p>You have all the right to this web application to run, stop and you can change/customise the web page of you own and for all user logins</p>
                    
                    <cite>Group JD- <span>Web Developer</span></cite>
                </blockquote>
        	</div>
        </div>
        
    </div>
    
    <div id="content">
    	
        <div id="menu">
			<ul>
                <li><a href="admin_home.jsp" class="current">Home</a></li>
                <li><a href="view-request.jsp">Notice Board</a></li>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="contact-us.jsp">Contact</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>    	
	        <div class="cleaner"></div>
        </div> <!-- end of menu -->
        