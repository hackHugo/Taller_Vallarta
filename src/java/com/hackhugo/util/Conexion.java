/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hackhugo.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author hackhugo
 */
public class Conexion {

    public static Connection getConexion() {
        try {
            DriverManager.registerDriver(new org.gjt.mm.mysql.Driver());
            Connection con = DriverManager.getConnection("jdbc:mysql://192.168.10.10/acuario", "homestead", "secret");
            return con;
        } catch (Exception e) {
            System.out.println("no hay conexion"+e.getMessage());
            return null;
        }

    }

    public static void getClose(Connection con) {
        try {
            con.close();
        } catch (Exception ex) {
        }
    }
}
