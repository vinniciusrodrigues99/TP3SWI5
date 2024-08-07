<!--     Alisson de Sousa Vieira CB3020568 -->
<!--     Leonardo de Fontes Nunes CB3020567 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Gerenciador de livros</title>
    <style>
        .center {
            text-align: center;
        }
        .form-table {
            border: 1px solid #000;
            border-collapse: collapse;
            width: 50%;
            margin: auto;
        }
        .form-table th, .form-table td {
            border: 1px solid #000;
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="center">
        <h1>Gerenciador de livros</h1>
        <h2>
            <a href="./new">Adicionar novo livro</a>
            &nbsp;&nbsp;&nbsp;
            <a href="./list">Listar livros</a>
        </h2>
    </div>
    <div class="center">
        <form action="${book != null ? 'update' : 'insert'}" method="post">
            <table class="form-table">
                <caption>
                    <h2>${book != null ? 'Editar' : 'Adicionar'}</h2>
                </caption>
                <c:if test="${book != null}">
                    <input type="hidden" name="id" value="<c:out value='${book.id}' />" />
                </c:if>           
                <tr>
                    <th>Titulo:</th>
                    <td>
                        <input type="text" name="title" size="45" value="${book.title != null ? book.title : ''}" />
                    </td>
                </tr>
                <tr>
                    <th>Autor:</th>
                    <td>
                        <input type="text" name="author" size="45" value="${book.author != null ? book.author : ''}" />
                    </td>
                </tr>
                <tr>
                    <th>Preço:</th>
                    <td>
                        <input type="text" name="price" size="5" value="${book.price != null ? book.price : ''}" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="center">
                        <input type="submit" value="Salvar" />
                    </td>
                </tr>
            </table>
        </form>
    </div>   
</body>
</html>
