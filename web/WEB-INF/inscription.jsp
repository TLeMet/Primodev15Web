<%-- 
    Document   : inscription
    Created on : 8 oct. 2019, 16:18:16
    Author     : Joel B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inscription </title>
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-pink.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet"
              href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
              integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <link rel="stylesheet" href="icons/css/material-icons.css">
        <link rel="stylesheet" href="css/style.css">
        <script defer src="https://code.getmdl.io/1.2.1/material.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js"
                integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U"
        crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js"
                integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9"
        crossorigin="anonymous"></script>


        <style>
            .graybox {
                background-color: #ddd;
            }

            .stellbluebox {
                background-color: steelblue;
            }

            .center {
                text-align: center;
                color: #ddd;
            }
        </style>
    </head>
    <body>
        <div class="container text-center">
            <h3></h3>           
        </div>
        <br>
        <div class="card" style="box-shadow: 0 5px 5px darkgray">
            <div class="card-header">
                <h3 class="text-center" style="color: #36C">
                    Page Connexion</h3>
            </div>
        </div>
        <br>

        <div class="text-center">
            <img  src="${img}" width="100px">
        </div>
        <br>
        <div class="col d-flex justify-content-center">
            <div class="card text-center" 
                 style="width: 20rem;
                 height: 26rem; box-shadow: 0 19px 38px 
                 rgba(0, 0, 0, 0.30)">

                <div class="card-header" 
                     style="background-color: turquoise;
                     color: white"> Inscription
                </div>
                <div class="card-body">
                    <br>
                    <form action="inscription" method="POST">
                        <div class="form-group">
                            
                            <input class="form-control text-center"
                                   name="nom" value="${param['nom']}"
                                   type="text" placeholder="nom" required="">
                           <!-- <i class="mdi mdi-face"></i> -->
                        </div>
                        <br>
                        <div class="form-group">
                            <input class="form-control text-center"
                                   name="prenom" value="${param['prenom']}"
                                   type="text" placeholder="prenom" required="">
                        </div>
                        <br>
                        <div class="form-group">
                            <input class="form-control text-center"
                                   name="login" value="${param['login']}"
                                   type="email" placeholder="login" required="">
                        </div>
                        <br>
                        <div class="form-group">
                            <input class="form-control text-center"
                                   name="mdp"
                                   type="password" placeholder="mot de passe" required="">
                        </div>
                        <br>
                        <button type="submit"
                                class="btn btn-primary"   >Inscription</button>
                        <button type="button" class="btn btn-link">Se connecter ?</button>

                    </form>

                    <p class="text-danger">${msg}</p>
                </div>

            </div>

        </div>
    </body>
</html>
