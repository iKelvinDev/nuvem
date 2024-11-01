<%-- 
    Document   : consultar
    Created on : 30 de out. de 2024, 08:01:06
    Author     : 20221148060007
--%>

<%@page import="model.Livro"%>
<%@page import="java.util.ArrayList"%>
<%@page import="data.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Page</title>
    </head>
    <body>
        
        <%
            
            String titulo = request.getParameter("titulo");
            
            if(titulo != null){
                Banco b = new Banco();
                
                ArrayList<Livro> livros = b.getLivrosByTitulo(titulo);
                
                for(Livro l: livros) {
                    out.print("TITULO     = " + l.getTitulo() + ", ");
                    out.print("AUTOR      = " + l.getAutor() + ", ");
                    out.print("EXEMPLARES = " + l.getExemplares() + "<BR>");
                    
                }
            }

        %>
        
        <h1>Consultar Livro</h1>
        
        <form action="consultar.jsp" method="POST" border="1">
            TITULO: <input type="text" name="titulo"><br>
            <input type="submit" value="CONSULTAR">
        </form>
        
    </body>
</html>
