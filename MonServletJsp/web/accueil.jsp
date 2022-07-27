<%-- 
    Document   : accueil
    Created on : 22 juil. 2022, 15:21:49
    Author     : bddiakite
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="inscript.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bonjour   ${nom}</h1>
        
   <table>
          
            <th>
                    Nom
            </th>
            <th>
                    Prenom
            </th>
            <th>
                    Pseudo
            </th>
             <th>
                    Email
            </th>
            
             <% 
                List<user> users = (ArrayList<user>)session.getAttribute("liste");
                for(user user : users){
                    
                
                 %>   
            </tr>
                
               <td>
                     <% out.print(user.getNom());%>
                </td> 
                <td>
                     <% out.print(user.getPrenom());%>
                </td>
                <td>
                     <% out.print(user.getPseudo());%>
                </td>
                <td>
                     <% out.print(user.getEmail());%>
                </td>
      
            </tr>
                <%
                    }
                %>
        </table>
        
   
        <form action="Monservlets" method="post">
            <input type="submit" value="Deconnexion" name="Deconnexion"/>
        </form>
        
    </body>
    
    <style>
        table{
            border-collapse: collapse;
            width: 500px;
        }
        th, td{
            border : 1px solid black;
            padding: 10px;
            text-align: center;
        }
        
    </style>
</html>
