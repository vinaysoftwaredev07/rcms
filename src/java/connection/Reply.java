/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author sachin
 */
public class Reply 
{

    private static Connection conn ;
    
    public static void addReply(String comment , String id , String by ,String to ) throws ClassNotFoundException , SQLException  {
       
          int i = Integer.parseInt(id);
         String bye = null;
         
             
        conn = connection.ConnectioSQL.initMysql(); 
        String table = "reply"+by;
        PreparedStatement ps = conn.prepareStatement("INSERT INTO "+table+"(`comment`,id,`by`,`to`) values(?,?,?,?)");
     
        if(by.equals("e"))
        {
          bye ="electrician";
        }
        else
        {
           if(by.equals("c"))
            {
             bye ="carpenter";
            }
          else
             {
               if(by.equals("p"))
                {
                  bye ="plumber";
                }
             }
        }
         
        ps.setString(1,comment);
        ps.setInt(2, i);
        ps.setString(3,bye);
        ps.setString(4,to);
        ps.execute();
        ps.close();
       conn.close();
       
    }

}
