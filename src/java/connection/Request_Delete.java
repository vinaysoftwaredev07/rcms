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
public class Request_Delete 
{
    
          private static Connection conn;

    public static void delRequest(String user,String id) throws ClassNotFoundException, SQLException {

        conn = ConnectioSQL.initMysql();
        String sqlQuery = "DELETE  FROM "+user+" WHERE id="+id+";";
        Statement stm = conn.createStatement();
        stm.executeUpdate(sqlQuery);
        stm.close();
        conn.close();
        
    }

    
}
