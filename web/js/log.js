
function validate()
{
var uid = document.forms["login"]["userid"].value;
var pwd = document.forms["login"]["pass"].value;
var ust=document.forms["login"]["usert"].value;
if(ust == "")
	{
		alert('Select User Type');
		document.login.usert.focus;
		return false;
	}
if(uid == "")
	{
		alert('Enter email address');
		document.login.userid.focus;
		return false;
	}
	var chemail = /^[a-zA-Z0-9._%+-]+@[A-z0-9._]+\.[a-zA-Z]+$/;

	if(!chemail.test(uid))
    {
       alert("invalid E-mail");
       document.forms["login"]["userid"].focus;
		return false;
    }
	if(pwd == "")
	{
		alert('Enter password');
		document.forms["login"]["pass"].focus;
		return false;
	//	document.reg.gen[0].focus();
	}	
}