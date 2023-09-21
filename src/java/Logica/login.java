/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;
import java.sql.*;
/**
 *
 * @author REDP
 */
public class login extends Conexion.Conx
{
    
     public ResultSet Consultar(String nombre, String contra)
    {
        String Consulta = "select * from login where correo='"+nombre+"' and contraseña ='"+contra+"'";
        SetSentencia(Consulta);
        return ConsultarSQL();     
    }
     
     
    public Boolean ingresarlogin(String nombre, String correo, String password)
    {        
        String Consulta = "Insert into login(nombre,correo,contraseña,rool) values ('"+nombre+"','"+correo+"',"+password+",'2')";
        SetSentencia(Consulta);
        return  EjecutarSQL();
    }
    
}
