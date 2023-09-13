/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

/**
 *
 * @author REDP
 */
import java.sql.*;
import javax.swing.JOptionPane;
public class Conx {
   String sDriver = "com.mysql.jdbc.Driver";
   String sURL = "jdbc:mysql://localhost:3306/crud"; 
   PreparedStatement stmt;
   Statement scSQL;
   ResultSet Datos;
   Connection Conn;
   String _Cadena;
   String Usurio = "root";
   String Contra = "";
   Boolean Resultado = false;
   
   public void SetSentencia(String sentencia)
   {
     _Cadena = sentencia;  
   }
   
   public Boolean EjecutarSQL()
   {
       try
       {                     
          Class.forName(sDriver).newInstance();        
          Conn = DriverManager.getConnection(sURL,Usurio,Contra);
          stmt = Conn.prepareStatement(_Cadena);
          stmt.executeUpdate();
          Resultado = true;
       }
       catch(ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e)
       {
          Resultado = false;
       }
   return Resultado;
   }
   
   public ResultSet ConsultarSQL()
   {
       try
       {         
          Class.forName(sDriver).newInstance();
          Conn = DriverManager.getConnection(sURL,Usurio ,Contra);
          scSQL = Conn.createStatement();
          Datos = scSQL.executeQuery(_Cadena);  
         }
       catch(ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e)
       {
          Datos = null;
       }
   return Datos; 
   }
}
