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
public class GetData 
{
        private static Connection conn;

    public static String getName(String user , String email) throws ClassNotFoundException, SQLException {

        conn = ConnectioSQL.initMysql();
        String sqlQuery = "SELECT name FROM "+user+" WHERE userid=" + "'" + email + "'";
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery(sqlQuery);
        String name = "";
        while (rs.next()) {
            name = rs.getString(1);
        }
         rs.close();
        conn.close();
        return name;
    }

    public static String getAppNum(String user , String email) throws ClassNotFoundException, SQLException {

        conn = ConnectioSQL.initMysql();
        String sqlQuery = "SELECT ap_num FROM "+user+" WHERE userid=" + "'" + email + "'";
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery(sqlQuery);
        String name = "";
        while (rs.next()) {
            name = rs.getString(1);
        }
         rs.close();
        conn.close();
        return name;
    }

    public static String getMob(String user , String email) throws ClassNotFoundException, SQLException {

        conn = ConnectioSQL.initMysql();
        String sqlQuery = "SELECT mob FROM "+user+" WHERE userid=" + "'" + email + "'";
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery(sqlQuery);
        String name = "";
        while (rs.next()) {
            name = rs.getString(1);
        }
         rs.close();
        conn.close();
        return name;
    }

    
}
