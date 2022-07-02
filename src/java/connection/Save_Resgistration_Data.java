/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Vector;
/**
 *
 * @author sachin
 */
public class Save_Resgistration_Data 
{
 
    private static Connection conn ;
    
    public static boolean chkEmailUnique(String user , String userid)throws ClassNotFoundException , SQLException
    {
        boolean error = false;
        conn = connection.ConnectioSQL.initMysql(); 
       String sqlQuery = "SELECT userid FROM " +user;
               
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery(sqlQuery);
        while (rs.next()) 
        {
            if(userid.equals(rs.getString(1)))
            {
              error = true;
              break;
            }    
        }
         rs.close();
        conn.close();
        return error;
        
    }
    
    public static boolean chkMobUnique(String user , String mob)throws ClassNotFoundException , SQLException
    {
        boolean error = false;
        conn = connection.ConnectioSQL.initMysql(); 
       String sqlQuery = "SELECT mob FROM " +user;
               
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery(sqlQuery);
        while (rs.next()) 
        {
            if(mob.equals(rs.getString(1)))
            {
              error = true;
              break;
            }    
        }
         rs.close();
        conn.close();
        return error;
        
    }
    
    public static boolean chkAp_NumUnique(String user , String ap_num)throws ClassNotFoundException , SQLException
    {
        boolean error = false;
        conn = connection.ConnectioSQL.initMysql(); 
       String sqlQuery = "SELECT ap_num FROM " +user;
               
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery(sqlQuery);
        while (rs.next()) 
        {
            if(ap_num.equals(rs.getString(1)))
            {
              error = true;
              break;
            }    
        }
         rs.close();
        conn.close();
        return error;
        
    }
    public static void addUser(String user , String userid , String name ,String mob , String pass,String date,String ap_num,String gender) throws ClassNotFoundException,SQLException
    {
       
        StringBuilder sdate = new StringBuilder(date);
        String mm = sdate.substring(0, 2);
        String dd = sdate.substring(3, 5);
        String yy = sdate.substring(6, 10);
        
        date = yy+"-"+mm+"-"+dd;
        conn = connection.ConnectioSQL.initMysql(); 
       
        PreparedStatement ps = conn.prepareStatement("INSERT INTO "+user+"(userid,name,mob,pass,date,ap_num,gender) values(?,?,?,?,?,?,?)");
       
       ps.setString(1,userid);
       ps.setString(2,name);
       ps.setString(3,mob);
       ps.setString(4,pass);
       ps.setString(5,date);
       ps.setString(6, ap_num);
       ps.setString(7,gender);
       ps.execute();
       ps.close();
       conn.close();
       
    }

    
}
