
package inscript;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Monservlet2 extends HttpServlet {

     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Monservlet2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Monservlet2 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        //recuperation des données dans le formulaire
        
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String pseudo = request.getParameter("pseudo");
        String psw = request.getParameter("psw");
        String psw2 = request.getParameter("psw2");
        String erreur ;
        
        if(psw.equals(psw2)){
            
       
      
            
         HttpSession session = request.getSession();
         
         List<user> arr = (List)session.getAttribute("liste");
         user list = new user(nom, prenom, pseudo, email, psw, psw2);
         if(arr == null){
             
             arr = new ArrayList<user>();
         }
         arr.add(list);
         
         request.setAttribute("nom", nom);
         request.setAttribute("prenom", prenom);
       session.setAttribute("liste", arr);
        
//        session.setAttribute("nom", nom);
//        session.setAttribute("prenom", prenom);
//        session.setAttribute("pseudo", pseudo);
//        session.setAttribute("email", email);
//        session.setAttribute("psw", psw);
        
        request.getRequestDispatcher("/accueil.jsp").forward(request, response);
         }
        else{
           erreur="mot de passe non identique";
           request.setAttribute("err", erreur);
           request.getRequestDispatcher("/inscrire.jsp").forward(request, response);
        }
        
    }
    
    
    

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
}
