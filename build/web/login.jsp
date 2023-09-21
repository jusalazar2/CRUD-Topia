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
                <img id="profile-img" class="rounded-circle profile-img-card" src="https://i.imgur.com/6b6psnA.png" />
                <p id="profile-name" class="profile-name-card"></p>
                <form  class="form-signin">

                    <input type="text" name="correo" id="inputPassword" class="form-control form-group" placeholder="correo" required autofocus>
                    <input type="password" name="password" id="inputPassword" class="form-control form-group" placeholder="password" required autofocus>
                    <button name="login" class="btn btn-lg btn-primary btn-block btn-signin" type="submit" >ENTRAR</button>
                        </form>
                </form>
                <form action="registrar.jsp">
                            <button name="Select" class="btn btn-outline-success" type="submit" >Registrarme</button>
                        </form><!-- /form -->
                <%
       
                   if (request.getParameter("login")!=null)
                    {
                        String correo =request.getParameter("correo");
                        String contra =request.getParameter("password");
                        Logica.login obj= new Logica.login();
                        ResultSet ds=obj.Consultar(correo,contra);
                        if (!ds.isBeforeFirst() ) {    %> 


                <div id="content" align="center">
                    <br>
                    Usuario y/u contraseña incorrectos
                </div>
                <%
                }

                else
{
                ds.beforeFirst();
                    ds.next();
                if (ds.getString("rool").equals("1"))
                    {                       
                    RequestDispatcher despachador= request.getRequestDispatcher("/pagaAdmin.jsp");
                    despachador.forward(request, response);
                    }
               else{
                    RequestDispatcher despachador= request.getRequestDispatcher("/PageChusma.jsp");
                    despachador.forward(request, response);
                  } 
}
           }

                %>
            </div>
        </div>
    </div>
</div>