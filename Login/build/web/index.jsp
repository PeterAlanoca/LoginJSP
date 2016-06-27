<%-- 
    Document   : menu
    Created on : 06-jun-2016, 0:19:43
    Author     : Peter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Iniciar session</title>
</head>

<body>
    
    <%        
        if(session.getAttribute("usuario") != null && !session.getAttribute("usuario").equals("")){
            response.sendRedirect("menu.jsp");
        }       
    %>
    <center>
    <form  method="post" action="Login"> 
        <table border="0" >
            <thead>
                <tr>
                    <th>Acceder</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <input type="text" id="username" name="username" placeholder="Ingrese usuario" class="form-control" value="" aria-describedby="sizing-addon3">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" id="password" name="password" placeholder="Ingrese contraseña" class="form-control" value="">
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <button id="btn-registro" type="submit" name="ingresar" value="Registrar" class="btn btn-info btn-sm btn-block" data-toggle="modal" data-target=".alerta">
                            Ingresar
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>    
    </form> 
    </center>

</body>
</html>     

