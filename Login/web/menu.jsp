<%-- 
    Document   : menu
    Created on : 06-jun-2016, 0:19:43
    Author     : Peter
--%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hola</h1>
        <%
            if (session != null) {
                if (session.getAttribute("usuario") != null) {
                    String name = (String) session.getAttribute("usuario");
                    out.print("Hola, " + name + "  estas logueado");
		} else {
		response.sendRedirect("index.jsp");
		}
            }
	%>
        <a href="Logout">Salir</a>
    </body>
    
</html>
