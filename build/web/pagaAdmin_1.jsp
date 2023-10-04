<%-- 
    Document   : index
    Created on : 16-ago-2012, 7:02:56
    Author     : REDP
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Página JSP</title>
</head>
<body>

<%! // Función JSP que utiliza un parámetro

   // Función que recibe un valor como parámetro
   public String obtenerMensaje(String valor) {
      return "Este es el valor recibido desde JavaScript: " + valor;
   }

%>

<h1>Página JSP</h1>

<p><%= obtenerMensaje() %></p>

</body>
</html>