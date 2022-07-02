<%-- 
    Document   : d0-registration
    Created on : Jul 20, 2013, 5:51:24 PM
    Author     : sachin
--%>

<%@page import="connection.Save_Resgistration_Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--getting data from request-->
<jsp:useBean id="reg" class="model.Register" >
<jsp:setProperty name="reg" property="*" ></jsp:setProperty>    
</jsp:useBean>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registration</title>
    </head>
    <body>
     
    <%
       // save data in database;
        try
        {        
        String user = reg.getUsert();
        String userid = reg.getUserid();
        String name = reg.getName();
        String mob = reg.getMob();
        String pass= reg.getPass();
        String date = reg.getDate();
        String ap_num = reg.getAp_num();
        String gender = reg.getGender();
        if(user.equals("admin"))
        {
          user = "admin_data";
        }
        else
        {
         if(user.equals("maint"))
        {
          user = "maintainer_data";
        }
         else
         {
           if(user.equals("resid"))
           {
             user="resident_data";
           }
         }
        }

        if(Save_Resgistration_Data.chkEmailUnique(user, userid))
        {
        response.sendRedirect("../error_page/email-error.jsp");
        }
        else
        {
            if(Save_Resgistration_Data.chkMobUnique(user, mob))
                {
                    response.sendRedirect("../error_page/mobile-error.jsp");
                }
                else
                    { 
                        if(Save_Resgistration_Data.chkAp_NumUnique(user, ap_num) && user.equals("resident_data"))
                            {
                             response.sendRedirect("../error_page/appartment-error.jsp");
        
                            }
                           else
                            {
                                 if(user.equals("admin_data"))
                                 {
                                    String code = reg.getAp_num();
                                    if(!code.equals("2014"))
                                    {
                                      response.sendRedirect("../error_page/security-error.jsp");
                                    }
                                    else
                                    {
                                    Save_Resgistration_Data.addUser(user, userid, name, mob, pass, date, ap_num, gender);
                                    response.sendRedirect("reg-done.jsp");
                                    }     
                                 }   
                                 else
                                 {
                                        if(user.equals("maintainer_data"))
                                       {
                                          String code1 = reg.getAp_num() ;
                                          
                                          if(!code1.equals("2013"))
                                          {
                                           response.sendRedirect("../error_page/security-error.jsp");
                                          }
                                          else
                                          {
                                          Save_Resgistration_Data.addUser(user, userid, name, mob, pass, date, ap_num, gender);
                                          response.sendRedirect("reg-done.jsp");
                                          }    
                                        } 
                                        else
                                         {
                                              Save_Resgistration_Data.addUser(user, userid, name, mob, pass, date, ap_num, gender);
                                              response.sendRedirect("reg-done.jsp");
                                        }
                                        }    
                                    }
                                 }
                             }
                     }
        
        catch(NullPointerException ex)
        {
          response.sendRedirect("../error_page/illegal-registration-access.jsp");
        }
        %> 
   </body>
</html>
