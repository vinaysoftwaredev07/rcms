/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package userdata;

import connection.ConnectioSQL;
/**
 *
 * @author hp
 */
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class Register {
    
    public void dataEntry() throws ClassNotFoundException, SQLException{
        
        ConnectioSQL connect = new ConnectioSQL();
        connect.initMysql(); 
        PreparedStatement ps = connect.initMysql().prepareStatement("INSERT INTO rcms()"+"value(?,?,?,?,?,?,?)");
        
    }
    
}
