<%-- 
    Document   : about
    Created on : 20 de abr. de 2022, 09:41:16
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String matricula = "1290482012011";
   String nome = "Gustavo Ramos Guimaraes";%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="WEB-INF/jspf/header.jspf" %>
        <% if(authUserName == null){ %>
            <p style="color: red">Você não tem permissão para ver este conteúdo...</p>
        <% }else { %>
            <label for='name'>Nome: </label>
            <input type='text' id='name' size='50' value='<%= nome %>' disabled/>
            <label for='matricula'>Matrícula: </label>
            <input type='text' id='matricula' size='15' value='<%= matricula %>' disabled/><br><br>
        <% } %>
        <%@ include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
