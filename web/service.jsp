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
                <li><a href="service.jsp" class="current">Services</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="contact-us.jsp">Contact</a></li>
            </ul>    	
	        <div class="cleaner"></div>
        </div> <!-- end of menu -->
        

    
            <div class="content_box1">
        	
            <h2> Service For</h2>
            <div class="content_box_inner">

            <div class="partner_box">
                <div class="image_wrapper float_l"><a href="#"><center><img src="images/admin.png" alt="image" /></center></a></div>
                <div class="ss_right">
                    <h3>Admin</h3>
                    <p>Mjaor power are distridubuted to admin.</p>
                    <ul class="tmo_list">
                        <li>Change look of webpages</li>
                        <li>Edit/Update notice board</li>
                        <li>Process requests. </li>
                        <li>View All detail of Resident and Maintainer.</li>   
                    </ul>
                </div>                    
                <div class="cleaner"></div>
            </div>
            
            <div class="partner_box">
                <div class="image_wrapper float_l"><a href="#"><center><img src="images/resident.jpg" alt="image" /></center></a></div>
                <div class="ss_right">
                    <h3>Resident</h3>
                    <p>All apartment member have folowing rights on this web application.</p>
                    <ul class="tmo_list">
                        <li>Launch Complaints/Request </li>
                        <li>Edit/Update his Profile</li>
                        <li>Read/Comment on other requests.</li>
                        <li>Edit/Delete/Modify his comment/Reuest.</li>   
                    </ul>
                </div>
                <div class="cleaner"></div>
            </div>
            
            <div class="partner_box">
                <div class="image_wrapper float_l"><a href="#"><center><img src="images/maintainer.jpg" alt="image" /></center></a></div>
                <div class="ss_right">
                	<h3>Maintainer</h3>
                    <p>Maintainer is a service man which has following rights.</p>
                    <ul class="tmo_list">
                        <li>See Complaints.</li>
                        <li>Initialise the date for service.</li>
                        <li>Close the comlain after complition.</li>
                        <li>Edit His profile.</li>   
                    </ul>
                </div>
                <div class="cleaner"></div>
            </div>
                
                <div></div>
            </div>
            
        </div>
        
    </div>
    
    <div class="cleaner"></div>
</div>

    
    <jsp:include page="footer.jsp"></jsp:include>
   
</body>
</html>
