/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hackhugo.Dao;

/**
 *
 * @author hackhugo
 */
import java.sql.*;
import java.util.*;
import com.hackhugo.model.tanque;
import com.hackhugo.util.Conexion;

public class TanqueDao {

    private Connection connection;

    public TanqueDao() {
        super();
        connection = Conexion.getConexion();
    }

    public void addTanque(tanque tanque) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO `acuario`.`tanque` (`Id_tanque`, `Nombre_tanque`, `Color`, `Volumen`) VALUES (?, ?, ?, ? )");
            // Parameters start with 1
            preparedStatement.setString(1, null);
            preparedStatement.setString(2, tanque.getNombre_tanque());
            preparedStatement.setString(3, tanque.getColor());
            preparedStatement.setDouble(4, tanque.getVolumen());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            System.out.println("error" + e.getMessage());
        }
    }

    public void updateTanque(tanque tanque) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE tanque SET Nombre_tanque=?, Color=?, Volumen=?"
                    + "WHERE Id_tanque=?");
            // Parameters start with 1
            preparedStatement.setString(1, tanque.getNombre_tanque());
            preparedStatement.setString(2, tanque.getColor());
            preparedStatement.setDouble(3, tanque.getVolumen());
            preparedStatement.setInt(4, tanque.getId_tanque());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<tanque> getAllTanque() {
        List<tanque> tanques = new ArrayList<tanque>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM tanque");
            while (rs.next()) {
                tanque objtanque = new tanque();
                objtanque.setId_tanque(rs.getInt("Id_tanque"));
                objtanque.setNombre_tanque(rs.getString("Nombre_tanque"));
                objtanque.setColor(rs.getString("Color"));
                objtanque.setVolumen(rs.getDouble("Volumen"));
                tanques.add(objtanque);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tanques;
    }

    public tanque getUserById(String userId) {
        tanque user = new tanque();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM `tanque` WHERE `Id_tanque`=?");
            preparedStatement.setString(1, userId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                user.setId_tanque(rs.getInt("Id_tanque"));
                user.setNombre_tanque(rs.getString("Nombre_tanque"));
                user.setColor(rs.getString("Color"));
                user.setVolumen(rs.getDouble("Volumen"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    public void deleteTanque(Integer tanqueid) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM tanque WHERE Id_tanque=?");
            // Parameters start with 1
            preparedStatement.setInt(1, tanqueid);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
