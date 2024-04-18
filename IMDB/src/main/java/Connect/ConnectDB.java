package Connect;

import java.io.FileInputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author kakas
 */
public class ConnectDB {
    
    public static void insertParticipant(int sex, String firstName, 
            String secondName, String firstSurname, String secondSurname,
            String birthdate, int country, String biography, int height,
            String trivia, String photoDirectory) {
        
    }
    
    /*public static String getUserName(){
        Connection conn = ConnectDB.getConnection();
        CallableStatement sql = conn.prepareCall("{? = call pkgEnd_user}");
        sql.registerOutParameter(1, OracleTypes.VARCHAR);
        sql.set
        //retorno:
        sql.getObject(1);
    }*/
    
    public static Connection getConnection(){
        try {
            String host = "jdbc:oracle:thin:@localhost:1521:BD1GERALD";
            String uName = "su";
            String uPass = "su";
            
            Connection con = DriverManager.getConnection(host, uName, uPass);
            return con;
        } catch (SQLException ex) {
            Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public static void insertUser(int sex, String firstName, String secondName,
            String firstSurname, String secondSurname, String birthdate, 
            String username, int identification, int phoneNumber, 
            String email, String password, int typeOfID, int nationality) {
        
        try {
            Connection con = getConnection();
            //CAMBIAR EL ATRIBUTO DE PHOTO
            CallableStatement stmt = con.prepareCall("{ call pkgEnd_user.insertUser(?,?,?,?,?,TO_DATE(?,'DD/MM/YYYY'), EMPTY_BLOB(),?,?,?,?,?,?,?)}");
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
            stmt.setInt(13, nationality);
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void insertAdmin(int sex, String firstName, String secondName,
            String firstSurname, String secondSurname, String birthdate, 
            String username, int identification, int phoneNumber, 
            String email, String password, int typeOfID) {
        
        try {
            String host = "jdbc:oracle:thin:@localhost:1521:Basedatos1";
            String uName = "su";
            String uPass = "su";
            
            Connection con=DriverManager.getConnection(host, uName, uPass);
            CallableStatement stmt = con.prepareCall("{ call pkgAdmin.insertAdmin(?,?,?,?,?,TO_DATE(?,'DD/MM/YYYY'),?,?,?,?,?,?)}");
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
        } catch (SQLException ex) {
            Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
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
    public static void insertImagen() {
        try {
            String host = "jdbc:oracle:thin:@localhost:1521:BD1GERALD";
            String uName = "su";
            String uPass = "su";
            
            Connection con=DriverManager.getConnection(host, uName, uPass);
            
            FileInputStream fis = new FileInputStream("C:\\Users\\kakas\\Pictures\\Scarlett_Johansson.jpg");
            byte[] image = new byte[fis.available()];
            fis.read(image);
            fis.close();
            String sql = "{ call insertImage(?, ?)}";
            CallableStatement stmt = con.prepareCall(sql);
            stmt.setInt(1, 1);
            stmt.setBytes(2, image);
            stmt.execute();
        } catch (Exception e) {
            Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, e);
        }
        
    }
}
