<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="data.Banco" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Menu Page</title>
</head>
<body>
    <h1>MENU</h1>
    
    <%
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        out.println("LOGIN = " + login);
        out.println("<br>");
        out.println("SENHA = " + senha);
        out.println("<br><br>");
        
        Banco b = new Banco();
        String nomeCompleto = b.getUsuario(login);
        out.println("NOME COMPLETO = " + nomeCompleto);
        
        String senhaBanco = b.getSenha(login);
        
        if (senha.equals(senhaBanco)) {
            out.println("<h1><a href='consultar.jsp'>CONSULTAR LIVRO</a></h1>");
            out.println("<h1><a href='cadastrar.jsp'>CADASTRAR LIVRO</a></h1>");
            out.println("<h1><a href='atualizar.jsp'>ATUALIZAR LIVRO</a></h1>");
            out.println("<h1><a href='deletar.jsp'>DELETAR LIVRO</a></h1>");
        } else {
            out.println("<h1>USUÁRIO OU SENHA INCORRETOS</h1>");
        }
    %>
</body>
</html>