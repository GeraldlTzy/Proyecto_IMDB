/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package LogicClasses;

import Connect.ConnectDB;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author kakas
 */
public class Controller {
    private static Controller instance = null;
    private Connection conn;
    private Controller(){
        conn = ConnectDB.getConnection();
    }
    
    public static Controller getInstance() {
        if (instance == null) {
            instance = new Controller();
        }
        return instance;
    }
    
    
    public static ArrayList<String> validUser (String username, String password){
        try {
            return Person.validUser(username, password);
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public void insertNationality(String name) throws SQLException {
        CallableStatement sql;
        sql = conn.prepareCall("{call pkgBasic.insertNationality(?)}");
        sql.setString(1, name);
        sql.execute();
    }
     public void insertCountry(String name) throws SQLException {
        CallableStatement sql;
        sql = conn.prepareCall("{call pkgBasic.insertCountry(?)}");
        sql.setString(1, name);
        sql.execute();
    }
    public void insertCity(String name, Integer idCountry) throws SQLException {
        CallableStatement sql;
        sql = conn.prepareCall("{call pkgBasic.insertCity(?, ?)}");
        sql.setString(1, name);
        sql.setInt(2, idCountry);
        sql.execute();
    }
    public void insertTypeIdent(String name) throws SQLException {
        CallableStatement sql;
        sql = conn.prepareCall("{call pkgBasic.insertTypeIdent(?)}");
        sql.setString(1, name);
        sql.execute();
    }
    public void insertTypeParticipant(String name) throws SQLException {
        CallableStatement sql;
        sql = conn.prepareCall("{call pkgBasic.insertTypeParticipant(?)}");
        sql.setString(1, name);
        sql.execute();
    }
    public void insertTypeProduct(String name) throws SQLException {
        CallableStatement sql;
        sql = conn.prepareCall("{call pkgBasic.insertTypeProduct(?)}");
        sql.setString(1, name);
        sql.execute();
    }
    public void insertCatalog(String name) throws SQLException {
        CallableStatement sql;
        sql = conn.prepareCall("{call pkgBasic.insertCatalog(?)}");
        sql.setString(1, name);
        sql.execute();
    }
    public void insertPlatform(String name) throws SQLException {
        CallableStatement sql;
        sql = conn.prepareCall("{call pkgBasic.insertPlatform(?)}");
        sql.setString(1, name);
        sql.execute();
    }
    public TreeMap<Integer, String> getNationality(Integer id) throws SQLException {
        TreeMap<Integer, String> nationalities = new TreeMap<>();
        CallableStatement sql = conn.prepareCall("{? = call pkgBasic.getNationality(?)}");
        sql.registerOutParameter(1, OracleTypes.REF_CURSOR);
        if (id != null) sql.setInt(2, id);
        else sql.setNull(2, OracleTypes.NULL);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        
        while (rs.next()){
            nationalities.put(rs.getInt(1), rs.getString(2));
            System.out.println("Id: " + rs.getInt(1) + "Nombre: " + rs.getString(2));
        }
        return nationalities;
    }
    public ArrayList<Map<Integer, String>> getInfoRegisterParticipant (Integer id) throws SQLException {
        ArrayList<Map<Integer, String>> data = new ArrayList<>();
        TreeMap<Integer, String> nationalities = new TreeMap<>();
        LinkedHashMap<Integer, String> cities = new LinkedHashMap<>();
        
        CallableStatement sql = conn.prepareCall("{? = call pkgBasic.getInfoRegisterParticipant(?)}");
        sql.registerOutParameter(1, OracleTypes.REF_CURSOR);
        if (id != null) sql.setInt(2, id);
        else sql.setNull(2, OracleTypes.NULL);
        sql.execute();
        ResultSet rs = (ResultSet) sql.getObject(1);
        
        while (rs.next()){
            if (rs.getString(3).equals("Nationality"))
                nationalities.put(rs.getInt(1), rs.getString(2));
            else
                cities.put(rs.getInt(1), rs.getString(2));
            //System.out.println("Id: " + rs.getInt(1) + " Nombre: " + rs.getString(2));
        }
        data.add(nationalities);
        data.add(cities);
        return data;
    }
}
