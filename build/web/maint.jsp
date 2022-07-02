
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
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/validation.js"></script>
<script type="text/javascript" src="js/login_validation.js"></script>
<script language="javascript" type="text/javascript">
function clearText(field)
{
	if (field.defaultValue == field.value) field.value = '';
	else if (field.value == '') field.value = field.defaultValue;
}

$(function() {
    $(datepicker).css({
        
    });
  $("#datepicker").datepicker({
    showOn: "button",
    buttonImage: "images/DatePicker.gif",
    changeMonth: true,
    changeYear: true,
    yearRange: '1950:2050',
    buttonImageOnly: true    
  });
  
});

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
                <li><a href="register.jsp" class="current">Register</a></li>
                <li><a href="contact-us.jsp" >Contact</a></li>
            </ul>    	
	        <div class="cleaner"></div>
        </div> <!-- end of menu -->
        

<div class="content_box">
    <h2>Registration</h2>
      <div id="menu1">
            <ul>
                <li><a href="register.jsp" >Resident</a></li>
                <li><a href="admin.jsp">Admin</a></li>
                <li><a href="maint.jsp" class="current">Maintainer</a></li>
             </ul>    	
            <div class="cleaner"></div>
      </div>
     <!-- end of menu -->    
    </div>
            

        <form   action="controller_jsp/do-registration.jsp" method="post" onsubmit="return regValidate()">
                <table width="600" height="371" border="0" class="regtable" cellspacing="4px">
    <tr>
    <td>
     <input class="input" type="hidden" id="usertype" name="usert" value="maint" readonly="readonly" />
    </td>
    </tr>
  <tr>
    <td width="300" align="right">Name : </td>
    <td width="300"><input type="text" id="name" name="name" class="input" placeholder="Name"/></td>
  </tr>
  <tr>
    <td align="right">UserID : </td>
    <td><input type="text" class="input" id="userid" name="userid" placeholder="Email"/></td>
  </tr>
  <tr>
    <td align="right">Password : </td>
    <td><input type="password" class="input" id="pass" name="pass" placeholder="Password"/></td>
  </tr>
  <tr>
    <td align="right">Confirm Password : </td>
    <td><input type="password" class="input" id="cnfpass" name="cnfpass" placeholder="Confirm Password"/></td>
  </tr>
     <tr>
    <td align="right">Gender : </td>
    <td><input type="radio"  name="gender" checked="on" value="male"/>Male&nbsp;&nbsp;&nbsp;<input type="radio"  name="gender" value="female"/>Female</td>
  </tr>
  <tr>
    <td align="right">Mobile Number : </td>
    <td><input type="text" class="input" id="mob" name="mob" placeholder="Mobile Number"/></td>
  </tr>
     <tr>
    <td width="300" align="right">Security Code : </td>
    <td width="300"><input type="text" id="name" name="ap_num" class="input" placeholder="Security code"/></td>
  </tr>
  <tr>
    <td align="right">Date Of Birth : </td>
    <td><input type="text"  id="datepicker" name="date" placeholder="MM/DD/YYY"/></td>
  </tr>
  <tr>
  </tr>
    <tr>
    <td> </td>
    <td><input type="submit" value="Submit" id="btn_login"/> &nbsp;&nbsp; <input type="reset" valu="Reset" id="btn_login"/></td>
  </tr>
</table>

</form>
</div>
        </div>
    <div class="cleaner"></div>    
</div>
    <jsp:include page="footer.jsp"></jsp:include>        
   
</body>
</html>
