<%-- 
    Document   : cadastrar
    Created on : 31 de out. de 2024, 09:09:10
    Author     : 20221148060007
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="data.Banco" %>
<%@ page import="model.Livro" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Page</title>
    </head>
    <body>
        
        <%
            String id = request.getParameter("id");
            String titulo = request.getParameter("titulo");
            String autor = request.getParameter("autor");
            String edicao = request.getParameter("edicao");
            String editora = request.getParameter("editora");
            String ano = request.getParameter("ano");
            String codigo = request.getParameter("codigo");
            String exemplares = request.getParameter("exemplares");
            
            if(id == null) {
        %>
        
        <h1>Cadastrar Livro</h1>
        
        <form action="cadastrar.jsp" method="POST" border="1">
            ID          <input type="text" name="id"><br>
            TITULO      <input type="text" name="titulo"><br>
            AUTOR       <input type="text" name="autor"><br>
            EDICAO      <input type="text" name="edicao"><br>
            EDITORA     <input type="text" name="editora"><br>
            ANO         <input type="text" name="ano"><br>
            CODIGO      <input type="text" name="codigo"><br>
            EXEMPLARES  <input type="text" name="exemplares"><br>
            <input type="submit" value="ENVIAR">
        </form>
        
        <%
         
            }else{
            
            Banco b = new Banco();
            
            b.cadastrarLivro(id, titulo, autor, edicao, editora, ano, codigo, exemplares);

            }

        %>
        
    </body>
</html>
