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
 * @author system233
 */
public class View_Reply 
{
    
    public  static ArrayList<String> reply  = new ArrayList<String>();
    public  static ArrayList<String> by  = new ArrayList<String>();
   public  static ArrayList<String> id  = new ArrayList<String>();
  public  static ArrayList<String> to  = new ArrayList<String>();
  
   private static Connection conn ;
   private static ResultSet rs ;
   private static Statement stm;

   // this method used to show requets in resident page
    public static void  showReply(String ids , String user,String rqst)throws ClassNotFoundException , SQLException
    {
        
        int i = Integer.parseInt(ids);
          String table = null;
        if (rqst.equals("electrical")) {
            table = "replye";
        } else {
            if (rqst.equals("plumbing")) {
                table = "replyp";
            } else {
                if (rqst.equals("carpentry")) {
                    table = "replyc";
                }
            }
        }
          conn = connection.ConnectioSQL.initMysql();
          stm  = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY);
          rs = stm.executeQuery("SELECT * FROM "+table+ " WHERE 'to' = '"+user+"' "+" OR "+" id = "+i+" ;");
          
          while(rs.next())
         {
               reply.add(rs.getString(1));
               id.add(rs.getString(2));
               by.add(rs.getString(3));
               to.add(rs.getString(4));
         }
      
    
    }
  
}
