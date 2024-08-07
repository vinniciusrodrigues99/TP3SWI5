<!--     Alisson de Sousa Vieira CB3020568 -->
<!--     Leonardo de Fontes Nunes CB3020567 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gerenciador de livros</title>
    <style>
        .center {
            text-align: center;
        }
        .table {
            margin: auto;
            border-collapse: collapse;
            width: 80%;
        }
        .table, .table th, .table td {
            border: 1px solid black;
        }
        .table th, .table td {
            padding: 10px;
        }
        .table caption {
            margin-bottom: 10px;
            font-size: 1.5em;
        }
        .actions a {
            margin-right: 10px;
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
            &nbsp;&nbsp;&nbsp;
            <a href="./creditos">Créditos</a>
        </h2>
    </div>
    <div class="center">
        <table class="table">
            <caption>Livros</caption>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Titulo</th>
                    <th>Autor</th>
                    <th>Preço</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="book" items="${listBook}">
                    <tr>
                        <td><c:out value="${book.id}" /></td>
                        <td><c:out value="${book.title}" /></td>
                        <td><c:out value="${book.author}" /></td>
                        <td><c:out value="${book.price}" /></td>
                        <td class="actions">
                            <a href="./edit?id=${book.id}">Editar</a>
                            <a href="./delete?id=${book.id}">Apagar</a>                     
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>   
</body>
</html>
