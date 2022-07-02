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
				<form name="login" action="#" onsubmit="return validate()" method="post">
                <input type="text" name="Username" value="Username/Resident No."  onfocus="clearText(this)" onblur="clearText(this)" /> 
                <input type="password" name="password" value="Password"  onfocus="clearText(this)" onblur="clearText(this)" />
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
                <li><a href="home.jsp" class="current">Home</a></li>
                <li><a href="service.jsp">Services</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="contact-us.jsp">Contact</a></li>
            </ul>    	
	        <div class="cleaner"></div>
        </div> <!-- end of menu -->
