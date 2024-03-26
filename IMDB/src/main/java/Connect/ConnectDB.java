/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Connect;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kakas
 */
public class ConnectDB {
    public static void insertNationality(String name){
        try {
            String host = "jdbc:oracle:thin:@localhost:1521:BD1GERALD";
            String uName = "su";
            String uPass = "su";
            
            Connection con=DriverManager.getConnection(host, uName, uPass);
            CallableStatement stmt = con.prepareCall("{ call insertNationality(?)}");
            stmt.setString(1, name);
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
