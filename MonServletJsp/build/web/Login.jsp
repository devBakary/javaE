<%-- 
    Document   : Login
    Created on : 22 juil. 2022, 15:07:04
    Author     : bddiakite
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center;">Connectez-vous!</h1>
        
        <div class="conteneur">
            
            <form action="Monservlets" method="post">
            <table><br>
                <tr>
                    <td>Pseudo</td>
                    <td><input type="text" name="pseudo" required></td>
                </tr>
                
                <tr>
                    <td>Mot de passe</td>
                    <td><input type="password" name="psw" required></td>
                </tr>
                
            </table><br>
            
            <input type="submit" name="Envoyer" value="Connexion"><br>
        </form>
            
        </div>
    </body>
    <style>
    .conteneur{
            border: 1px solid black;
            width: 800px;
            height: 200px;
            margin-left: 20%;
            padding: 10px;
        }
        form{
            color : red;
            font-size: 18px;
        }
        input{
            width: 400px;
            height : 40px;
            font-size: 18px;
            margin-left: 30%;
        }
        
    </style>
</html>
