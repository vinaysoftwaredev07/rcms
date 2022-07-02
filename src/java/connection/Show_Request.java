/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author sachin
 */
public class Show_Request 
{
    public static  ArrayList<Integer> id  = new ArrayList<Integer>();
    public  static ArrayList<String> name  = new ArrayList<String>();
    public  static ArrayList<String> userid  = new ArrayList<String>();
    public static ArrayList<String> mob  = new ArrayList<String>();
    public static ArrayList<String> ap_num  = new ArrayList<String>();
    public  static ArrayList<String> problem  = new ArrayList<String>();
    public  static ArrayList<String> date  = new ArrayList<String>();

   private static Connection conn ;
   private static ResultSet rs ;
   private static Statement stm;

   // this method used to show requets in resident page
    public static void  showRequest(String requestType,String user)throws ClassNotFoundException , SQLException
    {
        
          conn = connection.ConnectioSQL.initMysql();
          stm  = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY);
          rs = stm.executeQuery("SELECT * FROM "+requestType+ " WHERE userid = '"+user+"' ORDER BY id DESC");
          
          while(rs.next())
         {
           id.add(rs.getInt(1));
           name.add(rs.getString(2));
           userid.add(rs.getString(3));
           mob.add(rs.getString(4));
           ap_num.add(rs.getString(5));                  
           problem.add(rs.getString(6));                  
           date.add(rs.getString(7));                  
           
         }
      
    
    }
   // this method used to show requets in maintener page
    
    public static void  showRequest(String requestType)throws ClassNotFoundException , SQLException
    {
        
          conn = connection.ConnectioSQL.initMysql();
          stm  = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY);
          rs = stm.executeQuery("SELECT * FROM "+requestType+" ORDER BY id DESC");
          
          while(rs.next())
         {
           id.add(rs.getInt(1));
           name.add(rs.getString(2));
           userid.add(rs.getString(3));
           mob.add(rs.getString(4));
           ap_num.add(rs.getString(5));                  
           problem.add(rs.getString(6));                  
           date.add(rs.getString(7));                  
           
         }
      
    
    }
    // show detail request data to maintener
     public static void  showRequestDetails(String requestType , String ids)throws ClassNotFoundException , SQLException
    {
           int i = Integer.parseInt(ids);
           
          conn = connection.ConnectioSQL.initMysql();
          stm  = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY);
          rs = stm.executeQuery("SELECT * FROM "+requestType+" WHERE id = "+i+" ORDER BY id DESC");
          
          while(rs.next())
         {
           id.add(rs.getInt(1));
           name.add(rs.getString(2));
           userid.add(rs.getString(3));
           mob.add(rs.getString(4));
           ap_num.add(rs.getString(5));                  
           problem.add(rs.getString(6));                  
           date.add(rs.getString(7));                  
           
         }
      
    
    }
}
