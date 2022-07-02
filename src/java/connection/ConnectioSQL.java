package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hp
 */
public class ConnectioSQL {
 
  public static Connection conn ;    
    
   public static Connection initMysql() throws ClassNotFoundException, SQLException 
   {
       Class.forName("com.mysql.jdbc.Driver");
     String str = "jdbc:mysql://localhost:3306/rcms";
     conn = DriverManager.getConnection(str, "vinay", "123456");
      return conn;
   }
     
}
