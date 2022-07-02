<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="images/logo.png"  />
<title>eXpert Protection Service</title>
<meta name="keywords" content="Residential Management for maintenance of residential society." />
<meta name="description" content="Resident, maintenence of resident for better service" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
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
                                <h1><a href="index.html"><center><img src="images/main_logo.jpg" alt="logo" /> </center></a></h1>
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
        	<h3>Login</h3><!-- login form for rcms -->
        	<div class="sidebar_content">
				<form name="login" action="#" onsubmit="return validate()" method="post">
                <input type="text" name="Username" value="Username/Resident No."  onfocus="clearText(this)" onblur="clearText(this)" /> 
                <input type="password" name="password" value="Password"  onfocus="clearText(this)" onblur="clearText(this)" />
			    <input type="submit" name="submit" value="login" id="btn_login"/>
			   </form>
               <p style="color:#F00">Not a member </p>
            </div>
            <div align="center"><a href="#"><img src="images/register.png" /></a></div>
        </div>   
        
        <div class="sidebar_box last">
        	<h3>Team</h3>
            <div class="sidebar_content">
            
                <blockquote>
                    <p>This is a team project Developed by group JD(Sachin Kumar(Team Leader), MD Parwez Aktar, Vinay Kumar, Intesar Alam, Karan Wadhwa) by the instruction of Naveen Sir, Rahul Sir & Deepali Madam.</p>
                    
                    <cite>Group JD- <span>Web Developer</span></cite>
                </blockquote>
        	</div>
        </div>
        
    </div>
    
    <div id="content">
    	
        <div id="menu">
			<ul>
                <li><a href="home.jsp" class="current">Home</a></li>
                <li><a href="service.jsp">Services</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="contact-us.jsp">Contact</a></li>
            </ul>    	
	        <div class="cleaner"></div>
        </div> <!-- end of menu -->
        
        <div class="content_box">
        	
            <h2>Welcome to <em>R</em>esident <em>C</em>ommunity <em>M</em>anagement <em>S</em>ystem</h2>
            <div class="content_box_inner">
                <div class="image_wrapper1 image_fl"><img src="images/banner.jpg" alt="image" /></div>
              
                
                
                <div class="cleaner"></div>
            </div>
            
        </div>
        
         <div class="content_box last">
                
           <div class="col_w280">
                	<h3>Resident Apartments</h3>
                    <div class="image_wrapper"><img src="images/index.jpg" alt="image" /></div>
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
    
    


<div id="footer_wrapper">
	<div id="footer">

        Copyright © 2048 <a href="#">Residential Community Management System</a> - 
        Designed by <a href="home.jsp" target="_parent">NIEC (JCP) Java-Developers Group</a>
    
    </div> <!-- end of_footer -->
</div>
   
</body>
</html>
