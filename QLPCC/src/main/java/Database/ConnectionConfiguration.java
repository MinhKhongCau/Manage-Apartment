/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author minhn
 */
public class ConnectionConfiguration {
    public static Connection getConnection() {
        Connection con = null;
        try {
            String url = "jdbc:sqlserver://LAPTOP-17FFLB61:1433;databaseName=nckh;encrypt=true;trustServerCertificate=true;";
            String username = "sa";
            
            String password = "12345";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(url,username,password);
            if (con != null) {
                System.out.println("Ket noi thanh cong");
            }
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        } catch (SQLException sQLException) {
            sQLException.printStackTrace();
        }
        return con;
    }
}
