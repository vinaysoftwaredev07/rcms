/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author sachin
 */
public class LogIn 
{
    
     private static Connection conn ;
   
      public static String findUser(String user ,String userid, String password) throws ClassNotFoundException , SQLException {
    
        
          conn = ConnectioSQL.initMysql();
          String isExists = "N0";

        String sqlQuery = "SELECT name FROM "+user
                + " WHERE userid='" + userid + "'" + "&&" + "pass='" + password + "'" + ";";
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery(sqlQuery);
        String name = "" ;
        while(rs.next())
        {
        name = rs.getString(1);
        }
        if(!name.equals(""))
        {
           isExists = "YES";
        }
        rs.close();
        conn.close();
        return isExists;
    }

   
}
