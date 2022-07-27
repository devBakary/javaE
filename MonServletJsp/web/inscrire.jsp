<%-- 
    Document   : inscrire
    Created on : 22 juil. 2022, 14:08:51
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
        <h1 style="text-align: center;">Formulaire d'inscription ici!</h1>
         <h2 style="text-align: center; color: red;"><% if(request.getAttribute("err")!=null){                         %> 
           <small class="error"><% out.println(request.getAttribute("err")); %></small>     
           <%   }%></h2>
        <div class="conteneur">
             
             
           
            <form action="Monservlet2" method="post">
            <table>
                <tr>
                    <td>Nom</td>
                    <td><input type="text" name="nom" placeholder="Saisissez votre nom" required></td>
                </tr>
                
                 <tr>
                    <td>Prenom</td>
                    <td><input type="text" name="prenom" placeholder="Saisissez votre prenom" required></td>
                </tr>
                
                 <tr>
                    <td>Pseudo</td>
                    <td><input type="text" name="pseudo" placeholder="Saisissez votre pseudo name" required></td>
                </tr>
                
                 <tr>
                    <td>Email</td>
                    <td><input type="mail" name="email" placeholder="exemple@gmail.com" required></td>
                </tr>
                
                 <tr>
                    <td>Mot de passe</td>
                    <td><input type="password" name="psw" required></td>
                </tr>
                
                 <tr>
                    <td>Confirmation mot de passe</td>
                    <td><input type="password" name="psw2" required></td>
                </tr>  <br>              
               
            </table>
            
            <input type="submit" name="Envoyer" value="Envoyer">
         
        </form>
            
     </div>
        
    </body>
    <style>
        .conteneur{
            border: 1px solid black;
            width: 800px;
            height: 400px;
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


