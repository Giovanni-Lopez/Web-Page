<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Ejemplo</title>
    </head>
    <body bgcolor = "#ffffcc">
        <% 
        if(request.getParameter("name") == null && request.getParameter("email") == null){        
        %>
    <center>
        <h2>User Into Request Form</h2>
        <form method="get" action="Ejemplo_2.jsp">
            <p>Nombre: <input type="text" name="name" size="26"</p>
            <p>Email: <input type="text" name="email" size="26"</p>
            <p><input type="submit" value="Process"</p>                                         
        </form>
    </center>
    <%
        }else{
    %>
    
    <%
    String name, email;
    %>
    
    <%
    name = request.getParameter("name");
    email  = request.getParameter("email");
    %>
    
    <p><b>Ha introducido la siguiente información</b></p>
    <p><b>Nombre: <%= name%> </b></p>
    <p><b>Email: <%= email%> </b></p>
    <% }%>
    </body>
</html>
