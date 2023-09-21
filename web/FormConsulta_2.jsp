<%-- 
    Document   : FormConsulta_1
    Created on : 17-ago-2012, 8:01:25
    Author     : REDP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.io.PrintStream"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <link rel="stylesheet" href="color.css">

        <title>JSP Page</title>
    </head>
    <body>
        
            <table class="">
                <tr><td> Nombre</td><td><input type="text" name="nombre"></td></tr>
                <tr><td colspan="2"><input class="btn btn-outline-danger" type="submit" name="consultar" value="Consultar"></td>
                    
                   
            </table>
                             <td>  <form action="PageChusma.jsp">
                                        <button name="Select" class="btn btn-outline-info" type="submit" >Regresar</button>
                                    </form>
            <%
       
            if (request.getParameter("consultar")!=null)
             {
                 String nombre =request.getParameter("nombre");
                 Logica.Prueba obj= new Logica.Prueba();
                 ResultSet ds=obj.Consultar(nombre);
            %>

            <table width="100%" border="2"  class="table table-dark table-striped">
                <tr>
                    <td><b>Nombre</td> <td><b>Direccion</td> <td><b>Telefono</td>

                    <% 
                                while(ds.next()) 
                                 {
                    %><tr><td>
                        <%  out.write(" "+ds.getString("nombre"));%></td>
                    <td><%
                 out.write(" "+ds.getString("direccion"));%></td>
                    <td><%
                 out.write(" "+ds.getString("telefono"));%></td></tr> <tr>                                             
                        <%
                    }
                }         
                        %>
   
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        </form>
    </body>
</html>
