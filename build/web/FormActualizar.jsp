<%-- 
    Document   : FormActualizar
    Created on : 17-ago-2012, 11:34:59
    Author     : REDP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.JOptionPane"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <title>CRUD</title>
    </head>
    <form>
        <body>
            <table border="4" class="table table-dark table-striped">
                <tr><td> Nombre</td><td><input type="text" name="nombre"></td></tr>
                <tr><td> Telefono</td><td><input type="text" name="telefono"></td></tr>
                <tr><td colspan="2"><input type="submit" class="btn btn-primary" name="actualizar" value="Actualizar"></td>
                    <td><input type="submit" name="Query" value="inicio" onClick="window.open('index.jsp')"></td>
                    <td><input type="submit" name="Query" value="Buscar" onClick="window.open('FormConsulta_1.jsp')"></td>
                    <td><input type="submit" name="Query" value="Eliminar" onClick="window.open('FormEliminar.jsp')"></td>"></td>
            </table>    
            <%
            if(request.getParameter("actualizar")!=null)
                      {
                     String nombre =request.getParameter("nombre");
                     int telefono =Integer.parseInt(request.getParameter("telefono"));
                     Logica.Prueba obj = new Logica.Prueba();
                     boolean pr = false;
                     pr = obj.Actualizar(nombre, telefono);
                     if( pr=true)
                     {%>
            <div class="marginTable"  data-count="5">
                bien
            </div>
            <%}
            else
            {%>
            <div class="marginTable"  data-count="5">
                coño
            </div>
            <%}
        }
            %>     

            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        </body>
    </form>
</html>
