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

<!-- show RCMS IMAGE    -->
<div id="wrapper">

    <div id="sidebar">
    
		<div id="site_title">
                                <h1><a href="index.html"><center><img src="images/main_logo.jpg" alt="logo" /> </center></a></h1>
        </div> <!-- end of site_title --> 
        
<!-- search box-->
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
        <!-- login form for rcms -->
        <div class="sidebar_box">
        	<h3>Login</h3>
        	<div class="sidebar_content">
                    <form name="login" action="controller_jsp/do-login.jsp" onsubmit="return logValidate()" method="post">
                 
                        <select name="usert" value="">
                            <option value="">Select</option>
                            <option value="admin_data">Admin</option>
                            <option value="maintainer_data">Maintainer</option>
                            <option value="resident_data">Resident</option>
            </select>

                 
                 <input type="text" name="userid" value="Username/Resident No."  onfocus="clearText(this)" onblur="clearText(this)" /> 
                <input type="password" name="pass" value="Password"  onfocus="clearText(this)" onblur="clearText(this)" />
			    <input type="submit" name="submit" value="login" id="btn_login"/>
			   </form>
               <span style="color:#F00; float: left;">Not a member </span>
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
<!--   navigation bar -->
    <div id="content">
    	
        <div id="menu">
			<ul>
                <li><a href="home.jsp" >Home</a></li>
                <li><a href="service.jsp">Services</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="contact-us.jsp" class="current">Contact</a></li>
            </ul>    	
	        <div class="cleaner"></div>
        </div> <!-- end of menu -->
        

    <div class="content_box">
        	
            <h2>Welcome to <em>R</em> <em>C</em> <em>M</em> <em>S</em></h2>
            <div class="image_wrapper image_fl"><img src="images/ContactUs.png" alt="image 4" /></div>
            
                <p><em>To further enquieries or want to add something, remove something you can get in touch directly to developer team to any modifications .</em></p>
                <p> You can get in touch with us by contact details below or you can fill your query to our Quick Contact and we will send you the response of what you want to know.</p>
                
                <div class="cleaner"></div>
            </div>
            
        
        
         <div class="content_box">
                
            <div class="col_w281">
                <h3>Vinay Kumar</h3>
                E-Mail : vinay070792@gmail.com<br />
                <br />
                Mobile : +919711305799<br />
                Fax : +91-11-27933710
            </div>
            <div class="col_w281 last">
                <h3>Sachin Kumar</h3>
                E-Mail : chauhansachin15@hotmail.com<br />
                <br />
                Tel: 020-080-4400<br />
                Fax: 020-080-7700
            </div>
            
            <div class="cleaner"></div>
        </div>
        
        <div class="content_box last">
        	<div id="contact_form">
                <h4>Quick Contact</h4>
                
                	<form method="post" name="contact" action="#">
        
                         <label for="author">Name:</label> <input type="text" id="author" name="author" class="required input_field" />
                         <label for="email">Email:</label> <input type="text" id="email" name="email" class="validate-email required input_field" />
                                
                         <label for="phone">Phone:</label> <input type="text" name="phone" id="phone" class="input_field" />
                         <label for="text">Message:</label> <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>

                         <br />
                         <input type="submit" class="submit_btn" name="submit" id="submit" value="Send" />
                         <input type="reset" class="submit_btn" name="reset" id="reset" value="Reset" />
                            
                    </form>
                            
           </div>
        </div>
        
    </div>
    
    <div class="cleaner"></div>
</div>
    

    <jsp:include page="footer.jsp"></jsp:include>   
</body>
</html>
