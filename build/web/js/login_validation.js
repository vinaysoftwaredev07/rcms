/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function logValidate(){
    if(chUserid()  && chPassword()){
        return true;
    }
    else{
        return false;
    }
}



function chUserid(){
    var userid = document.getElementById("userid");
   
    if(userid.value == "UsernId/Resident No.")
        {
            alert("Please Enter your email-id ");
            userid.focus();
            return false;
        }
        
    return true;
}

function chPassword(){
	 var pass = document.getElementById("pass");
	 
    
    if(pass.value == "Password")
        {
            alert("Please Enter Password !");
            pass.focus();
            return false;
			
        }
        
    return true;
    
}

