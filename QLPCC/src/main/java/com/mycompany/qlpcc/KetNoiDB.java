/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.qlpcc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class KetNoiDB {
    public static Connection KetNoi(){
        Connection ketnoi = null;
        String uRL = "jdbc:sqlserver://LAPTOP-17FFLB61:1433;databaseName=nckh;encrypt=true;trustServerCertificate=true";
        String userName = "sa";
        String password = "12345";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            ketnoi = DriverManager.getConnection(uRL, userName, password);
            System.out.println("Ket noi thanh cong");
            
            
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("Ket noi that bai");
        }
        return ketnoi;
    }
    
    public static void main(String[] args) {
        KetNoi();
    }
}
