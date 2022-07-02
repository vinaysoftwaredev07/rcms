<%@page import="java.sql.SQLException"%>
<%@page import="connection.GetData"%>
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

<jsp:useBean id="log" class="model.LogIn" scope="session" ></jsp:useBean>
<jsp:useBean id="get" class="connection.GetData" scope="session" ></jsp:useBean>
    
    <%  
    
       String name = null ;
       String userid = null ;
       String ap_num = null;
       String mob = null;
       try
       {       
      name = GetData.getName(log.getUsert(), log.getUserid());
      userid = log.getUserid();
      ap_num = GetData.getAppNum(log.getUsert(), log.getUserid());
      mob = GetData.getMob(log.getUsert(), log.getUserid());
             }
       catch(SQLException ex)
      {
        session.invalidate();
        response.sendRedirect("../home.jsp");
       }        

    %>
</script>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>

    
 <div class="content_box">
    <h2>Maintenence Request</h2>
            <div class="cleaner"></div>
    </div>
            

    <form   action="../controller_jsp/do-mantanance-request.jsp" method="post" onsubmit="return regValidate()">
                <table width="600" height="371" border="0" class="regtable" cellspacing="4px">
    <tr>
    <td align="right">Request Type : </td>
    <td>
        <select class="input" id="usertype" name="rqst">
                    <option value="">select</option>
                    <option value="plumbing">Plumbing</option>
                    <option value="electrical">Electrical</option>
                    <option value="carpentry">Carpentry</option>
            </select>
    </td>
    </tr>
  <tr>
    <td width="300" align="right">Name : </td>
    <td width="300"><input type="text" id="name" name="name" class="input" value="<%= name %>" readonly="readonly"/></td>
  </tr>
  <tr>
    <td align="right">UserID : </td>
    <td><input type="text" class="input" id="userid" name="userid" value="<%= userid %>" readonly="readonly"/></td>
  </tr>
  <tr>
    <td align="right">Mobile Number : </td>
    <td><input type="text" class="input" id="mob" name="mob" value="<%= mob %>" readonly="readonly"/></td>
  </tr>
  <tr>
    <td align="right">Apartment Number : </td>
    <td><input type="text" class="input" id="mob" name="ap_num" value="<%= ap_num %>"readonly="readonly"></td>
  </tr>
  
  <tr>
    <td align="right">Description : </td>
    <td><input type="text" class="input" id="mob" name="desc" placeholder="Description"/></td>
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
</body>
</html>        