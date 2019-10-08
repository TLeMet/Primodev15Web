<%-- 
    Document   : home
    Created on : 8 oct. 2019, 12:24:33
    Author     : stagiaire
--%>

<%@page import="fr.solutec.bean.User"%>
<%@page import="fr.solutec.bean.Personne"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Salut ${person.nom}!</h1>
        
        <p>
            <%User pe = (User) request.getAttribute("person");
        out.println(pe.toString());%>
        </p>
        
        <p>${pe.nom}</p>
    </body>
</html>
