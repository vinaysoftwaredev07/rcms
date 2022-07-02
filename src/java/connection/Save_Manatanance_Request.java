/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;

/**
 *
 * @author sachin
 */
public class Save_Manatanance_Request 
{
     private static Connection conn ;

      public static void saveRequest(String user , String name , String userid ,String mob , String ap_num,String problem) throws ClassNotFoundException,SQLException
    {
       
         Calendar now = Calendar.getInstance();
        String date = now.get(Calendar.YEAR)+"-"+(now.get(Calendar.MONTH)+1)+"-"+now.get(Calendar.DATE);
       conn = connection.ConnectioSQL.initMysql(); 
       
        PreparedStatement ps = conn.prepareStatement("INSERT INTO "+user+"(name,userid,mob,ap_num,problem,date) values(?,?,?,?,?,?)");
       
       ps.setString(1,name);
       ps.setString(2,userid);
       ps.setString(3,mob);
       ps.setString(4,ap_num);
       ps.setString(5,problem);
       ps.setString(6, date);
       ps.execute();
       ps.close();
       conn.close();
       
    }

}
