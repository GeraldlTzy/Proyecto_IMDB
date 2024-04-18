package LogicClasses;

import Connect.ConnectDB;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author kakas
 */
public class Person {
    
    public static boolean checkRegister(String username, int phoneNumber, String email)throws SQLException {
        
        Connection con= ConnectDB.getConnection();
        CallableStatement stmt = con.prepareCall("{existsUsername(?)}");
        stmt.registerOutParameter(2, Types.VARCHAR);
        stmt.setString(1, username);
        stmt.execute();
        ResultSet rs1 = (ResultSet) stmt.getObject(2);
        
        CallableStatement stmt2 = con.prepareCall("{existsEmail(?)}");
        stmt2.registerOutParameter(2, Types.VARCHAR);
        stmt2.setString(1, email);
        stmt2.execute();
        ResultSet rs2 = (ResultSet) stmt2.getObject(2);
        //If the username or the email already exists, returns false
        if (rs1.getInt("usernamesCount")>0 && rs2.getInt("emailCount")>0) {
            return false;
        } else 
        return true;
    }
    
    public static void insertAdmin(int sex, String firstName, String secondName,
            String firstSurname, String secondSurname, String birthdate, 
            String username, int identification, int phoneNumber, 
            String email, String password, int typeOfID) throws SQLException {
        
        Connection conn = ConnectDB.getConnection();
        
        CallableStatement stmt = conn.prepareCall("{ call pkgAdmin.insertAdmin(?,?,?,?,?,TO_DATE(?,'DD/MM/YYYY'),?,?,?,?,?,?)}");
        stmt.setInt(1, sex);
        stmt.setString(2, firstName);
        stmt.setString(3, secondName);
        stmt.setString(4, firstSurname);
        stmt.setString(5, secondSurname);
        stmt.setString(6, birthdate);
        stmt.setString(7, username);
        stmt.setInt(8, identification);
        stmt.setInt(9, phoneNumber);
        stmt.setString(10, email);
        stmt.setString(11, password);
        stmt.setInt(12, typeOfID);
        stmt.execute();
    }
    
    public static ArrayList<String> getUserInfo() throws SQLException{
        Connection conn = ConnectDB.getConnection();
        CallableStatement sql = conn.prepareCall("{call pkgEnd_user.getInfo(?)}");
        sql.registerOutParameter(1, OracleTypes.REF_CURSOR);
        sql.execute();
        
        ResultSet rs = (ResultSet) sql.getObject(1);
        ArrayList<String> userInfo = new ArrayList<>();
        
        userInfo.add(rs.getString("NombreColumna"));
        userInfo.add(Integer.toString(rs.getInt("idUser")));
        userInfo.add("Hola");
        
        return userInfo;
    }
    public static ArrayList<String> validUser(String username, String password) throws SQLException {
        Connection conn = ConnectDB.getConnection();
        CallableStatement sql = conn.prepareCall("{? = call pkgBasic.getSystemUserInfo(?, ?)}");
        
        sql.registerOutParameter(1, OracleTypes.REF_CURSOR);
        sql.setString(2, username);
        sql.setString(3, password);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        //for (int i = 0; i < 5; i++){
        ArrayList<String> userInfo = new ArrayList();
        //}
        while (rs.next()){
            if (rs.getInt(1) != 2) {
                return null;
            }
            System.out.println("Valor " + 1 + ": " + rs.getString(1));
            System.out.println("Valor " + 1 + ": " + rs.getString(2));
            System.out.println("Valor " + 1 + ": " + rs.getString(3));
            
            userInfo.add(rs.getString(1));
            userInfo.add(rs.getString(2));
        }
        
        
        //return (Integer) sql.getObject(1);
        return userInfo;
    }
}
