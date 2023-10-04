<%-- 
    Document   : index
    Created on : 16-ago-2012, 7:02:56
    Author     : REDP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="color.css">

        <title>CRUD</title>
    </head>
    <body style="background-color:#E5E8E8">

    <div id="container">

        <div id="header"><h1 align="center"  style="color:e"> CRUD </h1></div>
        <center>
     <div id="wrapper">
            <div ><div>
                    <div class="container" >
                        <table border=""  class="">
                            
                                <td>  <form action="FormIngresar.jsp">
                                        <button name="Select" class="btn btn-outline-danger" type="submit" >INGRESAR</button>
                                    </form>
                                </td>
                         
                                         <td>  
                                            <form action="FormActualizar.jsp">
                                        <button name="Select" class="btn btn-outline-primary" type="submit" >ACTUALIZAR</button>
                                    </form>
                                </td>
                                
                                                  <td> 
                                              <form action="FormEliminar.jsp">
                                        <button name="Select" class="btn btn-outline-dark" type="submit" >ELIMINAR</button>
                                    </form>
                                </td>
                   </table>
                    </div>
                </div>
            </div>
 </table >
            <%
               
             
                 Logica.Prueba obj= new Logica.Prueba();
                 ResultSet ds=obj.ConsultarTodos();
            %>

            <table>
                <tr>
            
                    <td><b>Nombre</td> <td><b>Direccion</td> <td><b>Telefono</td><td>

                        <% 
                                    while(ds.next()) 
                                     {
                        %><tr><td>
                        <%  out.write(" "+ds.getString("nombre"));%></td>
                    <td><%
                 out.write(" "+ds.getString("direccion"));%></td>
                    <td><%
                 out.write(" "+ds.getString("telefono"));%></td>
                    <td style="width: 10px; height: 10px;">
                        <form action="FormActualizar.jsp">
                            <button name="Select" class="btn btn-outline-success" type="submit" >Editar</button>
                        </form>
                    </td>
                    </td>
                    <td style="width: 10px; height: 10px;">
                        <form action="">
                            
                           
<button onclick="mostrarConfirmacion('<%out.write(" "+ds.getString("nombre"));%>')" class="btn btn-outline-dark" type="submit">ELIMINAR</button>

             </form>
                    </td>
               
                    <%
                }   
                     %>
            </table>
            
            <script>
function mostrarConfirmacion(mensaje) {
    var resultado = confirm("¿Estás seguro de que deseas " + mensaje + "?");

    if (resultado === true) {
        alert("Has seleccionado Aceptar.");
    } else {
        alert("Has seleccionado Cancelar.");
    };
    
      
}
</script>

           

                               <form action="login.jsp">
                    <button name="Select" class="btn btn-outline-danger" type="submit" >Cerrar sesion</button>
         </form>
            </center>
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

                </body>
                </html>
