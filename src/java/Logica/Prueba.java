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
public class Prueba extends Conexion.Conx
{
    
    public Boolean ingresarprueba(String nombre, String Apellido, int Telefono)
    {        
        String Consulta = "Insert into personas(nombre,direccion,Telefono) values ('"+nombre+"','"+Apellido+"',"+Telefono+")";
        SetSentencia(Consulta);
        return  EjecutarSQL();
    }
    
    public ResultSet ConsultarTodos()
    {
        String Consulta = "select * from personas";
        SetSentencia(Consulta);
        System.out.println(Consulta);
        return ConsultarSQL();     
    }
    
     public ResultSet Consultar(String nombre)
    {
        String Consulta = "select * from personas where nombre='"+nombre+"'";
        SetSentencia(Consulta);
        System.out.println(Consulta);
        return ConsultarSQL();     
    }
    
    public Boolean Actualizar(String nombre,int telefono )
    {
        String Consulta = "Update personas set telefono='"+telefono+"' where nombre='"+nombre+"'";
        SetSentencia(Consulta);
        return  EjecutarSQL();
    }
    
    public Boolean Eliminar(String nombre)
    {
        String Consulta = "delete from personas where nombre='"+nombre+"'";
        SetSentencia(Consulta);
        return  EjecutarSQL();
    }
    
}
