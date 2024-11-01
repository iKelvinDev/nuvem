<%-- 
    Document   : deletar
    Created on : 31 de out. de 2024, 10:09:30
    Author     : 20221148060007
--%>

<%@page import="data.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletar Page</title>
    </head>
    <body>
        <%
            String titulo = request.getParameter("titulo");
            
            if(titulo == null) {
        %>
        
        <form action="deletar.jsp" method="POST" border="1">
            TITULO <input type="text" name="titulo"><br>
            <input type="submit" value="DELETAR">
        </form>
        
        <%
            
        }else{

            Banco b = new Banco();
            b.deletarLivro(titulo);

        %>
        
        <H1> LIVRO DELETADO OM SUCESSO</h1>
        
        <%
        }
        %>
    </body>
</html>
