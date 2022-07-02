/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function chNamea(){
    var uname = document.getElementById("name");
        var userid = document.getElementById("userid");

    var name = /[A-Za-z]$/;
    if(uname.value == "")
        {
            alert("Please Enter Name");
            uname.focus();
            return false;
        }
    else 
       {
          if(!name.test(uname.value))
          {
			alert("Invalid User Name");
			uname.focus();
			return false;
	  }
          else
             {
               userid.focus();
              return true;
             } 
      }    
}

function  chUseridra()
{
  var chmail = document.forms["regform"]["userid"].value;
  var chemail = /^[a-zA-Z0-9._%+-]+@[A-z0-9._]+\.[a-zA-Z]+$/;
             
  if(chmail == "")
  {
    alert("Please enter your email address.");
    document.regform.userid.focus();
    return false;
   }
   else
       {
           if(!chemail.test(chmail))
		    {
		       alert("Please enter your valid email address.");
		       document.regform.userid.focus();
		       return false;

		    }
             else
		         { 	
                             
                             document.forms["regform"]["pass"].focus();
			        return true; 
		          }
		

           
       }
		
   }

function chPasswordra(){
	 var pass = document.getElementById("pass");
	 var cnf = document.getElementById("cnfpass");
    
    if(pass.value == "")
        {
            alert("Please Enter Password !");
            pass.focus();
            return false;
			
        }else if(cnfpass.value == "")
        {
            alert("Please Enter Confirm-Password !");
            cnf.focus();
            return false;
			
        }
		
		if(pass.value != cnf.value)
        {
            alert("Passwords does not Match !!!");
            cnf.focus();
            return false;
        }
    return true;
    
}

function chGendera(){
	 var gen = document.getElementsByName("gender");
         	var mob = document.getElementById("mob");

    if(gen[0].checked == false && gen[1].checked == false )
        {
            alert("Please select your Gender !");
            gen[0].focus();
            return false;
        }
    else
    {
        
    mob.focus();
    return true;
    }
}

function chMoba(){
	var mob = document.getElementById("mob");
	  var ap_num = document.getElementById("ap_num") 
          var chmob = /^[0-9]/;
 
         var date = document.getElementById('datepicker');
    
	if(mob.value == "" || chmob.test(mob)){
		 	
			alert("Please Enter your Mobile Number !");
            mob.focus();
            return false;
			
	}else
        { 
            if(mob.value.length > 10)
            {
			alert("Not a valid Mobile Number !");
            mob.focus();
            return false;
	   }
        else
            {
                   ap_num.focus();
                   return true;

                
            }
        }
}

function chAp_Numa()
{
    
        var d = document.getElementById("ap_num");
	  	 var date = document.getElementById('datepicker');

          if(d.value=="")
         {
             alert("please enter Apparment Number");
             return false;
         }
         else
             
             {
                date.focus();
                return true;
                 
             }
    
}
function chDatea(){
	 var date = document.getElementById('datepicker');
    
    if(date.value == "")
        {
            alert("Please select Date of Birth");
            date.focus();
            return false;
			
        }
        else
            {
    return true;
            }
}


function regValidatea()
{
    if(chNamea() && chUseridra()  && chPasswordra() && chGendera() && chMoba() && chAp_Numa() && chDatea()){
        return true;
    }
    else{
        return false;
    }
}

