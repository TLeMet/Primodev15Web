<%-- 
    Document   : index
    Created on : 8 oct. 2019, 12:05:53
    Author     : TLeMet
--%>

<%@page import="fr.solutec.bean.Personne"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connexion</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <link rel="stylesheet" href="stylejo.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">

        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"></script>
    </head>
    <body>
        
        <div class="container text-center">
            <br>
        </div>
        <div class="container">
            <div class="row align-self-center">
                <div class="col-sm-4 text-center"></div>
                <div class="col-sm-4 text-center">
                    <h5>Connexion</h5>
                    <form action="accueil" method="POST">
                        <input type="email" name="co_login" placeholder="login" value="${param['co_login']}" class="form-control">
                        <input type="password" name="co_pw" placeholder="mot de passe" class="form-control">
                        <button type="submit" class="btn btn-primary btn-block" onclick="">Se Connecter</button>
                        <button type="submit" class="btn btn-primary btn-block" onclick="">S'Inscrire</button>
                    </form>
                    
                    <p>${msg}</p>
                    <img src="${img}" width="150px">
                </div>
            </div>
        </div>
        
    </body>
</html>
