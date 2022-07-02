

function regvalidate()
{
    var uname = document.forms["reg"]["name"].value;
    var chm = /^[A-Za-z]{3,25}$/;
    var uid = document.forms["reg"]["userid"].value;
    var cpwd = document.forms["reg"]["cnfpass"].value;
    var pwd = document.forms["reg"]["pass"].value;
    var gen = document.getElementsByName('gender');
    var phone = document.forms["reg"]["mob"].value;
    var apn=document.forms["reg"]["ap_num"].value;
  
    
     if(uname == "")
    {
	   alert('Enter your name');
	   document.forms["reg"]["name"].focus();
	   return false;
    }	

	
	if(!chm.test(uname))
	{
		alert("Invalid Name");
		document.forms["reg"]["name"].focus();
		return false;
	}
        
        if(uid == "")
	{
		alert('Enter email address');
		document.forms["reg"]["userid"].focus;
		return false;
	}
	var chemail = /^[a-zA-Z0-9._%+-]+@[A-z0-9._]+\.[a-zA-Z]+$/;

	if(!chemail.test(uid))
    {
       alert("invalid E-mail");
       document.forms["reg"]["userid"].focus;
		return false;
    }
    if(pwd == "")
	{
		alert('Enter password');
		document.forms["reg"]["pass"].focus();
		return false;
	}	
	
	if(pwd.length < 6)
	{
		alert("Password must have 6 characters");
		document.forms["reg"]["pass"].focus;
		return false;
	}

	
	
	if(cpwd == "")
	{
		alert('Re-Enter password');
		document.forms["reg"]["cnfpass"].focus();
		return false;
	}
	if(cpwd != pwd)
	{
		alert("Password mismatch");
		document.forms["reg"]["pass"].focus();
		return false;
	}
        
        if((gen[0].checked == false) && (gen[1].checked == false))
	{
		alert("Please select your gender");
		document.reg.gender[0].focus();
		return false;
	}
        
       
	if(phone=="")
	{
	alert("please Enter the Mobile Number");
	document.forms["reg"]["mob"].focus();
	return false;
	}
	if(isNaN(phone))
	{
	alert("Enter the valid Mobile Number(Like : 9999999999)");
	document.forms["reg"]["mob"].focus();
	return false;
	}
	
	if(phone.length < 10 || phone.length>10)
	{
		alert("Mobile Number must have 10 digit");
		document.forms["reg"]["mob"].focus;
		return false;
	}
      
        if(apn == "")
	{
		alert('Select Appartment No.');
		document.forms["reg"]["ap_num"].focus;
		return false;
	}
      
        var date = document.getElementById('datepicker');
    
    if(date.value == "")
        {
            alert("Please select Date of Birth");
            date.focus();
            return false;
			
        }
        

	


}