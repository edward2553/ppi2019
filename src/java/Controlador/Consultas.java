/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
 
/**
 *
 * @author Rxnan
 */
public class Consultas extends Conexion {

    public boolean inicio_sesion(String usuario, String contraseña) {
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String consulta = "select * from usuarios where usu_usuario = ? and usu_contrasena = ?";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, contraseña);
            rs = pst.executeQuery();

            if (rs.absolute(1)) {
                return true; 

            }
        } catch (Exception e) {
            System.err.println("Erro" + e);
        } finally {
            try {
            } catch (Exception e) {
                System.err.println("Erro" + e);
            }

        }

        return false;
    }
    
     public boolean registrarse(String usuario, String contrasena) {

        PreparedStatement pst = null;

        try {
            String consulta = "insert into usuarios (usu_usuario, usu_contrasena) values (?, ?)";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, contrasena);

           
            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (Exception e) {
            System.err.println("Error" + e);
        } 

        return false;
    }
    
    
    
}
