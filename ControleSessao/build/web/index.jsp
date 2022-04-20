<%-- 
    Document   : index
    Created on : 20 de abr. de 2022, 09:39:49
    Author     : User
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType='text/html' pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GustavoApp</title>
    </head>
    <body>
        <%@ include file="WEB-INF/jspf/header.jspf" %>
        <div>
            <center>
            <form method="post">
                <% if(error == null){ %>
                    <% if(authUserName == null){ %>
                        <input type="text" name="username" placeholder="Usuário"/><br>
                        <input type="password" name="password" placeholder="Senha"/> <br>
                        <input type="submit" name="login" value="LOGIN">
                    <% } %>
                <% } else { %>
                    <%= error%>
                    <a href=".">Tentar novamente</a>
                <% } %>
            </form>
            </center>
        </div>
        <%  if(authUserName != null){ 
                if (session.getAttribute("lista")== null){
                    ArrayList lista = (ArrayList) session.getAttribute("lista");
                    if(lista == null) {
                        lista = new ArrayList();
                        session.setAttribute("lista", lista);
                        for(int i=0; i <=5; i++){
                            lista.add(((int) (100*Math.random())));
                        } 
                    }
                }
                else{
                    ArrayList lista = (ArrayList) session.getAttribute("lista");
            %>
        <div >
            <h1 >Dica para seu jogo na loteria:</h1>
            <p >Faça sua sorte!</p>
                    <table >
                        <tr>
                            <% for (int i=0; i<=5; i++){ %>
                            <td> <%= i+1 %>º número: </td>
                            <% } %>
                        </tr>
                        <tr>
                            <% for (int i=0; i<=5; i++){ %>
                            <td> <%= lista.get(i) %> </td>
                            <% } %>
                        </tr>
                    </table>
                <% } %>
        <% } %>
            <hr >
        </div>
    <%@ include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
