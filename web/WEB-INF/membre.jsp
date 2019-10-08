<%-- 
    Document   : membre
    Created on : 8 oct. 2019, 16:51:29
    Author     : stagiaire
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <link rel="stylesheet" href="stylejo.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">

        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"></script>
    </head>
    <body>
        <%@include file="menu.jsp"%>
        <h1>Liste des users</h1>
        
        <table class="table">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Mail</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listemembre}" var="m">
                    <tr>
                        <th scope="row">${m.id}</th>
                        <td>${m.nom}</td>
                        <td>${m.prenom}</td>
                        <td>${m.mail}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>