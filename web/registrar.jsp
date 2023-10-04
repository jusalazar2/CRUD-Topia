<%-- 
    Document   : registrar
    Created on : 18/09/2023, 10:45:42 p. m.
    Author     : juan-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="style.css" type="text/css"/>

<div class="container h-80">
    <div class="row align-items-center h-100">
        <div class="col-3 mx-auto">
            <div class="text-center">
                <img id="profile-img" class="rounded-circle profile-img-card" src="https://static.vecteezy.com/system/resources/previews/014/002/257/non_2x/stationery-store-logo-design-template-free-vector.jpg" />
                <p id="profile-name" class="profile-name-card"></p>
                <form  class="form-signin">

                     <input type="text" name="nombre" id="inputNombre" class="form-control form-group" placeholder="nombre" required autofocus>
                    <input type="text" name="correo" id="inputPassword" class="form-control form-group" placeholder="correo" required autofocus>
                    <input type="password" name="password" id="inputPassword" class="form-control form-group" placeholder="password" required autofocus>
                    <button name="login" class="btn btn-lg btn-primary btn-block btn-signin" type="submit" >Registrarme</button>

                </form>
                   <%if (request.getParameter("login")!=null)
        {
            String nombre =request.getParameter("nombre");
            String correo =request.getParameter("correo");
            String password =request.getParameter("password");
            Logica.login obj = new Logica.login();
            boolean pr = false;
            pr = obj.ingresarlogin(nombre, correo, password);
            if( pr=true)
            {%>
                <div class="marginTable"  data-count="5">
            Registro exitoso
        </div>
            <%}
            else
            {%>
                 <div class="marginTable"  data-count="5">
            error
        </div>
            <%}
        }
        %>
                <form action="login.jsp">
                            <button name="Select" class="btn btn-outline-success" type="submit" >Iniciar sesion</button>
                        </form>
                <!-- 
</html>
                       
